Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0427C39C628
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768397634; cv=none; b=Ap+rnUebTBiy4e2ZuOCcuEv9RHY8heGgpgBo5/GdkwJ9woTwlanG62Iop/yMnQKH5AbshYWV6Eoi3I+BUOZTWrnghR8U06ai4lWpvy1XgI8S1yeFn+nTpb3sRBMt47oSIkoKP0jED1HupohashSQ8m7VmoblfjJG1Fjs3HO1K14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768397634; c=relaxed/simple;
	bh=6OdntpjpuGp9OTUtMn5vlzFTq/tWRFkr52tzpQSq4P8=;
	h=To:Subject:From:Message-Id:Date; b=cZbmbYl3XLoHTnxJDi6XCTam3Ltw1jxBaNY+6R3Scn5GV3WkSa7UKcSTC5rDcLwA6bxV/HzO+KZ902eR0h30wA1IbabquS6lG2KkAXh6HjXva8jX1O0FXuPMxNi543BURx94G8h8DAImKtji3r3mbT06FR7Xuhy1dC5uQuKs0vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChvwmOSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChvwmOSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8312C19422
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768397633;
	bh=6OdntpjpuGp9OTUtMn5vlzFTq/tWRFkr52tzpQSq4P8=;
	h=To:Subject:From:Date:From;
	b=ChvwmOSVVvvcpDz67OCoJeblwBYO22W52Y+ZbJEUaPbIzfipVoU/4ysI2gCdn9xsA
	 xgts80xCaL6MU4ZHys/XPKtiyEiltosDMePheDgVoVNnt83oKo0jMl2LwHHywinfh5
	 O4N2x0YaRlz1P+wHyEYlRD2/66iJtEytsUjWcvdLPucGGdm9mJAiBpSqG6nwGKqaXp
	 1ONWdgw+zzGXnMaK6BUq+paI4kh7UT1sUJKbwBjoQclnCi28tqHkQHayy0P5fWxOg/
	 y5jAjVSB9w4FJaW/mV/7Ifc/MnLk4qUCijLh7l8ImmeMETVjjhKw8xmS/RwK28qQ99
	 w07pewd7ZmkUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94770D37E2A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839763359.13126.13872528525482257830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8bed014923bf68be88d8f4f0053f0a635648b6b3d5b085bb9128cb882799336
Date: Wed, 14 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768397633
