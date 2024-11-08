Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7D2199B9
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731025554; cv=none; b=prCwp5+0n0XudHVr2I/unF9O2/IJqAgZ6kCWHuyEp3Gp3WeP4FmAv4KgM1ks5KDu1i7myybUXeNBeYFTu8tOG0HNljP7ucupD8Ih/KGsjPK2gcRuZEGxdvLIPtlerlbXncj4eUksiiSptBHLyWZAR3YQLP2bTGeN06CGeTyR+ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731025554; c=relaxed/simple;
	bh=i5Zcwn6ZjLUrfHLnlhEGsG8J54LkcxWMQp28nI7JdUc=;
	h=To:Subject:From:Message-Id:Date; b=q0owlS2m9rqE6grBlXsgoS0N4P5t0bcd43aTb5dsisyh7JTSjo9RYdOQEgwZZWaNd2yPaIjkCPv5dCR9Hx9kGWlc8lQeWoX/ZZCtYCuIKRScX6q7J3rX/i7KJCNz2J3CevMOx9sR7tuQY1FV4HGw+IM9DOhTlMs2tm2pNEz+5YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMVdlLg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMVdlLg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5141C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731025553;
	bh=i5Zcwn6ZjLUrfHLnlhEGsG8J54LkcxWMQp28nI7JdUc=;
	h=To:Subject:From:Date:From;
	b=BMVdlLg1aRnqhOfePWabZDBbDZHHDxJxmHNWe4zk/2CTV7e1aACgRFpO0u8RO7yJH
	 EVx8e760W6At/99Cyc8kMetQ1azMvU2qwfJ0+RdqqIfiECcCtzLvMAchEMlFo8U/ue
	 /WLz8RsJqkJwK521tZ9NlrEN9+sun8xirwzQG3AUkfwS0uxzGC5RjTjZBHOSBKGXEq
	 icFkQPVG+NNiaydGFiVArx8Ue1okx+LXNvFat0DhTcO6E97b+avRFJEfHUTPfqgBKA
	 sbBi3wP97/+GTp+r34XtnMYY/0nh0w5RDl7tTXKrydspBXCDH9eSrGNacVUVvLVJcj
	 qqG0FoyLghQ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97895D5D699
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173102555358.23641.15612870730708884514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d671691af84af7c3d6456df57a8228786d277f90de775dd9074c95dc863ce1f
Date: Fri, 08 Nov 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731025553
