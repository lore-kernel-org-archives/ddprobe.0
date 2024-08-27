Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCC91D318D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724790953; cv=none; b=UOIKcFUTwRIlEFkws8/GY2M827NNGwQha6A03n9rkFJ5mMLbPQppUku0iWI2Hp6JCFZmRhGM4ZyFek8qy+zrRLapn6Mz4rI/6WdHVuvF1m7Rfv+yFTyUj+sZdRfAWh3QV2hY+q9Tba1naixg+V96VgmFGcTi/A8G597ya64HeQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724790953; c=relaxed/simple;
	bh=JsNmDceVJCp8oeZobKSXzn4/+8Mp2ty3V15EeMKPPa8=;
	h=To:Subject:From:Message-Id:Date; b=TYCqoLw0WxPwvi9/kSLYoKoiYszlkS8QCc038sfGRbTTf1dSRU/rcc0ymHpmTkgoZh1X1eEnyZfJOEBz6tl/wrrrodbEDN1AKsVsua7RLma0W40bDg9PvV7ggopKzc29FLddaHQOdrHzs3tuK6dUxJw+khQhImBeehw9VGGFkTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeAXUhNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeAXUhNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DF1C4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724790953;
	bh=JsNmDceVJCp8oeZobKSXzn4/+8Mp2ty3V15EeMKPPa8=;
	h=To:Subject:From:Date:From;
	b=BeAXUhNVt1B5NqXWvvZ73IX5qWe5UuDrFor6lJE7Khm8dlygqEMIvFTPezlO2WZZ1
	 Qdw+BBme+7gzpLA9i35wWr6W1++q0beZGVmoYcsPMdER4NbAn98ivtT3c7Vm1Q2CEg
	 1FHWiMs2h3BthpT3KVP0cFxhqPzQ5+PTQfrMJnWkZi1lFdihLl79gEMKSssNEFqsKm
	 r/fNTXCQMjjrzdk4DNM4oDVvoDmO3t9XljsN141zVt/IFqo7vYmA721zMwvBLL7Hkk
	 HZYaUOzd2d8567x4QXlK6tsx0xOGmXQkfl4A8U+y54AWXXNB+kkXekCJ/TdQaZSS1C
	 eNq1tN8jNcYTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98256C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479095361.5135.12741957147645545541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ac0eb7fdcaa0e047b779075b9c4d5bee98a05ce151a8ffbfb1a81e419a19d6
Date: Tue, 27 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724790953
