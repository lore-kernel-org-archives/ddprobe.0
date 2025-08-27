Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4FC346A1A
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756288194; cv=none; b=F7s61qKoZRcCEIkInkyidZAOcPtGp7voE8mUT/uawvwPOAfGBM0NbXpSyOiufD+MTjLtWRLskW6aMdyr9n/15qXmZKMtQurJIIJZQjsGma32njwxZIsIHomnT9HdRWBPURziW+yEODKmPU/ALlh3K0l67DIKIEpMCoN69eqnygA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756288194; c=relaxed/simple;
	bh=Yg93Ed/IMU7Qh++BdumZ2lAP4LCT+S7NKHSQ99sxm5o=;
	h=To:Subject:From:Message-Id:Date; b=NKsLecVvU2OjJzFOrWlGdaFDpFInCeBQSt6vYYghyccXm3bMAl6APOLyTeaU38TJBSByaDHpgMBNf+AuEdi8L9WIToutC0pqWNqXkQdaDerjdeoMrAexZ13Ds13wBaWrRFT1L6Ll7eW/RiXLTQVNu6pvc0zYqWdpmTiC2fntOxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAG7TKPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAG7TKPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F296C113CF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756288193;
	bh=Yg93Ed/IMU7Qh++BdumZ2lAP4LCT+S7NKHSQ99sxm5o=;
	h=To:Subject:From:Date:From;
	b=VAG7TKPiFasHVEsrdh+tzhb/7eCXR36flj929EsRQuWWVcOYSBzBSeDAAZvwYDFKR
	 Ke00ickpGpW0zSC5K5SL7U2QK0PL9FujzC1E6yotdy6FkvT+HYtidoGt5WYRzzD84x
	 pIxUdaJMBMoAmjot0PAt8k1Ebh/buHZabiOpHNkK82a1O0YWFN2ZMkcBPjsdQ65R+r
	 +eyMkDBPur7yymcKDB/EkvGPadMjEyZtbBnon7MfrkqtUzqKjscNuzmZ/N14CpTGTA
	 xLhHseW7s9dLOT/XQAh7Dyk11aNLxO89up1t9viYkxbpIiUrCwww60TX1+0W3fTScP
	 DmGNx7D1yoIxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4ECA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628819358.9777.17319884121473206989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29be043f633890d77b1c7de35436185f38782f3ab52be454bd3e3b309dc8f349
Date: Wed, 27 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756288193
