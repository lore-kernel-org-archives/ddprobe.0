Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C69C1B86CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 04:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721277923; cv=none; b=hRVEqMSoV5YwEJTFxPrB41vW7wHyrtJmGqb7wXjZ18yhKfH9bS7r1gG5V4AXY6FM52tSnwYJS8P1pACfw3bHTNRHZdLOn9QH5xcRQ1B7N53Aq7bfLMoXH5VPl94EtpYri94iCntkvW05ZjAnXA6JvS50bk7ytxRiQiJkgM1W3i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721277923; c=relaxed/simple;
	bh=pMj/NURtSyDDswtZgJvYIQqH5hkhD+G/QMzFn4HYDHg=;
	h=To:Subject:From:Message-Id:Date; b=FeW2Ou51i96uWdqEGn1q6pG9f+NZC1pkkoIJNHglA0eOqbBda8AsqlzYUAIC6yL8FyFXkMyN5oORfl12GGOpEkbi/ZxlZflJZOsdfFhh9nBdq00RX7FAm11HLDjkGHLSSlwdOM5u24trFwYZ7O/ywPpoTFPf6vQ1FcKRJu0q2CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fcpiobrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fcpiobrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0388C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 04:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721277922;
	bh=pMj/NURtSyDDswtZgJvYIQqH5hkhD+G/QMzFn4HYDHg=;
	h=To:Subject:From:Date:From;
	b=FcpiobrkMDtzgKxH4khESLXo68CA7TpQz/vvMla4P8tK2cYy8I2XVIKEh7NLAI3+H
	 K2BGs0y/wOzZDfgqa/LSgj05xxc1B7E/43RSE4MgOLXB3hooKpN4diicibq8OZwS3B
	 hwQ1YMYCcRER+a7B7kPwYWXNYxacuKEqYtbFoWCL3eHYYJ+ujsR/VIlfba/ykGoD2O
	 DRpo/hDAic94tCUf/dCjpratnMr6o2gARfgYWYc0q5YpeHugDjTHQttxJB3yrA3rs1
	 Q49p1VMaETq7XvJG8ArQYDoOVELFrhqyjaZM4QiHjHP2emkhBYSujOHKGOwDcNAVvu
	 QSfrNOB/y/MzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE236C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 04:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172127792276.20274.179413927546643887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5bcaa8d51f9a3f5e53bf134d3a33bbf80fdffcd8a7e0823d0abf1f09dd5caf
Date: Thu, 18 Jul 2024 04:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721277922
