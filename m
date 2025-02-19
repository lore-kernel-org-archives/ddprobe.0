Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E9E8BF8
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739948334; cv=none; b=OVelHDvEvFZwtylR6Qk8LHnxss7x8o1oBP/cpv9sn2FsSSPGVLY8A2JrhIr2KSmbcUnq0a+GKCOnPms54S2oyxf4Q/fbWmwOwX7NsWwOqo7/eBI7+WU+jKAIeQspoSXByqCztV+/5XI5BGVLifD+2mwyAFbYhaKCV6g0FMRV6D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739948334; c=relaxed/simple;
	bh=EbIlJ8vSfnsyvfLeGbDY2pmWBjp53O2VWr+pVx7w+Q0=;
	h=To:Subject:From:Message-Id:Date; b=uPxczkh13b1FiqvlwxxsNea/tHuuOfnL85uwyw7BXOUbdmDfC2KhTp5P1gg2aiaQ8yM8TFCKKM8wIZLVqYtoXGn8kdJq91I2Svs631mHVh/VEfvBIEUKtokHV/rSWe2laPvqmVubi26B9rmVVWS85/3q9XfxQjlFlq08qPYNbbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9cBaJfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9cBaJfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D82C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739948333;
	bh=EbIlJ8vSfnsyvfLeGbDY2pmWBjp53O2VWr+pVx7w+Q0=;
	h=To:Subject:From:Date:From;
	b=t9cBaJfSFmir0Q8JaDiVQydRmhv0Mqgo0OOuiIPiB9pqqr0+ekWta0Qez/07UpXUD
	 XxXo0yJ43slDJBTtcgAf6iTCG+ECGV9Ni9OZdaKNmJOXSiq01vU3KiKAqWHbL27XCS
	 jxn6Y+QG3CU3FtwyDXxvTTMrlnwgEMkyF7yAW3ZR/38IyfX5L4tA5qVkRk94wqFQAE
	 NHp+4JRmqB3E9OVLrYyST0qaV+nBPnhvBh7dDEyEpVmu+PaTEfqqk3G8mxooigeAdn
	 fnXINE7YOREEbg0DhHE9dHLq2enQ61cpS0Y49BrBYMa29Sr1oYnqXOPHrteG1g7ArA
	 ob9y1n9vviKFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F07C021AB
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173994833361.32488.7518284466583812835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac97f9f251c96ef5157f680eed174790b0d21c15a238169359699a3c9e20715e
Date: Wed, 19 Feb 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739948333
