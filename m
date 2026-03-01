Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18767221DB1
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772355294; cv=none; b=iGRTQ7i8+Lu8jYQk6MgyeeiPlVR9ubKoRkc+OTKpcrVFoI8SkDSGHn7FKMU9CeIpyH97pm8a2EyBhES09VhqaLxk375ftC6yqqndtV3N2qMCjZU0Ga42WUvRgnZhjCx+8dNCt0L9Ncab5GsXQ/xFX6apifHHC9iwLR8ZhmN6UI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772355294; c=relaxed/simple;
	bh=hPD4vT+cfVpp3pYr/Vrcv3cPoSaHl6+GAhbF8Go+GWw=;
	h=To:Subject:From:Message-Id:Date; b=IFYssLPEg9Ur8KmMCy2QJ0D/c8szqWGm/8xRuLrqyS+bVPDHzC/n/yg1SHnWQzANUj3WynoY/vZcC8Niahe/nNPXjWHqJygppFdU17R7QPyHjgMDeMJan7vTuDdNZEPk3E5t8dRG8WtB5P5WRSvAOgVZXnUEe5aaLBj2S/RnSvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E26OiTYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E26OiTYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E62C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772355293;
	bh=hPD4vT+cfVpp3pYr/Vrcv3cPoSaHl6+GAhbF8Go+GWw=;
	h=To:Subject:From:Date:From;
	b=E26OiTYeafwYa1P9A9HscslvxiHzl5NLqf1O8Cmy3TBNbCIkXsI2S5VEwcKC1sb7O
	 1oikgU2aTOeOwqXD3jsDArC3RaoAqXfoffDcxzy6pe4rZy9ySx5Io2a4PgxUtA8aTt
	 Q8+oUqJ2u0Gq8noEQzRdC7PKEw2aVgJArayFjmgUmvggjAFGW/BNz+5zHTK0VKnFzE
	 Zn6BdHPH2Q1/FmB/bIvJB8HBpBTvX1i9x0I3C7y1lHKnmr8OF72uEScK5KpUGSx4xi
	 iPWJWDBjBrhUFJAEW6z4r1d8JSqL54zKhbV7kQ1meR/JDJBMQvLc9qhfWqcC1wC5If
	 KWU3SacHO5hcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00FAFD0040
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235529361.12391.1203700841016876800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9c6d0badea3a008e2312a09cefa4659308d1272511ae6fa689c883089111e0
Date: Sun, 01 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772355293
