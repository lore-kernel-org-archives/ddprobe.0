Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF571C84BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752921594; cv=none; b=L6hh/BL4bPRdnBrNI/RUaMK+Q35kJjyRqx8SNiCLW8OSA1TfQI4GUBKmP71xwOS9oZfMFSuqAcQIb60dPwsf4UFYDnCrVAclW3sv8iiaqh6DNmNnQuwLVRqAxxF0W2FDw6ut7hF69xTVohy+WRV6rX6ecCuuXrst+5IH7GJJSpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752921594; c=relaxed/simple;
	bh=TZybBKf3VQRXcujkZizovxtUS5xpq847/EdBE2k9v3o=;
	h=To:Subject:From:Message-Id:Date; b=VeA/ZZPI2M/NRbQ+WV5Vqlp4Gx1gLZh4BQJ7gbwhutyKUUgbzJo6Fr0fsuSbBYs07UAB2jJYHy8uRW3CvH3eSoryQeTHjCFWxPpPcCZWXsec+uQiaFo1vyjENIVL0zQCqG5B9RsxyopbSBuXmU9ToFMvXmdQ/a0h6ynNQxuKHvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUikLIcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUikLIcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6652C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752921593;
	bh=TZybBKf3VQRXcujkZizovxtUS5xpq847/EdBE2k9v3o=;
	h=To:Subject:From:Date:From;
	b=QUikLIcd+sI0W6d6FhyP9apbO83rq2gKXoU5L1H0VDSBh1qizAjQOOMWakGRogNnn
	 FVxi1Ypimuj4ldI5cPg/vuA/7Wvq1yXpkhEgLXs/UKYjSpy69zGuZsIZYUuoC+yn0b
	 4nl+mMj8HwzCpOekDyhTxUQrjWSaDAlAsZyeDiODvQFl3KyUDbsBi1m4bW/4GlX8gx
	 IFrlECRPjEvw/KuldccuNNmx73qkENDWYUVdn+9w7l9D2yYLo7RJ/MM9zRScWvobUR
	 wIzrDBNgn94zEkaGthkYQ6lAnvVu49XsjaXx4rc41vGAsmrHm/wIu4TZUKLGwQyz/a
	 sU4xjwE2ktP3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AB4C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292159358.11676.4248107901497369600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba9b22f4e5af33abce462d8129eb974cdcd60174a4399014185349ac82db145
Date: Sat, 19 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752921593
