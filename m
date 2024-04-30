Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D1818412A
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714508543; cv=none; b=Q6eCeomgwjky4KmfD/kwjbMNUqvfogdw4o/nd7eJm1Y257XMV0hRuucC4sOQcnxvh/WBR/CQjVwX+nYZtV8rWkwBWXzwJYbpwTGT1cs8JoSTmwfIhJnysPdRs3ALlsMt0DT7YR+UW7jooPNZPcSMx53HKzmmmLh18upt5zWW290=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714508543; c=relaxed/simple;
	bh=am/wBkfcAOaoVPCaoMlApe0URCn9Azn/GGDiI3x6LQE=;
	h=To:Subject:From:Message-Id:Date; b=crovvi+zKDzUiw1P5Xs11MRbQWUuEyuCJII77ORRq0DGfex5brJNo2heJjsCW+hDlWPpu6w6AozpxtALAAVhrXCww+Wh2nIPZLuzVOjpv7m/ADPQRNvomkEVMv7Up0so1YU6SCFEps+AW7OfsRz1FxzrzQ/jJb34GJk8nayUvjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icUISbft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icUISbft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0CBC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714508542;
	bh=am/wBkfcAOaoVPCaoMlApe0URCn9Azn/GGDiI3x6LQE=;
	h=To:Subject:From:Date:From;
	b=icUISbftePiv7EEVge3lM0/6nRezu59jF0eZ70l8/7e7TpfCTowBweqjTv4g6USo8
	 2lekD3WKfCxkVjkmfbJ7uLN1oGn6st93Z6oseAb4ll7Ac5dUPU1HzvUAlzC9wyzJkO
	 Jja8/cWJBsmOrrCXLrV2KX7PIk2kzVyTsNsjevA5vngh3ZZY4yGEs612yiwUUzHwy0
	 1hVdpuDBOly2KRLCAHHE1bqdrS7gsSA6n82orMAYTN7R9lMEjwKI6nsHcrETyAeCIs
	 49zeRvKrzmdnRI3Iiw/JoBXt7BlEsfSgvf0lTH5RLu23ZQElf72DfhQS12BtfjaBbo
	 VNUhKDg5S+bmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43C2C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450854279.21533.9342738613693923069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a054bc95488885dda0eba762e449d95c4fde8149bacf5d105802892413ce6cf8
Date: Tue, 30 Apr 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714508542
