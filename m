Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEBF3126DA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771106094; cv=none; b=Wty69mHIw/Fz/TpBiQ4AkmadBGWH+WtNeFHct1DuG5S4SKXKMVxA7BHJ4+OEqqIS0ETB8kRGdP0PJSLYYn4/R6LwgkEmcFvA8zHIfQTfvCb1Mz752PtOEaT3iBqTZ7osGGY3fZM9zLDngLnCQnSxaXANFSvrII0HqnZZSQhe2nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771106094; c=relaxed/simple;
	bh=sfdaAbm+tfhf769BpPGYASMh7nz4XK6r15j95GGVpCk=;
	h=To:Subject:From:Message-Id:Date; b=jZkD815HCW3GlYRtnvVdGRsDEconSEN3RoSdxe1kVFF+fkQV2TLFf24OzaIiXk7j/enULGajDTBLMWAMxJT+V/ql+10kJP6CsYqB3W2G62lBlkP/01Ftr4ZEXZ+NmmDaGFNkASEnIoEuFem8kll41MyEwz81vZAmE9qnOdFIc6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LI8pDOpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LI8pDOpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E26C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771106093;
	bh=sfdaAbm+tfhf769BpPGYASMh7nz4XK6r15j95GGVpCk=;
	h=To:Subject:From:Date:From;
	b=LI8pDOpUAuftj8ipehr0ctDrJnmiFQuhFQ8h8vwKJlUi98qxINLbngA2WpginZTuF
	 DRL0poD9p+0AHyNv/SIM7wK7pLRsGE9uLUWVpGBuLvF/L3Ng7KeUpn0Qbpy2CGTSDh
	 VBA/WrIfWfxMjtc+GQsZBmT05H99JDj7+ZBOWdZ/K6Ye2DB0kCZIRwiKEVjHXKn6Ut
	 wHxpMPRpDiRjCGsYU+a7ywPUcGZG43xPDrov5rsBOYMdhdTf0bWaswVyKaNe/1BFcV
	 +9sdTVwOZyi1F2MmdLGhJxKJftBfCGmm/xOAJpidxi2EW87/QRCI4mQsBRCQPmM+2r
	 tcV2zdRhS7wlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E85EF5857
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110609361.26583.1515940155251885211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734572bfeab3e2d919c6c89f02c1bdf9b939fdf3506bd923e363a779245c6a25
Date: Sat, 14 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771106093
