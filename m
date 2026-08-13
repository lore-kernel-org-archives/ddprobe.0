Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4414320ADF8
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786588834; cv=none; b=kvc6eovbakUjyKi+A2u8XcYHE5ID6N1sR+OcoDoBeeKchZinsWUtYCa1YEMpInRXnHOyCTvKYFZzOtDXSd8dId7b8usc8jqmVqRRx45QFx4nmXYDo04KMBJF4/LeCDipZsMq8/e1jXkz37PO9tYpDDE2DXULD+TK7YSwG0u170w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786588834; c=relaxed/simple;
	bh=nNsfLoImI8M1+Y/42CC9p59/AlYEeDabSR9zOLzo13c=;
	h=To:Subject:From:Message-Id:Date; b=keBxhJsfIlZCRSGgQ1Lw0BddpTBbJmriOxq1Qow34Cd1D5BOmIry/uBnEK9BLn7ZPl3rsatZdjgaE6bt4ckDu99pHSXYni2Lq0cAqEF8bMGPp6YmqAkKSQ/8E7bHFNLjAjI8BNQzILDvMseXaUPGo6YUkpfhWMtOFDKzp5d4iLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gqiuv91H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gqiuv91H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F41C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786588833;
	bh=nNsfLoImI8M1+Y/42CC9p59/AlYEeDabSR9zOLzo13c=;
	h=To:Subject:From:Date:From;
	b=Gqiuv91HD7Q1ILZYDnv3VZ5KkpnEwDJ4OjjSG/3FwSx/zZANhjr6DercfRymbglzg
	 N/Y1gcHJvsnegDjRZJufTX2rQDgbtAZJUj6x8iGtRq8/+8QNW8Og/sWFqdmz0mi2HI
	 KWgGWz7LWHRM3t21csKOdWm4VOSROOLSckxUTvyyG/LzoCzRcW8vrA8GYonrB4ZWtq
	 72bsbXsX7YHt9i0aEQH2Zmu7tXh1IHSjSTiyN0067EGi0XDWOq+BAkIsBNxn5xOjrd
	 1T/67H96QrO1HOtdn19FtgndcNtKlblpYKo2hIUmcgtxp1Bajzr4De1L47Rt05tjkU
	 A/Ovavgl3KLQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DC1C5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658883368.10866.5083971300208060480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7ae3e3a9f07b697678ab883db8bf24e51c849a6ed24eeda56154571559949c
Date: Thu, 13 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786588833
