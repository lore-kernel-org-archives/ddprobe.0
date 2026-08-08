Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6358635838A
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786205434; cv=none; b=Z1zFo1l93V3uhm5MW/QUR1e5XaldRAalGLWjwwfh9wVVK/OP1tqS0GsW+aFW0KOlv4K+zVI5E+CSpbdbtL5x/YQkTwtGJ0gmKMQ4VzamcaHU/htGbmb/ID4if9c/YUhfiubRZNKXXy96mK9n53C5MgnB3mjSdMWt174gEwjrpDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786205434; c=relaxed/simple;
	bh=wl7f1LYeAm3P4w4LXKgF1vTPboY7trMDx5H3JQCl8PI=;
	h=To:Subject:From:Message-Id:Date; b=mQnDJY/VvZTGBSsst4CBaO58tzOeQaBuK7AM17fpT+Fuh8e96HIM2uJo/4ldRlSVy/LLABOQg78hQDGVSrxEGuD0rOiZcLvhr6dXi5Kl6o5e/36ysm1sAiarOQb3rWnwzbNuykVHx/Mz2XF3RkMlDDZbekifdJoH2MKizaYnzFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSi19orG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSi19orG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D688DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786205433;
	bh=wl7f1LYeAm3P4w4LXKgF1vTPboY7trMDx5H3JQCl8PI=;
	h=To:Subject:From:Date:From;
	b=dSi19orGl1G/a3Osu1aLuwoy/Nxt1xP0AXQoLT9Dl7PKfs4ziMEOLG5bcvADuNF/5
	 TyLX3B4/AFvsQpblLY2/RviCD+JxvXMBh7fedb6FR1b7c/8JVS4ktLgs2N4y/gWeLA
	 LlqSan/EU6s4g3iyxslMNdoYQmcQ47LzSqLRboNvVX2FHcds9vhiXk9dfGRn9VO6A4
	 Hq9JtgClxJ02mekx0tFST0EOlJs9A+juCF3/8jn5HY+MaxSjzt/brQdQ+ajd9LKxaK
	 SZX5X/lztA0ddkf8lstaQyKmCW7VWhn89cjstkfhuQoG03zZfGkgNfkUGg12+gdhha
	 QiqJWNdu6cIJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7CBC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620543369.3785.17799566265283116839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c90486be88ab4f1cadefc9cfdf9f9c2a98f9969fc4a4eacecff13eff9f3337c
Date: Sat, 08 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786205433
