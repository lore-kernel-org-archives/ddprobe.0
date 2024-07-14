Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7943971750
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720961423; cv=none; b=tv7rT8IGSH0sS/2plLTl97AwiC3Z2xpcFfVEEDQ/e2xMGQAUnZWmzFmnbeX4ALH/L3S6rOatUkSe/Dz8jWBqK9nGYVmHk37lVtOIKDY1ARXqUd2HHA2VvQ2ilJ764YRlbHy3kCGouVUlU3MOUhL0rEOmTd1fmnvdFTH676l5Yaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720961423; c=relaxed/simple;
	bh=L9yHxw7nyjwJByTv2ClZFPI3HjfqLkYJiLKE7Z2mmJ4=;
	h=To:Subject:From:Message-Id:Date; b=YLINIP8fPVTfrRnpyFaZTPI88IY1ZcxL4hUDzTrpj0eWdtBMsmup6JrhVtW9cT1KBpgOIgk6QlfaW0m3VjXeo9MESTlO5x61vkV4jt4KlQ5ruIjIoSSVURgeXI/+7y/r/ZAIiOwDs0J3PKTDBKLO2PSAc5HaY7O/c80DCSdNFj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QezDP4zW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QezDP4zW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE937C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720961422;
	bh=L9yHxw7nyjwJByTv2ClZFPI3HjfqLkYJiLKE7Z2mmJ4=;
	h=To:Subject:From:Date:From;
	b=QezDP4zWFZ3iJqBwc4O9sUFpUFnUARZdRydeHQ9xrXlZv+OR/73Hb9HqtRMvoXjRF
	 34gPFiY7sQ6oOlZKmRhu2ON1AzkUdR9cSKjXpkUwtoqpsjyazJrlKS+Lbw/uhvW4yM
	 8GoHJYfQHCGPSxTWPzoM8f+vTJmbAhkMUHdkV4AFcbmSOZANuQ86qyeqpgUrZlv6HS
	 thUttivd2479zYsL/jAdjzen4i4VyhJ0LsQEmJVkRsZznY6R1EsIZ013YzS1VsVyYh
	 FMKQhFq4vq8PBwfIR97082viVOZVtfVudEV5TJ4pZKG3aBoA3tvApZKP1spLcZW+3V
	 8wZB2rabq5DpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FEBC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096142278.28931.17060114936323944084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b918abc1948c26ab19ed309fc0ca915ee3631e380f1849b9994d54565321f9
Date: Sun, 14 Jul 2024 12:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720961422
