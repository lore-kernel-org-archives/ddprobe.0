Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45168376F1
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733088954; cv=none; b=Lrv+euqHcv3l73YSqT7SakH2Q/Wbv/0jCVDCyz4uByPDpuNuP8feI2gQSwqNwUFsivsJeJpAzeiT60bUHwob1EcoRpP4lpZ0MXMcoSSW5pDIXz+cEAaJQKCpG58YXBXoq6kPy/4s7aYb2YG3USbZAzSNpNgfJ/NGx2JiqV/X+CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733088954; c=relaxed/simple;
	bh=ZrB5e4m8x+bSxeNipX3uqEjprar4KvoWOcLac/el6gE=;
	h=To:Subject:From:Message-Id:Date; b=Fad3Sz613qXrPheYgb0UYNwHTBPXIUpfSrfG/7Tha2fJ7TwwfUxTAxRaYzSG55NdhGHwA5UAxHpAqZERjluFtVAGQtGxjQVdvOhvaKmAns+DyWvk2SqztovZvHKQzceuK+ACM387O7G9dcqfKoJR/jc69kawHHEpOSt9AhY+x2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaXxtU63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaXxtU63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9ECEC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733088953;
	bh=ZrB5e4m8x+bSxeNipX3uqEjprar4KvoWOcLac/el6gE=;
	h=To:Subject:From:Date:From;
	b=kaXxtU63A2Uk/jR5fDMRtElGpzl5SwZPS+QzbfKFgzKRosjL5j63eUEg5I0wWVNZq
	 P3akYn9lY4PPSRcswA5gw0eHSrH79Bro+sSB69nX3Nee9XZIjNZvWameE/Tse7acSE
	 3Crb/RUhayzCckccEVN/gpBHgOKGdkWL0+XUqAkVfZEqGHC1qrBd1LGWt1ZOLD2gAh
	 fvN0byP2C9Pbje99zjG0fTKN5M3Xbr03htsdt4jHvlraj/Cc0XGpvt0Qj/9SafNW61
	 kFIMQKnLxPlpW4iZ+QiBQ1UYL5uxHeXkZhOX47yjGwBTFvvRg8d2XFSZoPMXahkYJF
	 qHV0PFzVL0rOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B008BD49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308895367.5675.1072573769263679033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44bc43b61b426a0d20a54768ef6d42098f07221f8bcf893ffbf776b2948ba946
Date: Sun, 01 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733088953
