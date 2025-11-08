Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20075265CD0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762571994; cv=none; b=SKK+0MHrzdK52eyjQM/zotzjPuGgqGQZrN0RJdQryY24xBUqXIdvl0+BY1PxNtBGAcP6Y7+1FV+FJ6nwmF3f4RXnNjBBHhYkTndtmm5lT0Ld9n4HIY1jFXgiDSwaHYWBjYunFf7DFzYJv6S1M2LTgkCFxSHWwzlRq9tFRcuL/o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762571994; c=relaxed/simple;
	bh=Sj2uimO54+BNIoYcr3GCEfiWzEzFYtGP1JD83eGNZjY=;
	h=To:Subject:From:Message-Id:Date; b=puSSCBm56wxWckKoAZhwUUHqxDVxx9zIRb6h4XHosGDcZp813X9ysoEVLTgjWDyUlEIrm1I/FDBUREjzyUozCLLxOceT8QS0Y3+IPIL7OBziRg5ddB85dEfPBe4/mU7ssx4MYsYyUywEeyWUB/h/2/RHe/iwKdvO0xsLQEU0Uts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbwgIbRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbwgIbRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1569C4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762571993;
	bh=Sj2uimO54+BNIoYcr3GCEfiWzEzFYtGP1JD83eGNZjY=;
	h=To:Subject:From:Date:From;
	b=MbwgIbRjdZ3ajoFnzOANe+bn3FOdK7X+vEjKK68OEVJPjaPuSx+phFx/27SjJKvo5
	 IopBWdS9QFUFuZoQyd+ZZDC5IHMdT002AajLJ89hx9Mqf7j+7V6+yhdnnXEtwon7Wc
	 M+G62ZwdvzKExng3qW0/R9dc6gGAm0u+rlwQzhVA035EeLEgBRnxHMw00NjGBcqX61
	 g6OuJdbbQ48NPVQQpCIKReaW15w4TwYxezXztyKETi/X0jLnJ29505BGq36NV++6N1
	 1/B4KO874JyNfc/rn+/f+GZvY2A2orvGvDRHPPdwYllc3RUtyKp/aQEnWBRUYm+R7C
	 Ta2ovzp5l+KtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95389CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257199357.28893.6472173177479083134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7ee25531fae8e3f8f7624c96ef601309ded0cc3e9f9e7e8ffc76b7d03cae07
Date: Sat, 08 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762571993
