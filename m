Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362081DC198
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754154594; cv=none; b=VMpPn/HNLEMpgrSLrKFLYulfglRXxQ66PuL1ejMcwMKAsgNypvCEEdxSuIJhdgi1/g8UWpfEN05uGH199x8jjh47AruxSpyuWoh97Hsb3d44vriHWe6e7dydTJkxbX7DZYOjSrcoI8PRi8QCMduArhucYlKVAuC134cns7hD+R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754154594; c=relaxed/simple;
	bh=Szz+VMw6RCgujGhfOw6RsTj5JKXZeoTfdXmYAesdc3s=;
	h=To:Subject:From:Message-Id:Date; b=k2zmwYqEE9coFwhK7AHUnGPLEwnKXGcalGl51VycvsR6b74HWvjQAHJ+qtyTvFG6Eos+NVHazx7c/jBGc4BmRYM3UHsS4YMOIIFNEp2LcrjZl80WEzN57tz+4UsbK8cSvbaPLV7j9KTgfvrYc/SeLHvgHznffWZgy8zclRJIM6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrICvscq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrICvscq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79D5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754154593;
	bh=Szz+VMw6RCgujGhfOw6RsTj5JKXZeoTfdXmYAesdc3s=;
	h=To:Subject:From:Date:From;
	b=HrICvscqOrXI4Utr/Nwqmb7U7jM77/xWf0D7Vd5XVDkt6+LguaQKoNna33WQYKHFG
	 D49cbN6PFBuuw8EOXsnUDyT2xC9OH3WWJ3fANPITGSi4OCyzCkGfYbWYey0XQl/Mup
	 prNHYrOEJm/U8VUNvLPDiHXEobWmWIIUjjMlssWNxELbqAaPN+x46KpNsooWFAapAD
	 AvWIaGjdDlnbuDddR99zqc7dyzuD1SH77dosSyB5hcgYAZFCPkvjmsVKWns6k4bq07
	 74mv7HrkELiHYSRjmrbzOkSWmlr0oYuwYDqoTkoS7Znm3G4RtOVzRN/jGULPVFHkuk
	 Gzd3++bc2WODQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95101C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415459357.17077.18252714303012473653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcbd038c656aa4fa1dcab242ee8b8528abe7f28f5b920d4fadacc8537bfb97cd
Date: Sat, 02 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754154593
