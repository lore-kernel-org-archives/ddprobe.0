Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E17D13AA26
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714114943; cv=none; b=SV59nQx9/e/ZJebwX+oeHtHrmPd6o4roQZXqaHPV2Kx8YLsfsaNKeEr9o4viuJ8TWCV8DH93HS9tIiYuYs3XvfjLblVCLYaHx/qydEeD0BiCy25yjolbLpq+1aZ1fSSR/QEBB1T/9dnXcyK6Eob5eSwCHwSSPy8c5P/Bo31QkPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714114943; c=relaxed/simple;
	bh=ySg07zfoYMXxpl6Xj4vZpNEIQXsVwyMI+txmNcmCed0=;
	h=To:Subject:From:Message-Id:Date; b=Yz8up2GVuXXstR/W9Ghn5ksufcnyfZ+I/hVB93HMM2SrRRKk89UJBvosyY8+0bBLU67A0Bvd78dYL3mmf0oK46vvGVDO6yeE2/TOr+KratjJBG+xCsDfPvtw80dEY6KGv+2+uS3w0D7mO8Wd7VYFYIrCWeJmX/iI/hvQpiOsXto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JI9PSDFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JI9PSDFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D6EC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714114942;
	bh=ySg07zfoYMXxpl6Xj4vZpNEIQXsVwyMI+txmNcmCed0=;
	h=To:Subject:From:Date:From;
	b=JI9PSDFU4Zb6gLjml9/lO9rXI+veBmWERAoipTdY8QFtP0AMT/Eufwag80RTdSF2l
	 VyTlrKzSdV7umFiyZde5L0DS8rdCvozW49UTZb0LBgq23NaAbT+hL09u+q6cxFGAT3
	 nDs5m5yfoEmIo/sgExnetEz6Coy7I48zS/KpZbbMmKYnlFYIrk5aIShOlwgDBOwFJ+
	 WclZwYfradM+HQz10aFlgttVMwG72LBNm7IFeaUQh1orm7eyerOCs67hm1fcjbGPqk
	 7k9KHVkxxBR+r76vU89v/WcHN0ZykzVMxTDSuZIMiWp+SZ0xZFHcImpEw+rHE1lxjG
	 MqEeMcrAIckUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C812BC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411494280.30611.13874514280432196501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b3a4fa1d222fd5a3086bf41ac2997799c87b4cc28cf3dadfe2eafff69e0623
Date: Fri, 26 Apr 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714114942
