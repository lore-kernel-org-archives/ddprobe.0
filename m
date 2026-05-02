Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266121DF980
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777685854; cv=none; b=SYnsZarLx2nmUx/TGAV1vCq6tniNbsYx686BAgYL+YiSJloeyHy8PNmt7tuhyw76lBUH6wdJX66dt4okfJUQJGpO6Lku3Fa4VpCx4eYRU/W7ehI51d7GUzLhvYJrfZOOD9gy4ejKETk4drEtleSAEHC5YG2C2btMgA8rK/cnMIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777685854; c=relaxed/simple;
	bh=sQ8Lw8I41eSi4gcNlvY23hfuIs5AaqHcSCdRISL9F4w=;
	h=To:Subject:From:Message-Id:Date; b=uBJtB6TlmZfyu0XznnAipYizJuaYSXxUo56K/H11Wfgcmb205X9gJv2b6Wi2vM1IZFZ129TsTRQ212feMMffBqVZLoKEtyu1J7Qg8nDjoz/a+C7BssKuMVDhexaJI970nYV8bffCaRlIeA4xNGiSwNzBjschGJ1nQt7PhdHmGYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+A//zG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+A//zG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C125EC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777685853;
	bh=sQ8Lw8I41eSi4gcNlvY23hfuIs5AaqHcSCdRISL9F4w=;
	h=To:Subject:From:Date:From;
	b=c+A//zG6Uo8u254f6FZpeQxY1O0ihr2pVpw1L7Dr0hKv9yWJ5iZ9jYZ9gNeIPhA23
	 RkvZE3G8fS6WQCZWf83hP16Uq4JmoCCs/ksecLbr9Bdmg+SZqB4eINPSL6zmcZrl4a
	 bFrdf9XTPfp8/ZILmBDGifCBviOFsPqcL2CUjKOzVO3DBZJ7OkBZiirCpJXYK16FSe
	 eiN/1TNUwW/4DJ8/k/K/w9cOA3d+VNoDuRnmKJaclKgKpbsHKEBEv4yhlZgm3+l+Il
	 o+12I8eR+r18W2GuNUcCHrGNWZsQeLAKlGaEO2Qp1SCZ1IJ6EXOiiupFv1qA4KEjKZ
	 d2YS+0xJmQztQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4ECCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768585368.21425.8631843518161119659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfd956a5f96abce682ba49143b9304d8d2cbbb632aa629197003698621cac3a
Date: Sat, 02 May 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777685853
