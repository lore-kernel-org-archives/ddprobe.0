Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211772110E
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759273194; cv=none; b=XsdaeyAnYumKuasGADLWCASLDHiBBBFGwSoLMpfas6dYk5CFsNi18jb9JkQEwok4D1ccy8pIVPAvN+f7IYYRuZPWaPOZOeUHOYKCwQZmnWWLqhPV1ZmNSuGRQqld+YEqTFRQeVrs+bSZ5sR2PPiFkA6P3mPBzAISiKY9pShRjOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759273194; c=relaxed/simple;
	bh=7WGM9SKsQXYZYss3NTu2gHNUa1PPvqQSo9g6fPMcHTA=;
	h=To:Subject:From:Message-Id:Date; b=FL1Fya9Evw1JNNyIpgb/5ye14cuSCZmCNYVGOFu1yUsAz1Cb8GGrpYjXKuDzdj+oZMgY3Cmdkh8pPk25dj0DHW9S4OD8UkwVc3xWVXjJcYd0IC9KOS5OTnIItZ74a8IyiC2pCUaHo0Bceg+3U9osxt5VeAoETqHdVnfEHTYIjG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy6SL+iT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy6SL+iT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D3C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759273193;
	bh=7WGM9SKsQXYZYss3NTu2gHNUa1PPvqQSo9g6fPMcHTA=;
	h=To:Subject:From:Date:From;
	b=Hy6SL+iTV5dXV3ZLvo51m3ALCM8W7NBb7jXwCnq627c+t5v2N8xSUwKsoItk85YlZ
	 cckrS7JeAOWqrM0M7Jhh2tWqVIPq2fQv0nEN8n4VFVm7ScIbSIncV3i2UJv2lPNpao
	 iU/lmrKxvheY/TWjEWP9cy0Bybzo0YAUJ/JKevwmu3MlKFGkwX5Brkk5K0R99P0824
	 FiajlDAPrhXmXSyAmE4BKu8OO3y/vaRd4kFtv7tQ13tTYvSEhLKGlolNe4OcJ2AbQt
	 jxz4Npaod7hAyaZCrK1tFGspQiJ631FBXP7Pp3czTh3t2grfEuwG76bN6lrtvSyC26
	 2xrZ0oPNnwdsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B2CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927319358.22707.5979576136883173033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b49de0ca0943f7d0d19d280f0dddccf6f587a50cc3090eda67bdc384148994e
Date: Tue, 30 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759273193
