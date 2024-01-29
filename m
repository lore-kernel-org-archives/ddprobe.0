Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A348B2E834
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706560696; cv=none; b=Xcrssf35YGFQvjaEOHrRysApl/yHM/K3wyYWCSwNEwdzeTCUjSMdCfV/KtGb4fOflsmFiTNlcMFpSz6VGYZYzKBV5yDB4wf0EGhO14bHXFNwtBNhKg1qyAVIFpKYKqRPA1O4PJ6/EnPghaktBWhJuu45LKp1M8ttdaf3LwxA98g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706560696; c=relaxed/simple;
	bh=NWIfT+M04K2lFE9HCR5fo8sVXUrewopef7zlw0ofALI=;
	h=To:Subject:From:Message-Id:Date; b=lOZ1b9fgMKIqJJxSwZ4ofrwLWMooRcb4NQUY53hfhRDyWHtZZK760JzZii11CIimTNjz+oFrdBmPg6hWiYvARhf/RXlIK/SRANKtXulxlwMO47BLZYPiffx/OUOJ+RVW3zrIGN4ijibSG94DIizsBJKzNrJVnP+18vQd4RDdt4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wg3zCqBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg3zCqBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786EEC433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706560696;
	bh=NWIfT+M04K2lFE9HCR5fo8sVXUrewopef7zlw0ofALI=;
	h=To:Subject:From:Date:From;
	b=Wg3zCqBIZKGHmKLxA2/fMaTI81W/lVTcC+UYfj/ubIaMp1BbE0CY/HgRo2fB7d9/U
	 1qOidIhbd1cbnKMqxa49y+yBVtRwDkEs+9BMeRynYg5qyz/9m7b314drQGUjXIlPjL
	 AaV/FFp7qiRVRHd3yVMGoUWwrshZnQsw5TxXYpM4Jtij67dkd1TC6EBd0blpXhy57z
	 K29Ybhel7CTSgbSoYIyn1QVOm0njZCoI8Rlwh8RykEu/gdJ4X0GizdyiCHGCP1K7IX
	 QwTT6QrqzoWRPKzh7B0YyApBQK5gkYVggTfnhOjHaJ05YVKTYLMSmXeLpEwY8DK13x
	 CDmNc2DQf2pvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0CAC47DA9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170656069637.2222.10739555613642916639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4755c437517c4e4c2f6f1281bef95790f9f265ae33e6ef56503223483cc9013
Date: Mon, 29 Jan 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706560696
