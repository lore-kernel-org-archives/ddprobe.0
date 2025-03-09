Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65ECD10E5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 07:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741504734; cv=none; b=Kyw8g0+/qUzsMyZYaRHADWV0x3K6+MPKpLpviMwC5XgQcX+oxq86F9KgfQklzlqudNirFNuwellp0oYBvUBPl/mcBih4fBiUHsV28gfDTv13QPh2aahbtEbrdP+o9ccmNAKShxV8q6BsHK6SpsY1Xl451KUm2Cb9MWKhRTzs3i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741504734; c=relaxed/simple;
	bh=bA2kI2qlxjL7yxf7Kxz7kT1Q56Y6XMLvJLaI4p59/+4=;
	h=To:Subject:From:Message-Id:Date; b=BLbE16mfusIoXvdJlJQBoLKsUT7jUwK1p4A53bJBZ2Lp1hLgjT1XlY6kv/QOTBnvxqYHybYXcSj/eliL9hzdtlBHed8MZVhCCnIfLY6x5bL5L87/SSw8wwW6lc16shT7oo3WRLyV7yybRXiKAEFruCXM2se9yHY7LtD+w2zTZ7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8g29Exh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8g29Exh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02ACC4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741504733;
	bh=bA2kI2qlxjL7yxf7Kxz7kT1Q56Y6XMLvJLaI4p59/+4=;
	h=To:Subject:From:Date:From;
	b=i8g29Exhq+NTUQEN0M74gN/pc2qY7euJRefi17gcvizeFdMKM8dHgsZjFNAybnE88
	 zik/LSj95m2aA2ZH/I2Lj5g6KsMD9ulD7Df1Lj0Kt5DXJt/JK70Gpc4wi0tcwnwntA
	 xsSkuCL3HLQwfE/YTemjKW456ex5NyCX4Q7tOnkpBbm/1op3Ai+6/bWDGGbwBQAj8W
	 Fsh4Vjb2oU74HFR9tPqmFpizZtFuwhFyks9o5TRUwAKsvO1XmBU55qsjWzLK1FSPZI
	 l9MCERUQsCXX9yarYm1R/hLguzvDJxqsBJ2rZP3wGQVVRobv79jXp6YLl5Fez5w83C
	 IBwVA/nyal8OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A767BC282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174150473365.31783.16083661476401845701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e99593af36caacd25efab3a0e82996092c01112518edc15b3f3d8d484291c42
Date: Sun, 09 Mar 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741504733
