Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7CA1EEE0
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752437394; cv=none; b=pqyap3T0vrK01pRe0gDCaSoegdPIE8TlD5rlWj/sPi04j15EumJ72xZsKSaMNopotXmTBUmYfQjJw5Iv3ZnOQRK62IMAzwxLYvwQncCIfTJOiwTNo6F/8t/ItqEM8pLRzlt2PiGrqJdaP/7WhtwRqga6buoku+us97YIsx6hpXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752437394; c=relaxed/simple;
	bh=SpKaRFxlaJY5Wzn2AfLo5FGcCVMcnyPZIVE90EFv88o=;
	h=To:Subject:From:Message-Id:Date; b=q6YWu24CbXf8t34V7umSLfFwSRjlLELJ/vfdrdMJanEwYCJW3FPFkkRJ/kH8dN4niBNgI1iOHvrWI8NDwtmtatbaVRIowIn/EHi4ezJtZwqKFYN/wNpzPe1eoIDQifhIiOP9KV7GFdZm7eFMVQeldzPY1fDfX/KdeCInmtc8AL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEiYGhEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEiYGhEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74C2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752437393;
	bh=SpKaRFxlaJY5Wzn2AfLo5FGcCVMcnyPZIVE90EFv88o=;
	h=To:Subject:From:Date:From;
	b=XEiYGhEAj7APM8b80nzp30cCJzbJvkRnIvgvLDggXRz+yNAart4oey78tinMa1U12
	 t32N9mQGP88sYjSNF1MDIvLsdNpu3i6YgOUBV0siKMYXZ++pwG/ldrodmc+l2yHVcx
	 PTrSiRXM9NvHeSd9lK3LpA962acZxqNuIPKhKdvlVmls5ZJVNI6+RMteNBgD1tcR9J
	 SUOSQowNo/j35D/qztSmymyDu89LAAouR60lrlYqyH8/RAyOcctoZ3pCK6uiszVG49
	 gh1QLDqp0j9U/YDiNeeM8MxOy4/x+x7iwGZ92uATg5EJOOgw8Yo7T0RzdWAAp4nCXz
	 w6Ww2cmwERosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9523CC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243739358.1404.10939872340740374390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eec4a982b10784958ce30875af151e1cd944d01bb6a476d28c8133cfa05a4e4
Date: Sun, 13 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752437393
