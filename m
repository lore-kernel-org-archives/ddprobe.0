Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567E41A2C37
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 08:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715242343; cv=none; b=R6Txszs01VBuj9s5YNj3mQmFNjgoHpnf6lHlE/+QHoxOMcjV5NDEPrNSBZeYFEZz8izcaeQfGZ12Xo6ZrVjrNoN9NgCwH2tIImtU8MKCSxFlP60i1aDQrt1V36wtfN09i0qEinzefsBEFADMV4NY6k19iCqTrnj/x8L0AVLUuJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715242343; c=relaxed/simple;
	bh=Ma/a5tQrEHGJZeZ2oaWlM81fI+j5EgeKGEjigslPDfk=;
	h=To:Subject:From:Message-Id:Date; b=MfNzKOjtf/BVTgrc2S8TRkOgE6tRz/hVO/IYNAdtwtJzhN5ordUUJADn90zXdLSJqSblTshNc3JLmldvDLt7ea4K1uqtSBdOl99JIc1su5F+7Gcb4wyaqppSpWIdYbkRXJevl+thvoK0xUVLezwJ9m3OE6zDflcNXGk4xMTdOhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xer2CJOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xer2CJOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0417C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715242342;
	bh=Ma/a5tQrEHGJZeZ2oaWlM81fI+j5EgeKGEjigslPDfk=;
	h=To:Subject:From:Date:From;
	b=Xer2CJOt4z75z9wu+Y4gcYzlnFKkoyOsUVfOfDQAxZ9vuY50y3wT6qcQ+F96q+2Cz
	 8Uj7hBwClNuCNUSewhyIRPuo3+8OvJ8pMoCZxDUq0QgNCpIp4CGHOxIjhKyunPR/R0
	 tdh/q0BcMWRyqj2Np3xCUlxaT14gcVEmDPgZveR0pV6nmNEh9ORKNI00a7tOyFP2uh
	 OuRvmz6aGypG2r1FITxqzpZcquu4xVOt/AkDThOAUKu9f9CJyRYJK+swTMHOJ/6Kyi
	 a+ZTuh1wYq5zVELCNXLCwgmJf8VE2p2ILyAlTYEIV53/ovyIUSatMZfYvbJ8EQTKQZ
	 Y/5S0qNdw9MJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFF4C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171524234277.18334.7432910549479396125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3f7efd390898cde5eef2986daf798cdb437fac5bd72f95402ae38043a0d348
Date: Thu, 09 May 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715242342
