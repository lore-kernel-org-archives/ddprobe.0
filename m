Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352552D6625
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750873195; cv=none; b=WTxEW0EDiG5YmsrUgYtD2XEqJUlfoZmfUychoHXTUuulTlH64FohrsCTMBwTkn8qpr6Ubunn4QMzXAC7qqBgAQSzDK5G5R2fkQ0RCvw1QLNK97XY3DalWhVxoBt3MDhtHyjTPM/WVyki3TRzlEknk6Yn7vJ6s8uPPPhop8ZsgQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750873195; c=relaxed/simple;
	bh=6FB93cyof2d/yrh1KnywDE20pbCvq+NsHYeQ8aqAwa4=;
	h=To:Subject:From:Message-Id:Date; b=GUc/w6Q/A0HfBr+fiGdw3HmUvc4Gcn2O8/d1uiqjoz+oIsTnjgep+I/7wVtayhgRAbI9dpsRUaxv6/Vdmg6m07GWmR65bd1+/LLIxb13duDtOgVrbbRCnjJudiuXwsjHpESHdih9OUPSFwWkewA2Oo3E8L9UMHa3DkwZhVvSyKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGAnb7tS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGAnb7tS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6E3C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750873193;
	bh=6FB93cyof2d/yrh1KnywDE20pbCvq+NsHYeQ8aqAwa4=;
	h=To:Subject:From:Date:From;
	b=hGAnb7tSNJXhabQiL/Qxrl+xEaQkViBHwE42fWxFajt8E/OfF8yiW+ATNtw+3JaJg
	 WHGfTmUEmcqiaIYezKO7zjCdFiTrrN4SbKY7rMWpzQ2JH/RBWNDAEMPP5GYIQY5zqZ
	 Cn6nwyfhEGfkBQfBnwaY0b2PRYHEcwZDSpT+gWmZ1HoaYWbBme4m2IUOB10vvegy3s
	 ewdFXB8BeKWpi0LcpzKzm3NKBDfsnPjofYksaVMGob+UuPfUYkRkMKuBFPNn9V3JVV
	 8Y90PTaVKlvr1Q16XEkR4IkQReLUACY/3b78+d05rMPGrp++U15Iz8CfPOMo5fmPDp
	 au4HZjn6TY3+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F453C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087319357.12590.2301814162309703177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46e192529b1087a0bc05712905ce86262aefb66c9f09d880b55ad6f377944dd
Date: Wed, 25 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750873193
