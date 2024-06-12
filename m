Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1495816B736
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718179103; cv=none; b=DtUrjp3c+TJG6czofETpQT5BoLRbWbE95K1haw14LLKO2UOB5FohaLhoUaeeudyCqO0xBB9pA/zpEUShTxgm+mRH/Vt1EiyxlMLIMOmMmwOPMXcZUbQSvV9HjBECJoVAJGzA1i3yOSVSI3cJ3Exd9vV9bREEyf5PceQ5ImUdnNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718179103; c=relaxed/simple;
	bh=03d+/OBWIRQQIlEh3zIQeSAB0sLSMZN2JC1ncrK3SAA=;
	h=To:Subject:From:Message-Id:Date; b=jX6jOVMq/qllGefFn8b5U7R5QOy0hAtaktvN5B9M51uvHoR/CkFVFdvMFZ8vl0Dfu19HST2QA42W34cqOSZJkXrUcKV+p6jlcNi7yAQi1LbuThVuhQcQYbN8g4FFAnOo3LeeG3tUWet7+egLuXRad2Uvs76iSJ1k/jR+bVgSseU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N73eqDNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N73eqDNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E3FC32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718179102;
	bh=03d+/OBWIRQQIlEh3zIQeSAB0sLSMZN2JC1ncrK3SAA=;
	h=To:Subject:From:Date:From;
	b=N73eqDNQ5lgvoR9zX8TOVoNsnGniJDqtoAqmkPyqc+Jjz3o/IUGT+563AMLS4N6O9
	 ld2xFtNAD8wMppQT671voKZ/X1d0ZSv2mAToYlUP4Bz6lLnPghhVeZZBx0NLd7bYaC
	 goA21GOb0BbPOMB7xGr1WhrQuiLLoepTHGGnOTxFsUbJXMWSgOTX7+eU6xzGMLjxRn
	 fxef0vUEMS+1DNSxQa6sOh1z2Mu3zs4EG0p6MqwAkaKDWWuR6bF+9+AImRF6j97VWe
	 59MqsavDQWZrtI09luSn0h3is+fjLcdtlkoFEcZkZ7Y1OZH2qkJa08JIsVpSU/Zhuy
	 X/ULfCtvZob1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFACCC27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817910283.3301.9507532191009977690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f33d097b8199fa92e1c0dffbd446b69f33040ce35b93bb23ade400db2582553
Date: Wed, 12 Jun 2024 07:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718179102
