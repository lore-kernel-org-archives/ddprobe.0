Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FD254763
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758377394; cv=none; b=q7hVuebLazcGnSnoeGeTrbdfPQmpeoJ7I9tuTgSnke5kpguG3sGCx6F/Jci+KMu0EbSgbYXLnvyH82ZG1F5kGIaT3FVjz8jhA9gVqeRh7Gejb/L7hJ+xwpYcz0vBxKneoSjtOHJqeLQhuQed/ks+tUsLiGObdjZRo1L/g8870Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758377394; c=relaxed/simple;
	bh=PALd4QSwq5fVUkxBVmBhkx09/+PRNOF2uKKyVGKn0Gw=;
	h=To:Subject:From:Message-Id:Date; b=Luzpr8oBreVbsmODVRegBwLnKfEMkXo1pSHJEAZ0byctNVuA59qPyhEUSM2dvme79xZhnsbn4r3YweGP2OGdRNCMBzBaFHYMMwK8wDANaNa0PJ0uvHcawEjC/8mlSlpQggLfD4l60FNmhUEaijq82C4zjHRKDAC3Ljz6HdDy35I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0ZZlPjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0ZZlPjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1907C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758377393;
	bh=PALd4QSwq5fVUkxBVmBhkx09/+PRNOF2uKKyVGKn0Gw=;
	h=To:Subject:From:Date:From;
	b=M0ZZlPjgFhZiuA91iszDmKdsGy6VIEXPrqRJ8VoQQRfUj53D7ISBR4RTZIc1OaKWD
	 NOqfjSohkSWylXX1A4yDmsIeq0j/HBrLcTSS5e6r50XuTj6FlOqY3eYSqFB0HSPWuE
	 lX+ftuD/IljqNUsoev8/aP7xA/Xha7ROBeiurH1VxXuVoRKS4WZtEIRU0gWiuH9i3Y
	 a+6UDEWduH1kJ3J5Y/1a3SxiWPdPzsfZ++sqJ1FqjQXszMVOjQqA/Np++MwuJbp2O4
	 4Ki0vriDsNZOG/XqkaKMu2u0HiHeRJi6PvknHqeDjpLjEeBnaeYab7ehRXqSVpuWWx
	 AsJ2cMsNt64BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F742CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837739357.825.5511221824578208349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985f04d40f516655f546eb0850173271c3b02a04e07cf75b79de163f8004f478
Date: Sat, 20 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758377393
