Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246CA20B210
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728636954; cv=none; b=Os4I5PaErNQw7S/JF17y9EEvsgGtVAn+7M+sP629kUWWukp0HN0QtUE9mgeK/2QDL5cymqvoegTOXysLyc7W2yhdmkDvfOqPINv+QaZ/EjFghK0k8FQp5Q0t6oZJkJdiOh5MuKbAaue2cPgOG97UBDbqh/cSyKZln5yqDmn5btg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728636954; c=relaxed/simple;
	bh=a6gDXOYNI0swR46M3Gk0aes1T0+LmDsayWrxazHzocs=;
	h=To:Subject:From:Message-Id:Date; b=f0b/4OB7LjcqFJrO7CX0yC+FX2d0Dm1gaFKc9ykX3+DxfUWZ6Ykudnyae3a4+VtpbOpQrFRsZzAqvDUGJk/I5atq9yO85/z9bVVe25YC2Ol/Sq9XwnLgtlNWt7fEKE+m3lVxEfSXAzK/z7cuUsAnRNnWzhkpyyrRMrWyArObyLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOrFe7YP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOrFe7YP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F83C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728636953;
	bh=a6gDXOYNI0swR46M3Gk0aes1T0+LmDsayWrxazHzocs=;
	h=To:Subject:From:Date:From;
	b=BOrFe7YPq4/6O0Ol/NQ+6KPaBVFZQO5qh8jNQY2GmeMGxAe32maG15nQiLxzZNut2
	 JeMIAzUEPHCrdEIKTbyOXsnW/cWvDEAdivcYexH313nagN/exHo4/37izw1KsVvn8q
	 wR8q+GX92bXRls5921JV2H0GotHB47W48fes/fBGqmhyCkQZUNs/MRHEYdtEL2Cf2e
	 qhe+hHMyqA9SvimpiWHhJOwIEMoHyoF2thrnmtTI2FypETO+YxgUAVxKYHzcvik4sP
	 204LgM7f2wJFQAqIvWS8f0fYhP1DtCamGwftJHwiLmVefaaPZBIC1t7BJTIuEa/BiP
	 3e9t+vRn5ulgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93760CFD2F3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863695359.4248.10106878512029829582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9d2df5371e2f0ac237f0e4593ee346b12438a9e50f9c8b4c05946a2d7e4b31
Date: Fri, 11 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728636953
