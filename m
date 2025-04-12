Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E364A18
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744465794; cv=none; b=TDe1XYF5VhBeY6SSXONUYPg4gtCVv27EerwI1swO911Uw/p+HgLQrv32e4sMS80OmrHjwP4KXZ1BXRKO8aKIx7FymSa9kQDRqoKz4CHrUnlpzGqdsKnCOv19nsJBgetIjm5ibOOxWymcpnlV84j7H8Z4JRa3x+ZX9Xa2aEV2mLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744465794; c=relaxed/simple;
	bh=2sy+BPTw+58L1vXtxekmbYOno2bhXhHXi3KufGH+UC4=;
	h=To:Subject:From:Message-Id:Date; b=b+h9cQcY4lDmKoeDLeJ6LHsVT+4iQHRu3gOYlJBRr1TdeJo/2mIaGM7B8EL4aJouXKH9dSX4RcwE9WYyoqxvkre684gHznnIT5HQJnJ6u/ifOxr8x+eCQxXdBmuTtabyNZlsoAwIpnoMhFlEx9cQ9rW6DGwYX+30/y8OUxoM908=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOXjMafo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOXjMafo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E91C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744465793;
	bh=2sy+BPTw+58L1vXtxekmbYOno2bhXhHXi3KufGH+UC4=;
	h=To:Subject:From:Date:From;
	b=FOXjMafom/SSosjBRSeBONfE+ejSEbrkv/SByGyO7dPvVRbxgZmWVVJi2k9paZWXb
	 cbqcR6OwZMvDtSWaxLm1wGFHgCeOSFz5meMIwmDeFEJm0ka+VlDUHuh2WQdhzkbJKp
	 FStHGnuKEBBx9jokfjPA/nbr4Tii/RBWHiCzKcTGmgG8YjO2983btFtI+1s3fT+6Kq
	 o6k4yziMBN82tjspQE7+kcWz6+JWl+6ALuVJiq5xaUUb+zqDkLWZPWz+k1KNsutMMq
	 XRDZhwnt5zqzNN/QaxD43rSl4bPqiHeSAWwLvxY004SMZM1UbvWwFq9C1ob+j/US+5
	 qP+HoAsHslldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2368C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446579361.31838.5337158092955463428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e815625723e300c79727f6de241e7c2f71584a9a84a5e03a2c8aa49bc94145
Date: Sat, 12 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744465793
