Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741B14E3235
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790776234; cv=none; b=U5PLD74SCKLrgz2SPxtBwpi3BMIRxyAg5AxeZiT8tza3PZX0dLkCz6xQb1JkUkCgjrNh6zUZzeHepT6wEgMZ7707XdLZz4ZFJYrGuxAMkWOSn5a62vtRsk+qaQPHsV/oxUBvmUxevXsuPn0uokUtV2tInDKFFbPU9AC2xAHUClM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790776234; c=relaxed/simple;
	bh=JpdLbbcsIJClg2I2YxsA1UO2hLKkR4+TwrXdBQfDqfo=;
	h=To:Subject:From:Message-Id:Date; b=fGR3SNHrudUgbjRTbuHslR1gr/wmPRfSfYMTl6oCV/sMBTjGKUbnCC7qZnIiGy2yo2X0wce0UdU2d8uIXVeJSLMxMSrpbEVKfFTrg9hsxoBhS8gH+Fr0grfLdCmQvZR1ZftEGbZdZcM1dQ5zarHrEk1pT5FRmGLUbRJDE2SnLoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkZz7ftT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkZz7ftT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFCDC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790776233;
	bh=JpdLbbcsIJClg2I2YxsA1UO2hLKkR4+TwrXdBQfDqfo=;
	h=To:Subject:From:Date:From;
	b=AkZz7ftTnKmkkQcg5X6MHIIsoXTszE4ykIUcdFPbeT01hVDDJztVVMRGTXQHCkkos
	 +W1NY+6x+u5mKW/Y9mlET/7q/+/iNFhnNesAdXPvcNso9v3okrJYSEQjEHnRwzoFs/
	 LBw8CEXBEReKwSB73dSp7rhUByxKJ6kuXSiJPxOr5BZ3zeWy9JoBO2QNsG/gmuZimj
	 uobZPam1N3Qq/6Mz+lutOjTn3Wic9g8cm1I4Grp6Y9GchwFlS8tuRujAKuPbBQPAIg
	 396ZQZBzRAvz1itTQZSxhRoO3FPY/75Buu7nhZ986LeW0XzIaC8TTfzMfhMQ9h2NbW
	 Fiv0/tBz2QSvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA253CA5FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077623368.21712.14054409412629564112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997cb7b6f7f4ff81a1453c5d504f2f24960f9b736c60680cc3e98963a4741bce
Date: Wed, 30 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790776233
