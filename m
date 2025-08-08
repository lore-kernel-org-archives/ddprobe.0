Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A34725BEE7
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754662194; cv=none; b=I6zrA9Hn4VEqRGGl1TBvnPz7MEgbUcHwMjE3IIW7oJrhzgcJAPSv+Mut2KQ43m7T1fjy0qZlh1C6OuqstzJdn7y5ugrWkkgloNQP4qRX2rUqF71RA+RWiHq4896jhRp83tjzFrqz+a6Ydw6fQZghOyrRbU5xCbvAYOmXeAsfPzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754662194; c=relaxed/simple;
	bh=DenXMoffcXqiLgtJdXYIos2tbK7r0k9GuYlfgHHT6oE=;
	h=To:Subject:From:Message-Id:Date; b=h4wj5eh87fLXmndS8fearRHXl2pKFI9b64iHZGdJ+go0Quw5pCwdXLHzClVM7NrNitUi/bwhojO2ggnjImJHt7Tpp5o+udW6/cnzycXN8GTvnPK2uC6lOuZvvGuw/csFDT9WL1Og1Nd407cQIPUjCnLKredEENFMqgx+nqjcF1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHaElk3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHaElk3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C3EC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754662193;
	bh=DenXMoffcXqiLgtJdXYIos2tbK7r0k9GuYlfgHHT6oE=;
	h=To:Subject:From:Date:From;
	b=fHaElk3EU8Nt8zQc/Dko/bb3a2xDlMJDUNVTprKeJSXePNy7Nw/wFj/vjp8Np40ik
	 7IunPr60k6yuTMMxlfx9h1Fgasyh0bVlCIYMvr8pc78VNOmgkFJtQLCMTyord5zzgi
	 xG5fZ60RU98E797Zqjt5Mk8PKy38549JFXl93FUTo3QuFQnCoUua7op91YJftqWWBA
	 CkkzvyxWLvQIOFHDlFbZ55da4VNX56w4X4e9VFB2f+SPClCtf7iZmTkF8W3rcF3ODI
	 ePF4ZuPkA47W4tdsL17i4wPuQ8oBak7saxAutLDijMYDyAHnfwThDi4rNmY7C9pWRu
	 K5gqDU0QCLF4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97086C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466219358.26715.452876584917847492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d168385f556c9b1039c693f1d9d1cbe53b88b0c85e2edf07865998695eea6d
Date: Fri, 08 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754662193
