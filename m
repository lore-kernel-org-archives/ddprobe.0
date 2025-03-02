Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3286A192B84
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740940734; cv=none; b=DFSu0CyPyE8QF6k9E8+wCzR4ZIuu4FtXvJ0SyehmiKXjqn6SPuHxWM+6HEuPvR9tKWWba61i4RgpqlpwqPZ/BvX6fx9VoZgHIzgOJQax8HcUGOzdg9zyRS4rE2kfXbspkIvL/YN5kok/tG4BAJEScbp7kP6elTL2jSQa0h7M/gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740940734; c=relaxed/simple;
	bh=kvx5WR/e9+c15H2qRifvnZnSlkIjBOs6+9cnc39N5nA=;
	h=To:Subject:From:Message-Id:Date; b=oALbJHw+fW8vjtrDKxX9jammMD0JOmYo2kxukuxDsPOxGlliersycpjYWOuZRBrLNSm53piTdk9mlqZQYTnSdLtOsSOcpFwb7t7hsV3m9J38F4Vz+qY3AxrUP2rCBm4tMwldszpkr4I1cUPg3/rptD2NSAE1KPZ6IPxQ38OAef0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaEBD7MG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaEBD7MG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA794C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740940733;
	bh=kvx5WR/e9+c15H2qRifvnZnSlkIjBOs6+9cnc39N5nA=;
	h=To:Subject:From:Date:From;
	b=RaEBD7MG0b07HByAXTa0i3adEeuIx2iFkM0ZHtNcvXN0G2AABgds44LjTzfdaGjlF
	 piWOoK6s4gKKsiu6vP0aQ7UwWSU8oPTgKDHPTrUZGGrkqRXbGQdUv+//R52tQCnae3
	 m1uZsBRxdIFXflSBN+arFpVZQD828NLMKr0uh2WtlyxrMLBaTOqUpTDDCMUh+xWlQX
	 fcAsfWyiP8i2F2GdV3Y5lBhjIzCvbnMd76zlYyqwyr2s73B94B813yuyKfk6G2hOQW
	 HSTKnm1MOw+cxaKSRApZ08L2MlfjY+MIy/Q23gWSpZ3Cy/8AxcGSIdRMFO2YaWrUQW
	 E1g1XIGhUBZZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CFFC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 18:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094073361.3110.6767039315454900450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d778e29e335c7e48e82eccaa9160c59dd2d86fbf9d37feb5dfe93434a173cc
Date: Sun, 02 Mar 2025 18:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740940733
