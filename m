Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC00367287
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787485234; cv=none; b=HEfblS/bYcuWyYSYjB5Q5eljg9mnK0Xoxdhmrh2dV8dpcfrAjsJdAUg/FetkwAzx1G9U4yCoyjQmrkybaTR+pGsjBijxdS1N9W18zcGfXp+agcN+je5IK+MIvh2vSelG8fkmuaxStXp04v55ElajCvfsBkvRVZqSbHy3GqlsPo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787485234; c=relaxed/simple;
	bh=DJORSr+o9lhS3TwMbsDQ4EUZ1F6bAtuyq0GYnSYbR6o=;
	h=To:Subject:From:Message-Id:Date; b=eqiK0OvieoMl06NnFtUcdvf4j6eK5Mwy90Y7xWSqXkmyAyeBVeEuOXSVjqJvgtsuObxPvARC0sIAzAnKgfkf9HFHDOtu5VMUVm3aTSkc9f/aywU6DmZKec62zA8rmlGkpErjekUMDGGiSGHiP+kPO/31f1xsYw8B0nyaS/zTYBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYL7k4Pr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYL7k4Pr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4ECC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787485233;
	bh=DJORSr+o9lhS3TwMbsDQ4EUZ1F6bAtuyq0GYnSYbR6o=;
	h=To:Subject:From:Date:From;
	b=HYL7k4PrM0KboMBO10KK9SDiqO3WCKfpQdRVcL5TtvVx2kTg+kF/PGqUG+j32hXv9
	 G73M4+lfsmvk8itKcY8JuhZRUfD41kxg0c5Ll6GRgsDF4i+omS1hdLv9oaNIyx9h7H
	 KK/iH9CAf5wX2DzfTC6YUvJDodj3F76WX25VmOf/5AkJbnkCqsaJmhByFJn8dW3/fq
	 nve0FVcgy7VHMO685TbVFYC7pZLaWcW/M3Hv6vaNQ87NAQwzlD6pN6EHL5cTBuL64k
	 8qkIm7cjTswtH6E8geTwdXS8M1JiBaK97tD5u5hcBwD3QKpSc0Cf9z9WHKvwX+MH0c
	 8nscsRw3HyfKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC43C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748523368.6884.13189599739364173096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b4fc8bf63ba1728026323ab1276cda9db296aeafaa64c951507bf9bdd752dd
Date: Sun, 23 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787485233
