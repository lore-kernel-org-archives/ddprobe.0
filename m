Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC9F3E49E6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786691434; cv=none; b=L6oyqxJR2hxHba0JS2VVKxzccGEiSvbZfQYuT47Bef373XMEFapL4BjKQcyqW9EXETVyFRYJjUlmDWSEH2jTTwoVLmRfKwQYMRZlZsriNt9l3J7Xtqk31Hm7tJMJzQ85IAAvJXV2FfjEk/presoxTx9yZ6vuS71bdlBx90ThA/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786691434; c=relaxed/simple;
	bh=J8v0lib+29m+zyGmP6pKMAGetW5szqKG2JQfso7mSRQ=;
	h=To:Subject:From:Message-Id:Date; b=uE8oNGXBKnRutmwtjSHn5h8MiLTnIp1K9/9lP+Fsl5PSSs95C02aGQvhutu4oCFfESbYiQIp1n0rjhuV8WcQxpp6WcCG4xF48uGqcmPUJ7TmLZpuz0H3UtTg891DpVQaMJvtc5ux2Asxx58wyzgDpkH4EKQ0rjro93bQ5eLsLR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwqbaKNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwqbaKNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA574C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786691433;
	bh=J8v0lib+29m+zyGmP6pKMAGetW5szqKG2JQfso7mSRQ=;
	h=To:Subject:From:Date:From;
	b=UwqbaKNQFQmpboqFErKRq+kEBsjtTOHQCZdkOK4rVTUaBiRhh8ogGDBUkM/Wr068j
	 GMEta99LcLLwBn1WnbFKl4BQiU/V270GEWTL5SOEaxq4IWYUKd0O294CdE9zzSCBwS
	 Rx7PstmkU8DyjeVd9/Skz8VYR/Nllx7FRSKqNgLXlVnRG8BiI+JtcvvifaRPN81Stl
	 3AnTPXBYBP36eLK4uiN3tkaOYyWhy90LZpKElbUPU+SUnpamaS4GMjTveap1PSYLR8
	 bV5SKL82a+U5vDx6U7TAq1Jatc0TTYhJ09ThGMiS4+SU4OgE4ZABUVKstLEoFqh5HO
	 GQz6o49HXG6jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E04C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669143368.1576.4342918722217858269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae59068be3a8107fde8cfd5275c988cf9180905668e8b8aa9b508e9fdd6b78a
Date: Fri, 14 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786691433
