Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEB079F2
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751674794; cv=none; b=VgmruNODUk1IdlzrjMd7gX1HSW6DO8sVIcP2jSmqnFlOoZuSRYJ03ZrsxGPoFMMC/J0PqK4Je/hWu4ldLEoGIOltF3aVJJSXF/o+CHIIoZrMdIDNb0BVDBjKGGnaUlp0WNspr9MKYjtmfTpeNrJEtAlJUrUSeaPSGSP4ezsBgyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751674794; c=relaxed/simple;
	bh=muu/ETwgf6/sX4My3dlD7usE9mxBIsTDERmF6yJMeag=;
	h=To:Subject:From:Message-Id:Date; b=GCy//+7+V/r1y8VF4MQNNJC1NIcwBcGTXhdaOqvS0p5KrmmJ0lM+xIYUGaUlK0Hrr5c7/pSBxltgBxAt69srof+9yWMKPc1c60IkkypLNn9fToRHWX3yugVKZUznrovXPl0k1vCUJVvvVaqlRg7HIfmOKRd/1LrwU240bUVG56Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLry2vQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLry2vQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A424FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751674793;
	bh=muu/ETwgf6/sX4My3dlD7usE9mxBIsTDERmF6yJMeag=;
	h=To:Subject:From:Date:From;
	b=XLry2vQpo67JT/g+GPIN/VQ6+mDVkZZz8o8J/AJtom1ErwENhqhlYmV0dN7E+GicM
	 fRctXm2gWBF8b+Ce+imcdJn4rMEIN2FvW8J1YggwZykqcqUTcn9iVLhOXr+5U2HWH7
	 7yKwAPyHXrgE6PlcrSxSkIcVk02sIimaTESbjuLa0dVYQcxlz507a2aswPjZn+kxZr
	 leRBP8ggBFuxZwmzJ77W+bdg2+Ni/8gxB++U4m+rK7TqxQya2iTxYzePH09/Qdi9QS
	 yMQ1V4bZVtxlfgV1KHFqKWoO2z7coVmDev/D7u0O0AnivzBC54apiMakwzATzXJf1D
	 clRyUxM+jAOvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92934C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167479357.3321.2493924115061521701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4fed08f8692cf57c263bb162ed724dd872039f3865ae778546c6166f11f30e
Date: Sat, 05 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751674793
