Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F005A33F6
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706320097; cv=none; b=hDpm+jMEFlOnnEgermP9AeQ7p/zx/OjcJi7yYxLio4/NKbraoPjJbPSTaVHFjsYldMJucNHMbXvZ5hVDarfh5IvWK6DQVYYBL6EhMdF2o+8anhIgoer+ut734kq5aNtSWGcic5MV+kJ7a9WDhKzAMNYKD6zVxUHSgyI4vxARgso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706320097; c=relaxed/simple;
	bh=AsHJkR3GUpPV+dOOKKWynuAVWUNlW1swx3wsoVpGnfM=;
	h=To:Subject:From:Message-Id:Date; b=mVxfE49qS6wdBRFW2k0EFLIf6C8dr2+Gs3UmZRPePEtlUa67jYdNosW9MtKlXQ4iBXVxrKlfkdfJGzq7aXaAgePyR74XO/exlBWGdbzKt46eaINYGQyfoCeyxFadTj/qaYs5lQ8dojz1//OrX7gEHT6aDFdyXGimCKbvSy6Q7gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcup1cQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcup1cQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D355C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706320096;
	bh=AsHJkR3GUpPV+dOOKKWynuAVWUNlW1swx3wsoVpGnfM=;
	h=To:Subject:From:Date:From;
	b=tcup1cQd8Zpz6LoCFoPT0SJsMW8MeRpwOEhUZMwksqV3LtcKvCgb/UzhaQr1LV0Zv
	 9t9vl5ijzdPLU4f6R9QtCvIXrEn7iz3O9NAlmeGfIaECWR6i4GERiunFMe2l8T5tSC
	 e5g25zCZZ1RlqfhLBhELTCIKSBzwqP+3evHksK3RyNfrV+bOY8YG6SeBg49KyR6NQf
	 ZbxftineKBlcvm3J3g2cBFbO9CmG7RYa3gmu9IB0wg2Ifxyq5ovaSdCAkxU2G8eStA
	 j+ZN7ZGr26ihAPAtv9geTvxmKaj12QvU7Z0UG4TJaapkmgbZIknn6TfKc6lFGP3vjr
	 VvhSqNyGmeC1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F1EC47422
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170632009637.2580.1552439023161181444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cf8380b4f6c11fc2f1643b2522ab0bd843dd435f51bdfbc627587b76fbc938
Date: Sat, 27 Jan 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706320096
