Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA6530674B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783096714; cv=none; b=fIXt3/PIhaKOsDxNBg4Mg//ZAEhoXFzS6asu5n5MXYlV2opQelhr3+OX/NgtUT/WoitXmA5QsOGnJNa8s8jKeyZl7EC8C71yicugnn30itbBKF6n9dlpvleylJx3UAaH7X6zJ5pSfbXbUjTiMw9Lln+Qi2Eft+9svVvwpMNSUAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783096714; c=relaxed/simple;
	bh=RagSvmUVxM++efVKZrlUgOimCQmT19kUICu8yWR1dzA=;
	h=To:Subject:From:Message-Id:Date; b=F6S1KpJt58xGPZOrPq8QvSqCIdZ80yCDBB4TK1SmzWDa2Hts6OOCcoPAusTSr9qAhbXixWaoBM6tq2kWbNsh+YB9Q7mikPszgTu66RLYvBig6f5pkv4NicGoiYlv0aFjuv80ErLWbxJ9Wh6uROFU2Ve4OBrPYM+NIhDAhu3dn0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSSSh0yN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSSSh0yN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7B8C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783096713;
	bh=RagSvmUVxM++efVKZrlUgOimCQmT19kUICu8yWR1dzA=;
	h=To:Subject:From:Date:From;
	b=TSSSh0yN8yPyZlD4U0jUJlTgbYBJzRfx6nKEZMqnEW1bVKh2luKNI22ViCklDShPT
	 LlExvuLHDMrDp2Yx/dO4XGr5XrtCcoM9Ztwijj1uaKuoDg9Zzm7e1/rCS/COZO4TJe
	 +OsqedFuDIV//c4huySJDvbeCpmgkD2SsmPNG0T6UOSlGRYJXShxvvt5YrIBVxD6Jn
	 FFBO1qxeoL/GJC8daDcOWTk8BACIG7I79Ad843OAl/RyZ5hVUQVgTNdojVR5LywbMr
	 yAeSujZT8yQ+vINyW1qeQk+aTQRcnhOSj3UWuMkEYwDl3GBOc65guYI3Fzv/pMwmyf
	 N9V/lANBDMnRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA96CC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309671368.2475.7632328279438160083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e114b4c746b492ea567dacd84fb082a3ac4a7f27e68c917d1dcd5bdb0a88f3b
Date: Fri, 03 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783096713
