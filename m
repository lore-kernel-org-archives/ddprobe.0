Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86F6B22A4EE
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779532354; cv=none; b=oRdNBhg21xxTK3EuhMrXCQeNRkqRoPGmDneAzvBpdI2DcrsAAh25dA0p0XSf3P+baUR/4oIWMU9/wgUBswKx2J7E11qkjhFJzQ+yz9SX5+d7i9TLQGLue2obG+o+wqYx/eZ/OLek0TQdGB02FSwHXkYiG9fBCJ5d5DZSSFDbkAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779532354; c=relaxed/simple;
	bh=SJk02QZQyKr0+HTsh6rj/GWKgy3+klDpvOtwC23n9zA=;
	h=To:Subject:From:Message-Id:Date; b=O7TLq9axcX4Hkq7aESZTLSA4f2zB3cz0bzyq9ObGWO2/1YMCZFLh2koU7VyVqtkk+NwyMfRkIqDQdrOxSBPpQkX7SUNITFj4cPeTwhp2HPCNlx16PVLwrth8OYqR0NpcEKUqVwCLEiILzaGuPTA6oPPp5ExsbCe9FIva9s0SQck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nwvvvnz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nwvvvnz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AC5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779532353;
	bh=SJk02QZQyKr0+HTsh6rj/GWKgy3+klDpvOtwC23n9zA=;
	h=To:Subject:From:Date:From;
	b=Nwvvvnz+tCeoZYecUY74cRCBf4FLCNii7IPFmGBf1yr3mLM5EkJntQ+YxUpEFdUIn
	 rsevpeojZmqxRn+QFFxyYQWr9jYMSGCKjViqBbgznJ2lST8xl3Xhui4fam67SMPQHp
	 uUt4OG2JfG6JtGzsYfBRPU9s6aWHzLyegnRNoDEnbR+AoGwLiEjoSZZZLsUI+SeylI
	 NZno5wSK6nwachUzALSo66Rkehm0xfTVpIVxEwi7+Fi+kJ8zhbJkSFbARrHDSnNwqK
	 CbJzusm6wzWs79heX2dsNqGFsHrFzlP2QKYOTBzr1r1cWf+lSTo7ctu5QNZbWeqhmL
	 UqR/UnmD2T4hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8502CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953235368.4397.9022008248301555703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2557f1d98c65b2dbda069440c3429636258ac1631d4be2a017126993c78f5583
Date: Sat, 23 May 2026 10:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779532353
