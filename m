Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A91B29E101
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766585034; cv=none; b=fn6LtSdJUiCT/oRmzhUc6YS/vdO+aecX43d2Bgebad/qmXdUeyHFXjej7o0mRkSZTCktKASstRu5ESb3/Y3EZlp86IPlEJTslq+O4oUD+XE40vv8ONt4chCGgOUwt+w36KJcCYmvTm3v75x1KzPbel1XqRpokDcbbI+CymvX5b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766585034; c=relaxed/simple;
	bh=CpL7xrgFBhTUkmUlw2g6CwWfHXpL1ykJy123iO6kPhY=;
	h=To:Subject:From:Message-Id:Date; b=Ky+YWUUpN3Bv/nusmE2RaPjYim23nSO5N8OC+lfhZCxtuoZxNoupGVMOB81Cauh7jL8/OFwC1wlfM1n7kNoIUwRzaqAzFwakCiEAE/FkWXWBY/UCXPgkta3nIRpO1qjDzG+EGQhcqvoUJhIiKZSy+nbmrK7znkUoAmWw3ZPJXlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+kDpXUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+kDpXUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B11C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766585033;
	bh=CpL7xrgFBhTUkmUlw2g6CwWfHXpL1ykJy123iO6kPhY=;
	h=To:Subject:From:Date:From;
	b=D+kDpXUSbVqoWkiJNfd7CTZc0/J7Uy8oapxxPHglzn4TQrc2Z1q5nFW82BTcjsdXh
	 wjeP70aKHdJPjMr/fRebkc077mawGS1ab2VRTdyk7CZtm4XF8uOeOE5RyWi4pqxz4a
	 4m5MXEkgnZs2jC2+i3j3uDkpLRd25DD5b2/F5nPgXwqtdxc/iJP+8dZEflRDq+CHrj
	 cHLPuMcbmi/9vyZ3hSWvIFUZT+ekQOwKwSpBtyPnhGdUkZ6Es8yjxmZNzSt4QnI2mE
	 ffe+kxST2ndkiw/VGDe4dUO7nHGCSxf3QK3hBrRUk8JNJxS0BuM2pcT649PH1INS2d
	 Neb6H3OPmFblQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BBAE7545C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658503358.22471.5487750767052106925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0ab307d3846ca57703424c1b4a77430b04e608115ca5831ed815aa4cb282eb
Date: Wed, 24 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766585033
