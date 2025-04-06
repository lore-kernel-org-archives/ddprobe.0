Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D768380
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743898194; cv=none; b=WX51Tzo2vrVsTJDbQ59AEauBkzmbbsKCXU7DNRb9GUxN4+5jMpth1mR5XQdhlhwPx5B/MhDSyDc3/R/ta0+J71Zl70qQkxldRSCAwjfdmtx8IyrD/k0N5qB37pVx2PokZ9cc2qfyyt0s11jTfR2P6bVNyA7ZXMfF1ZnlMI9//X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743898194; c=relaxed/simple;
	bh=sLwL4UB3nXDzFFodqLHby0yGUldKg2E3qm0AudWTiLw=;
	h=To:Subject:From:Message-Id:Date; b=rbEQhsVPO15tBJTDLWOzwutmvSit9Iq2NPfpKqptuGpuDaFVw6Q7Fbc6OZYnpxFavy5fXfFPNQ8+Z0oZotAWxPgmKLriS4a4CH1BUCU6+1Iw3UIm5EZIRNIyxY3gVpdlytL8sdb9ExCCPey2W6n1bEVGFkdhoShKWObmi5CzXFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALaw0BN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALaw0BN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9E4C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743898193;
	bh=sLwL4UB3nXDzFFodqLHby0yGUldKg2E3qm0AudWTiLw=;
	h=To:Subject:From:Date:From;
	b=ALaw0BN1fLX8agt9HiMMuVGA08csppQeLeLd2jaWYOMhT9hjfjbUkeeFfXyNpDVSL
	 wuNdD/lck2IRM5uHLyuG7V1ZAGGAsayqtwSV3uCmnffaqU/xLqmrKNeUC32A4cVwFz
	 +AlgBj3p+EY8vOcSA4slll7QOLl3VRx7p5ap0pqvDmUGSOcyV2wTjRAjAmVqJZs/9R
	 A6ontmw+zry8/VifS1kkcARaqo7XS3IPzCYyBpdc70EybdI3CyhiHYd831gSZqRjLS
	 PF7Lsq5smChzaDrT/y6yo9XIm2S/moevD/+VAEmaaovLTVFjAtUVi+89CVJgWhXDTd
	 1ona2Vtk4a+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EADC36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389819359.30249.111496074805207549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5c3ab69845eea0f4271a07e0cd07dd434fcf71fba6b0e818cf94d1f908c2b5
Date: Sun, 06 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743898193
