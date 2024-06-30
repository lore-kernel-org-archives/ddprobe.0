Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E802C6BD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719741863; cv=none; b=Y8Bbxx3PRCghfy5wXHWn2mwcK0W3y/n7Hv5xVfxu2endFbZRObMqdAUNmNSwEMElw8BHD7Up122x2n57xS5XVu1UU1p6gt5yVa/TQq2wVDPAB78iqzmBS0/KRESbVL8o8YtrfSQEqSmWTc3wpr+AMfyXml6lRQrBFLD8lK2H10k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719741863; c=relaxed/simple;
	bh=n1OW2EGMc/IcEUUuTKz1P2GyevWK7ytmHfU2G6Yk6ZE=;
	h=To:Subject:From:Message-Id:Date; b=I4hZU0pkgax0OfbBSirMgm0Gk2bfR0sEE/+9+w6v6NHxFH0GaJtlLK2ZvrMqdpL7qeE7YwKzt1Wuf47tBVrMDtiQyN83CtOJuDkJ5EFrkmYRGisvxX8GHyKPzLr+85CVGa1I7VOOZeR5dnXmAyzx+aMOQyTahk1sAdUGAC6wLN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou9Ghcwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou9Ghcwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB9DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719741862;
	bh=n1OW2EGMc/IcEUUuTKz1P2GyevWK7ytmHfU2G6Yk6ZE=;
	h=To:Subject:From:Date:From;
	b=Ou9GhcwpKX9ugNXH+jcnH2UAEPMVb6cwojnCTr47WgibVF4pBumOdm+0FV+FpNkiw
	 gRzuosqu/zisOb3OJAeKONKTSW9B4B4ubDpHHmgWdD43wjsRtfWJgd7hGo73qCkDd8
	 +bK0MgCaC7v9G8m0YEDke9icRVwd2OFEZHw5DdukWtSYNECs/E79eXVAWsJ++0CZhH
	 FuMrtwJeuaYvGU3DLstVYu1fcq36H+UA9l61ShlRdiiobdRpBg+9tHMDvzCwFRa218
	 vOKFpehS1l5kkl6w0crc2oWQCO/rh+zYFqK1MyjnyybF6H1zLXjWHbc1z5+pzGE1mi
	 o6EIBJQYdOo0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F67C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974186281.8783.4156359727534175908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647b788e53d409cb6d9e2a04e79ce05883c920f0024b9835bba81726367b97ba
Date: Sun, 30 Jun 2024 10:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719741862
