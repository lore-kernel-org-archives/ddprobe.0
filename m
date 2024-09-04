Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AAA148310
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725485754; cv=none; b=jwfuH2U+BuSobeDLf3kuYxSmHrebNSu0glUaSsm0Y2pj0Us9i27lRsQAtrVleI4PlUhjD0wEi2kfv7BKyzMIakm0xKQRAVv5U2Zfzwd7vZ4WQ+xF8wBKR8Pr+tkuiIDNIOUKnP79dVdCLd7YIYBVjHEk8IP5uxNG56zi7kgktOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725485754; c=relaxed/simple;
	bh=gfq8Hy6DABzBMb3q5Kt7oI06fcB25RwKNaCwknU15Lk=;
	h=To:Subject:From:Message-Id:Date; b=flsEJ8rDElX4A8Rc6yHnIw7ChWhKqEyYXJZ/L5rM3iKyo886tpevSW6E+Xa0KsrV0HgmiSaz0dnHB9vL+/BNhOiof2ZtvD4uH9weUZapOEk7vbJ/h8P2Z2RIpyBRxbXotcmn3KpBIqIFXNTuk7GaGsfINQ3qzwCsc91Y5+790BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBYdaObK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBYdaObK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1E4C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725485753;
	bh=gfq8Hy6DABzBMb3q5Kt7oI06fcB25RwKNaCwknU15Lk=;
	h=To:Subject:From:Date:From;
	b=KBYdaObKffDb0LMbX9jBol9FH1O7mDYDyNAhP32C+fQ4FilMp5Bh9EUv0xVlQcPF9
	 Bfi5Odn7sUz/TvUtdLoM2VFuPhs5WIUtBPkwAzPzo75NWI1Q/4YqyoMdbsEFdUlaQk
	 AzCXTwiT0eGHz3ejPs277U3sPBpDPvO6lpWB/tBxSa9q715SqEH5U+tvPGXzb+bWoN
	 2uuQqmMf2WAlT5VfQpSMQMiK/rM2mvIYXQv96G/aWLp/LO7kjETpIA9dPICTQ9Nvz9
	 QOPIyKEVqaIKXOZMXSVo1zPpwTV9g9yLAu6/4LXLObu+Oi9tXjz+pxi1howfPXP5DN
	 +jJfGR8Gmje0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95971CD4F3C
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172548575360.32123.10904262152429631729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f44059e43e6d5c50707e6e88766a681c40f6e23fdaf9e4ef37ca3ccaa6c9a8a
Date: Wed, 04 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725485753
