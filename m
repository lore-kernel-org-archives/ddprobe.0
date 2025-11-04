Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFB9258CDA
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762276194; cv=none; b=TVmGw8PXUPqDGFuVcMQa/PKVpkqSujISfyyvX35PyG+oRwpXDFhNP0t2Wr5BZjNtd4rCeI1H8UQx/jjJeYWULBrVrL4Ah24MOmdJLGC2z41PVe19ZrQcL822DIg9i/FniZScYwWllXVkgkmopPKbhBCN3UrrWLz8jBjIUUsSfKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762276194; c=relaxed/simple;
	bh=VO0DvndmWLiJZ+b4qEkfSdReNFsnxtizFZesDY+05fY=;
	h=To:Subject:From:Message-Id:Date; b=nwKST5AQibkBdLAwWLuWNQoHzh9D8sNAYROdkReLo0URtz/bv8rnb/cTMwFiht70JfCv7pztBMixaZpv5e08upLLc180UCQXY1DbyeQIdzF9jvNNH560Uj5flxeOfBnAZui6Pm8Kh5RLvIJ0t2G7IYQcOuXAiiMpn0IbwQo5hUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zcjy4RpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zcjy4RpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C44C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762276193;
	bh=VO0DvndmWLiJZ+b4qEkfSdReNFsnxtizFZesDY+05fY=;
	h=To:Subject:From:Date:From;
	b=Zcjy4RpN8G3cfa4zZEEoUdf617rSQUTEhGsN744ts4smzVkK4ye2ixfT+cSf2I62B
	 Kwti/gpU1Tx/FvAMoXPy+aFraWeN6AavX0BvXTSqkvGi05NDh0szNgL4qVYV/unlWp
	 xtiOJcZc+2p3UP6k/AnxfKlVgAApFVvBdSIKy4B5RefPAFWVXJFypT5ZmkJaH+CWsu
	 f2a4Et5kfUBLnOTp4xJpRwY6DF/ISocY3W8Fab50fFwWxX7yw/eiYL8C2ribXW6/SA
	 OXAeJ3HQM27YsrVpuBXEJYosSiAzfJtwYY/XHu4hAAIT4q3LM69UENSLwYgvzFpu/X
	 fRGEDxNx8Erbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949ECCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227619359.9617.3137961463966473128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607cc87d26878b4187c315cc57026abc0119dbb13ae400be8cec3d42bcc83309
Date: Tue, 04 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762276193
