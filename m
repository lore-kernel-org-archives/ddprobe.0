Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC9B399CED
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785347434; cv=none; b=EfGwr/viy/5+qr8FdvIrzhDXrd2eAZm8hsYWGmvrvVsS3UBohA6+2ywZKBMAiuxyWkMqCnPDAIID5a6zDzYQf0V+Z4UPdB+EB4YQ8xxTRasDd4foUBtyX9llnQrb1mnsn3pJ8ZfNnj+U1EsYU+/weiOswMGQ/p9aO7+xNHFmDPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785347434; c=relaxed/simple;
	bh=ZypjzGYaznUbxG8zpd8AsBvztfV3gh3/onJQVZc6/xk=;
	h=To:Subject:From:Message-Id:Date; b=imOtEhNGGGfH9tPOExQnfu3QZ61YXWevPR8wIZ6mYssbj0yTc05Fwi0E/q5grP4RqxsyXAtS2+y01DfFAo7o+SdtH7BNFSe67CQDZflfnu3nA5PzhItaq5FoqG8ydWexiz8uZxWS4CHNDpKLWez6+EziFo4k0PwzbbRBY6x8XVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juH52RhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juH52RhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC00C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785347433;
	bh=ZypjzGYaznUbxG8zpd8AsBvztfV3gh3/onJQVZc6/xk=;
	h=To:Subject:From:Date:From;
	b=juH52RhU5Ajc4m6tK3orHj+uvGkRHa7YUM2YSjmqYBTDN6M9M2VzbmBl0iWeGn5Fo
	 7GyBtuA2CbEkF3qsbCGmOVUUG+SYtrrwRfqKneACmGjfZ2NSkgG2oI4G7OxWDXOAoO
	 ZFtfAJlzisAVpl2LAPl9I2Qk5KmRdepHMN4hv6DymIBYH5WdJy5CmtMJkdN3Fd3+xT
	 kw1qOVebLlT0mS6kuQTlfwSu5ThjkuDFsqJjT9sd+bieGCPs7xWHK+s/H0iYdys+Ne
	 QWbkGuGW5MAKniOVhmwlWhg0woc2DTFObdvM3i0o1BuySpawLsfSIchCfEJsmWBJEI
	 a8jg7HBZr92+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F5BC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534743368.13281.6633054618935580049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c57d4eefd33b6a490dd028c6feb20e06fed9730e15d2868d7774be1e0eb617e
Date: Wed, 29 Jul 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785347433
