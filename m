Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB7B1A9F97
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786148434; cv=none; b=UrUQ/gfu7AK1T/Ngvg2CCoH/XRXHgXh35ph6EmGY1AvGiePhf8rmXzo+wa5vsoip9rX/jvWfrrtz8otpiVqzUWnTSJ39EUuID4Zt+i188uVCgljDvObROVRXk0ayCTln+femBmFR7E8y1DDRtkf0YcNuAE4guspxUXGG7qocxkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786148434; c=relaxed/simple;
	bh=3avHa3rIuYm0LZ9g1hRhOJai8HS+Hin/xK4WDux+alc=;
	h=To:Subject:From:Message-Id:Date; b=e2vjI6hsyGxxuSi7gQxxPZqQON2hwRL73fsSFUIxcv1ssgSzhqFvtZYxySBE6j4IBo5QnyGdVhtz5uTBmpSC1tLruDDLaaQVxuz7AzqtuY43NvIS1gmez8Sj7VJ6vPnO7EZSOc16L0N5GnD4U17XMTI28rCNL0i8JVBDY/M7j6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLsCGSX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLsCGSX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0624C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786148433;
	bh=3avHa3rIuYm0LZ9g1hRhOJai8HS+Hin/xK4WDux+alc=;
	h=To:Subject:From:Date:From;
	b=GLsCGSX5YPMUa3In1JChm8Z/FIki9q86U+mTFydh+Jy1w41TNEzQCZsg6bePAkorG
	 LTpqoD7t8lTRoY/H06lftI+V7KFyFyOc3S9LdqGzdJeMjsQlJRBsedvt6imqThPBFG
	 MC56oUoXpH7gGbYCRPblEruhHaamzkTOSFBykxep5SopS1fyU3/xIgY5vFN8XDdI0M
	 JuGOADOYZejXSBAm8evl2KotETZWNAcm46qA+/EoHDvY/25Epxc9hi4ch86OUwSc4Y
	 pJ3SLXCQ10tRl6EgVSyQoHI6yFoSAJlGwlZ5gYTJ4phRHrB+Y8e7m/GHuphwpMD3Zy
	 s5u6oduIxGrFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1F7C5AC82
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614843369.2135.12021226659201156548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239eb5500e8f641bc62aad81ead13ab0efbe3079cbe764fc6164c48e0c2180a1
Date: Sat, 08 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786148433
