Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25032156C76
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737021954; cv=none; b=gYaJN77JDy119nHlDqyhWrPafG4SuV5WqrasdFlMoJEbTzQKOX09EaC9waBHJ8r0KKPFvnp16gVFiiZHh5A+tw/3L7UkVg6dfC2EbfmK3Vlc7UqlZL3Pa46tfchNZwPJDuPHPgT65VMPjNTPEYEnuvfB5A0Yka1u9uWt9VzLZd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737021954; c=relaxed/simple;
	bh=2NV0uZq8jK3KnVwZay6XZ7Imjl1cv4PU4Is0n4wJWDs=;
	h=To:Subject:From:Message-Id:Date; b=KBH22hJZGAAL6jofe7APvPIY+ytrXXWm7KfaXKC2+IGAJcw2ThaOWVYiWMMo+3BOtrmUlxPcer2u2ziAqZVVkxkeT3+XXseTDXnpcpQA1QKO3msyZW0ZXPQu2hdhvTYA8ac7wJL531q0nh1YFhI2wIp1Tc11VKI9ylJztLVOgDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=floGiXT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="floGiXT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FD0C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737021953;
	bh=2NV0uZq8jK3KnVwZay6XZ7Imjl1cv4PU4Is0n4wJWDs=;
	h=To:Subject:From:Date:From;
	b=floGiXT60UrPjesdzKyPCO3HakKRxGLsFrKl1y/p18XfL5RV9UG7BQXL87JZDjUpZ
	 mxzA3RAPNfKoR8+Yty80aUtWhsc9rRxwh4KVhLLvs24xt8Kg4Lb/doGhPHZfnMpVzY
	 p0C6FMB3mS/vJQYJdkR47VHQRx1NBjFKRZldI+tcrcxeJYqL+sg1Ba4tJPmPBOBico
	 KHSBGBzbRQZMouqMcvq0qXqqBVJTB5IkLylnWSkfGIDXKznAABARnch+9wdEuqsJMT
	 R0c/8zeQRa+q11RzoauothybY+WwqnGksncld1PeG75g9giltN86uJ7flZIRljYdzK
	 qixv7lNX2iwnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAD6C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702195364.27895.6693106283180695081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f7389d326a5776694b768846466670564f21e7fc14065f72fe1a054cbb5ba0
Date: Thu, 16 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737021953
