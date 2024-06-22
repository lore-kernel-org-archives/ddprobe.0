Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0157AB660
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719069743; cv=none; b=sb/s62K75WByyZVBifVGiHEEavRG/b9Kob5MQG3poMTCB5LNN3jo9Sxu3LpYn0/INmFITH5DkH8oeBeIWHRrdfWYbglI6fTv0zdWWatzSnr7S8WjMPIQtbsVR0UUEPp4bd/wePdNM/X0H6/FLv0rcRmxNgMEeoKiFNJuN7krx2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719069743; c=relaxed/simple;
	bh=HUXIrOdzrg88kX2x6RdNWzxVWfYfgYZdHwpRmzY9rl8=;
	h=To:Subject:From:Message-Id:Date; b=A4KcYJESRL1JFLkXUT3QLw+1Wy8wO0tM8W5wvNYhcvdE8l37f2oOKhhp8/UUhaflTZfd3UtSIwyyC9jI+nSj1zGfSbm8vMh9/RT4mFm7iPFL7ge8LI+fasVwHoAfMkPLJRAAuHw6stqABBfUq6/+O+iDH8spr4+ZfmFziO3v9Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ldnme3Ac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ldnme3Ac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87D2C32789
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719069742;
	bh=HUXIrOdzrg88kX2x6RdNWzxVWfYfgYZdHwpRmzY9rl8=;
	h=To:Subject:From:Date:From;
	b=Ldnme3AcV7+0XbXgCVvzWOtg/2xbbdACVnjA+InzgCV+Garnyao4eqwRtPfVnPUPQ
	 oBntiQWWZ3a8cCO0yzJqFDxm3KlEhebtCnaAMAikr1JcBtGjlBV6fAxVsgxUqMDRPB
	 zixNdug3QldrMdo3EsSbvO3qc7fngJwVocTWqDZaS8maHsVAOaAbAxx2kKwLYQySwq
	 4Ndquusy2uXdCqd1hze8bP+QUZ1vLGW9L6xlbcUbXrGWiiYboBVUREp+ovZ2PSI3qp
	 aGqEdUJQPwgOjA6hyn9DtWAbgs5Tl0Z5boc9wzpj14lsigt+o0LJQCNwApt7datjkW
	 BfFdiJ27gw4jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67F0C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906974280.23603.17369350279889475431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03edbd963c83b47c0f0e1f0299441c315081dd45855c69adf83c2c6a17c7ab6
Date: Sat, 22 Jun 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719069742
