Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BCF482F2
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753847394; cv=none; b=DzuMmg5JNfYUmYPROTDKqspWQE5F/h53dT//9yQxoNUKHhSdl62XwghsQcOPc50/fNSYeLeK4BDu3UURNwtjE7d1MQ3vxltcJVdJ/rbD9UWxQspj1bqFzeR8PVrKlzFGAetM5UqN8HDvYbzHddA015zpowh8JZ5/AavjEIXrB3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753847394; c=relaxed/simple;
	bh=1RqXN7KwtdumSpmt0n4xC2/DEab/QAAm6x6XkkBEJGU=;
	h=To:Subject:From:Message-Id:Date; b=IWQ/Ngj8deArkpES3pvbukuPTv8jHERnUEOq2T35Y5NAI00A3RjTGB5Ts7tqBNQA/sApJjur/BKt4M0V9dssxKYr2Hrf7TenhsX4HCS3JM1viJatv6cjh067/lA1sEGQoitRtMWi8AdRIXmqhcHlHfrre9Fd4p6JObaD5vvlD8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfGc/AyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfGc/AyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE5AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753847393;
	bh=1RqXN7KwtdumSpmt0n4xC2/DEab/QAAm6x6XkkBEJGU=;
	h=To:Subject:From:Date:From;
	b=sfGc/AyXRO9F2WogfOg+C8nyxbooy4iC8XzKaTq+RorM4/bY1FmTR4Km/E3nuEJF/
	 rOdcBLKNkLCKF3B2h7d9xjtcAucN/DIognlLV5M6GdJK7m0May3idFNueYry2GWM9b
	 sVawdkCAk7guAx45udPoOdW7U6qWK9kBOvwjPY5J+hE5aqwKekfhE2CB0vyfm81XX4
	 nQwv7vrnZciqvw9/7gNDuD1FIYlb/2k8Hon0ZJXFNvAyqksHZ5Bso3Fy1DRbfddFc9
	 pNoblpQeQaMadLmK52g781H8B99Z7Zw/7D4yODQ/oAo7GLiLpIktZ20RGKRBe7GBYz
	 czFWZAgOkJjSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E81C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384739358.26685.1288737938535736490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09581067a42347b1c6a0b67908a5ea3b7c7b45b21665ef01f679597f603239b9
Date: Wed, 30 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753847393
