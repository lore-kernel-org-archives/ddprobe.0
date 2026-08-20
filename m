Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E940B3451DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787235635; cv=none; b=MHZtfFnjAnepf7SMv5IqOzru3PeNectiixJMxsjPUfOyMluD6bBUkReetqwgvBhQn8FfwXsokhRQ2xAco2Oh7UkNmH3vLLtAGrGbF1l/5Gt92zpuuPVtKozvYvYiKFRHnQvvrUKbzreNhXtkSR3z2UAnOK2EWeDShotC5MQ03VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787235635; c=relaxed/simple;
	bh=v/uhtA9tDF1ABCi7Yy6fatZiDQuHmP5JISj4V04d2C8=;
	h=To:Subject:From:Message-Id:Date; b=OgNXGVyPWCWGeOtir0VFO3t5aHETJ6ASkrYFR9TR8dKa2f4hdUD/w7irzJRoiPibs+VKSbAzS5aWd3np3egjeLV+V/Sw2de+FOdyXueDbNBf1gzrOVXH0UO55MiPLKUY0kan+KuwfPetzav+uaX/6IfbviFdaloMHUuSmkfrPN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRppad+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRppad+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4480C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787235633;
	bh=v/uhtA9tDF1ABCi7Yy6fatZiDQuHmP5JISj4V04d2C8=;
	h=To:Subject:From:Date:From;
	b=TRppad+f3Qv2mRUyuL/I/snv7vJdcud/W+PSFEX92HVrJDFoiI/TiGsbXbRzm0uMg
	 jTGfmSQ+OfZxLpDK2b8KfsLGs5egbzx8zIk3BjO2HX/2AkStN6xoat2quBMHAT4YbG
	 UfZPvx0rwoqCemXJTi7Mu+MB7YoB640hGCPFoEKFdF12g0ZUiXjqdBiew2WrIdctM/
	 50/d72EkWqQfbfHND6n8eOMwPRj9tXIoUulnBtmpS1qMUn90bWgFdeYm7FGk7SkMtq
	 ANHVoMk+NeFrLFQ6r3HallF+oMb9Q4K+wz80JKKAmyE9vZiFMMxvhznQ+3xupSbtfZ
	 hsd2Zo0RJWdqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8AAC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723563370.23801.17550291924143416239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25871505708bd37df3b351b71beacdfdf048afa3c63d21aa8cbb308c25084c7
Date: Thu, 20 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787235633
