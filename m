Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55324B651
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717447523; cv=none; b=ZqHYPbLZ+EfWGzi0hR0IjTH//tNpS5Roz1IzFKZDW8rf/lX3x+eKjKacFxY8LMj/nKqjQpw9fV7uV/2xtLHOuttZgTIAB/ESFtn2OkUTCxMVNXM00Ec/m5frfBirp2nM6pqCryLuH19/D2TCzaZRbXwYih7Ms7Z1SYU85lyfYT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717447523; c=relaxed/simple;
	bh=SIMNUmgkKTCTbe+Ptbe3IjUZXF90qUmlbvoVKSu28eQ=;
	h=To:Subject:From:Message-Id:Date; b=IcwPC6y2LVeSBzAUOOwLiRu+CnPmW3arrqvMwt7wRJODd+PT6++GoC847R/92itC0czyZxoxg8ooizOExvX2ieaopz0nzgNVvHIL+gjqWK4NffQzFe50fImUyu5K9drEs2bYxFk+LKvCXyTKevNa1xGPM33F47QRUAG83sUk+hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzJWL3Q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzJWL3Q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93B3C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717447522;
	bh=SIMNUmgkKTCTbe+Ptbe3IjUZXF90qUmlbvoVKSu28eQ=;
	h=To:Subject:From:Date:From;
	b=OzJWL3Q/yILSE5z0s6pGh0DyvhhCwiJgOsgHCCvYp1BBaPrzyRNTWD2O7GoY0B6Qq
	 o4uTRFc4GBpeiyIgtrx/NDnyepzDyzbvSREIiMNwzBiPK9cHm10HO7JtFTSRiOK9MV
	 DUwTv1c7xkUBQXUQNIOXJN65fHJj1CpTY7dBj8qk85ohxHPei2cV9cXhNneGoVj5ts
	 Gw/OPPB4THZ4JgWjANIPXC5bfsSuHVT8W0PE2TMwyVaeulmOGQNxmGuBcrHhBsSfQg
	 yrI6+fLT4gJr2ZMnHcqd9tH6dPxnvOCPoibvVPEiQI81LQIzyeM2LA552gM4owGyfa
	 Jy3TNfHMdKNeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70DEC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744752279.3675.13900411862032021288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170da555dcea6ba69b67c4296d5847560ebe5ac3817d32cc79a18aebc274fe6f
Date: Mon, 03 Jun 2024 20:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717447522
