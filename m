Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E91449620
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777783654; cv=none; b=VPpVTi5hOlWQ0N/OVcZRdZdoVoPigVWunyYcSlJ6T4ovY5i5qyT64jt9L26spHiUZoGEnE4HiTjOjPBR1Guldu+lLpN0Q0mcI8EldKPBrDpLRvxOKNbC0SCTd4/wZFuPUAPD364y9fT1VaiD6Hh7zvei/Y9JLd+km0armgicINc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777783654; c=relaxed/simple;
	bh=J5J0nifWWSBQNkU8QkW4z7ElU8+7cV3qziNL27TS60w=;
	h=To:Subject:From:Message-Id:Date; b=bburHMsTJC34jFHMznilmngs27uJsEDYUYAWiZgXUJcL0MvNDWShLIh00dIeN0LFu0bFXfbWKjYBgP4GulVUfXS5Qvbqf0GIytMhjD2f/1UYMKl5Nlgb5obq4i8G5jNtWEpvmXyTxFnEDdHxEfpInjXJ4gbCG26PhR2s08/lg6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OccEflPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OccEflPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27A1C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777783653;
	bh=J5J0nifWWSBQNkU8QkW4z7ElU8+7cV3qziNL27TS60w=;
	h=To:Subject:From:Date:From;
	b=OccEflPhuRr0HuMt/9ieOcU4UjSFbaqEdYM0pgGisNIJ4NPGkNXxgxu39iweD8l4S
	 IFm+qAxQPXbwmUvsvDag8jVbKoRoYwgooclF4gfIycpeydMCXsdNIZ6Th2nPvL2OXb
	 zQKBz8nb+91HaK7CHK7vJvhj2fjfyZQgUhYYTMniSeK+PErZP/U4pQ5SCCKpZL/tBw
	 ZgpRW8VfnrT04Z5+2V2XcFegTi5JW95EBZmBvFGqsXH9RobnCI6PIGM1wFbpBtA5Vs
	 VgDubrMA3jKnroykCZ8UmmK5dgJVrvuy5kwY3g/7f1/YghdjoPIshMybiAD7EtjR1v
	 sfSsXeFQkrgmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC93FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778365368.2804.9559132748419566328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511b00ab7add8ff82e05ce7dc1365f570347d05bbfce56e38ca2d41a3d4e4c8a
Date: Sun, 03 May 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777783653
