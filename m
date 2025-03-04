Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4222E3377
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741119534; cv=none; b=aIivag+DXd2uFxTfm6HosjNO/ruMk3UH3td1TvAztyDi7eG/94i6+/5+LlzJNrJz9gLgmvo1u1jtbZBhtR4qUkGxAEY9IiIOE6N8oOHPnxITvNbkqmIeV/k4irGbfqRaUWilLhhcWppMklLvi8wNe390ygYFtjSRSPpaHIrsRp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741119534; c=relaxed/simple;
	bh=Xj7GTzSpyCeL8L4JWxmZLtnWIuhXsSCAk5/cE9X1liw=;
	h=To:Subject:From:Message-Id:Date; b=VefEt7MZFrYwWWgNajEaTCo6uvgWVKvAUxtq+MlaCFABnKjUg9qotrjMIq7SnCEdawZRGaps5cmAptrlg3mBRt0+1ArS7ZtwHC5QXBeQziNbGasvh7axZ8p9MTYa32OlxbYPg7O9gvAy0WkcOTwqGV7uS5694Vfc83OvQ4q9BVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhKq6brm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhKq6brm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D87C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741119533;
	bh=Xj7GTzSpyCeL8L4JWxmZLtnWIuhXsSCAk5/cE9X1liw=;
	h=To:Subject:From:Date:From;
	b=dhKq6brmohr/JD5Vw20h06hPCMGSST25N9mdDJToeM2fbox3R7FjUlb8bro323geR
	 DfdcbYu14oypG/lizT6i2VWzCnYYSnss9r6Jj4q4GRPHIPJgE+DJSPUmu1fA+bEuEb
	 16nIJA6Eix/p7JQoFpeJBdJZOEt2dxz8MgShVCywfaT5/47PIj+5qXVKGKYnfIDDbk
	 fHdgryT/HPc5/0INp6/MfpXrAHns+2IHMXlXYJV19wgIrYAOVda6sfAwacvWeaMo5h
	 4LRuBP2490JT7/j6B/R+b+GLYm8u36vT6Ot3qV9pdKcNjqmwEhW/Q1lsujA0QKIV0n
	 BK7nBVYHlkqSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B12DC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174111953362.4922.1377921451040315567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb955d1c59757119d08b083038e12ef0780ea024bd1ee5a141f2496d46754db
Date: Tue, 04 Mar 2025 20:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741119533
