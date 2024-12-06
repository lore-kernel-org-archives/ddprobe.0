Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5440D1F3D4C
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733523954; cv=none; b=ZHTAb1+OdWtFo5FA6WWNg/mdGuuyuu+thmg82UN0ged/Klpgy78zbdI1bMnOEKEo7b9uZ+iQycE9cWeRSWiq1PTt0m8JLyZBzOV2eLNBrRyZlxnBp7hqXh9XtQoshdCByacQl0ulpNSFXabnk7O52xCZWxkkfDwgsigz1Waf+Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733523954; c=relaxed/simple;
	bh=KPz83++DMmuRWdv/nkOb+KDCGaJhWhTsuIVrySHSZDA=;
	h=To:Subject:From:Message-Id:Date; b=ljTuZHtyAVAm0N8zhv3xVK0ZTFCiqhvgaGgaMjyfmTUA2WLwdJtEQ/WRxah9PCgqqosmAMkBNxmTxfata6tNLtatY4wYKhz5HX/WSnZmmmSZXzG8/J1kqlLLCLyGb0qPZ7RqR75coO07kdkUqoaK48qtIJF018acBpcue5zKtmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEEm2E/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEEm2E/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD573C4CEE1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733523953;
	bh=KPz83++DMmuRWdv/nkOb+KDCGaJhWhTsuIVrySHSZDA=;
	h=To:Subject:From:Date:From;
	b=UEEm2E/V6GMQEJPxa10oxUyw/JbIrmOBlhujBVxHYQulDcb21Mf31Iof1QHo+nB3b
	 NWE1BpuX0zc80YfdKPFz3kiQ3Ql48IARxw4Q8x5IC+RtnmoXx+48pmKojoP5HDF4iJ
	 d0b8LaGBEv87OgwQWFUX9IJgeWbudQD0UvVatl8AfThfw3GyCfXsLfJ/vlzd2xVmTd
	 Bmh7IeXGulVe90/p6wn1MDHQhjY/iScPj9IEuUyyFM1IP3xQBJ34INDB+Akd9Hc97A
	 1rWnY1LKwMlB/pkQIywqgJhHkNLgpMgtwIE//zwxpTZydZZ5UfabW8fSKNXB8Is15R
	 YRgawN+u7ZjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A14E77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352395364.7221.7143337278087665399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f7627cbe7b211084a663e843a3cb082e4a9ff0c94a5d76ba3970809f2482ab
Date: Fri, 06 Dec 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733523953
