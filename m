Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AB31482E8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762672194; cv=none; b=DWxAvjME1wQW0QES5HjQl2Fo648hXDOebee5P3+6UNjlYG8Ksz+dtJWFc3x2s9STEbhFYeFXIZkhZIA/BaDovTHhHaSMKWKvoG98mp98PIjGbs9sfCUl68KgX0AoqsLLaM1ZPXVKQXB+QIRK17AbJDgTYOQHOc6eHtSSrAswH8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762672194; c=relaxed/simple;
	bh=LHFvZdpJbHIxyX9J8Pzv9Kxx3cDRq3U1DieZuQ1JOxI=;
	h=To:Subject:From:Message-Id:Date; b=BE4l5gCvgVJL9cNL28cZ6P1cyP+jGEYfTxjTAmlcJM0d5npnl16V0UitllDeKUwWzFxWa3NDlJpv93yu+SUXkYmhBS/PO1RJdeNUwsuFXDW+VYPAGw/iG3+GfpGKm9wLdE22TWn0KZWwQJbsywj67dkC4aw8QtI2JyvB+7qrhOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajOCUwk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajOCUwk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B624C116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762672193;
	bh=LHFvZdpJbHIxyX9J8Pzv9Kxx3cDRq3U1DieZuQ1JOxI=;
	h=To:Subject:From:Date:From;
	b=ajOCUwk2eR++IYeNyQC64rlmZEkMSc5aACx9eD5aTN9G+9JUxxJ1HxN0dep+TYda7
	 PFIoVi7T6dqaFfU/4mExwSfALhQT2uGAkzhMj8eeC8CBY1En9/NXIHSzp7ikjyluJB
	 YnunYnf37q0pkoVZesc5FGjZ7D9UoteouzW5B3Tdm6KflzEP42gaNuiZdsVFWOM3Z5
	 D90QUwWLGLN/AtXb5rLkWcysx11ZKmUcfGYEEYux+cm/R0sRPTvX4wNEkGqfuSd5KK
	 T7HoRR3+B6Q1w1A4flR5EFMnp9CbyNfgIAYd/O9+nSLQXTae9eXio+IPgRmC+j6epE
	 0Yv6LAuPh2H3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47FCCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267219358.21359.7000781887889145958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20bd16275e4fd1380df228c23f2f06837cdd043bc2f5077b980fa30aa6ada9a5
Date: Sun, 09 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762672193
