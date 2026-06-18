Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E223D6CAA
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781769394; cv=none; b=OKZyXlI5Gx9NgGkCOxyVznoRTJDVD9Qh4llU91LETIeSpFGHL64Wg8XjD47A3KeOJAyVTbsujeLobmqoijvx+Cr/keM9z9xTLzOvJmal1JnczWTS8No7N99Hdo8yfBU9lVHxEiBy+5j9X6MiCDqh1fssZPLYnFvP7bioUTv1BYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781769394; c=relaxed/simple;
	bh=wJPJCU8kJ6EJe11DLoTgUAaItwlV7ap8YNeDPdA38Hc=;
	h=To:Subject:From:Message-Id:Date; b=nn5Qms/W+waYyLkZl18DD98D1sXdhrKlTVOF/NP3cfgvlQXkpESjEr1R9r+0dNOHIbGCEPlE9HaY7YgnekGcBqseB4t9yBPjsmOwdc8TOyrwf7+TvQrxi7AvVoTO5ILRXMviZNiqxf9l0u4colWNkSqoE832UQEkL+tbh1Nxa0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRwJl5+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRwJl5+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA579C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781769393;
	bh=wJPJCU8kJ6EJe11DLoTgUAaItwlV7ap8YNeDPdA38Hc=;
	h=To:Subject:From:Date:From;
	b=eRwJl5+Xw0hugDbC9jR0gTXRO4YKcwMv1HOA1KmNKNEGhxyuO2W0TYRGe4OHFzttD
	 XnNkq3Lmn8NuH6VEKb7W2iO3BZbsfobJ1acmCtXMMFzPk2FvVzOZPvUUoOWDq6JPOI
	 dSVXlGjqL+VAWRQ99CSMEG8XPSjPk5DT/i24YABsQN1k8/Rfpuza/s6CCorHa60l1A
	 dRqND3oXffwCCaoV143ACBDcSI5CDog6TTx/5u7HW0PyIax0Dflz00oMLe/NzJaoNi
	 hI4O+sbYGW74Gzlqn+t4JJ65+ZN12JSJrABG8A1Ywa3/OYRNw7//oMpt/LA3SZ/auo
	 qXt0bqWceCsPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB199CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176939369.5396.15927965880571241268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921db25659f43de4da4f77d7ebb9e4d9f0c9e9f061ac26c5a8db0283907c7582
Date: Thu, 18 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781769393
