Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FED923AB8D
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771563294; cv=none; b=N6Z48OcKOenDJ08Z0MK/t5qjM19zrklVd88pmzZtqh09kT8tleEOFw13Mbi9ZV8nA6icUhb7L3IrSm45PrNTqOvlui4boJI3f2WBVnU6LnuopFQH/JiJ9NUAxGKB1QJbq0E1hKNnk3fpY4xI5WZtP1H99mqfxYeAxxQmvJiXjio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771563294; c=relaxed/simple;
	bh=hUv/dzzLfdGw/BsBHFR1niPQQc+C+mKGxyCn53PSGTo=;
	h=To:Subject:From:Message-Id:Date; b=ih2JgbomcnDF0tpJ4CdYwQzzSqFB8YX1yt8711qwm122dO/LJ/kLhfRw7JuQS2k5MyGBFXY4rLaG/qzoNecI94ZSg2wDve2G2YU9nxZIEjdwhdL73JF2TZ9GH6SMzO7x+PeTP9VStlke65CH4Z1K7FUetkGivR12tRkKBAOre+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fi4prbSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fi4prbSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE473C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771563293;
	bh=hUv/dzzLfdGw/BsBHFR1niPQQc+C+mKGxyCn53PSGTo=;
	h=To:Subject:From:Date:From;
	b=Fi4prbSSMKPE5Zg+Gjb8MOX9x9oT0q2kV1yJU+iSO5Py0KesJ6Xxv2hoMnxuh47H4
	 oJUVIwnYj3O1Wn25w7YCFoQv/a9WetVDO7Mr0X8kCqyfQnmsrctqYSKG6SQxPfbfmw
	 44HkqFx9MI6cVeS1/Jh6Qw2nVlzMnQWvTvVhwjSVVNNItECzv/nEp50ufAs+aXb4MI
	 +8TZMkm8lp++/JAu+j1NEyDILl1GN+ATdVfVkwSqdDCRfd3pd+4Zof8zfzDrqkwVLB
	 eVPM9sL8lnWYMxFq2hGlVlUWwXbT/WB4Y9YYWkcCou4wAJZrJJKIvtgHt0tEX5BifM
	 fSBlHp7Pj571A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999DDC53209
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156329361.3471.5406043902632726283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95cab51dee553433d161906d5d20f76dca2acd1f18ee9d008f9ee5c491d723e5
Date: Fri, 20 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771563293
