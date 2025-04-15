Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2544A20F081
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744731594; cv=none; b=Dt61YX+Fac3x/8Z8yaa6iimTPHOn9xyTnvZAm93CXYdruv8ivCcqSpwLQ9kBd04sdhi4qmUIpyE3ru8sI/ddK29emMYKZh48ntd3N2SRvCpBEkF+6TaC2o33KqMnzkc/f6oufApywwowG03CNysqn2XsRF4OOQmInLiXIO3XkZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744731594; c=relaxed/simple;
	bh=SPz2Y9H9xlT11bXja9VdvzwYD3Ysi2yQDr36Wp4VM0M=;
	h=To:Subject:From:Message-Id:Date; b=OIvLCdJaO7NY7KeIsHxRG7YAB4OizLaDRu7Ri48LUe2C8cdnFs5WmCqaRSBJuSzMWH+5wWZ8MHyBj0gtOPR6tuZFLD1pGK2p9Is2a3WFS3bzRVqUXxHinlWM1dwdstzta/MH3AHLuf9nF0HKwKSRQ/DAU+ab9dWVooD6soSMFFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5dK6mAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5dK6mAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E1DC4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744731593;
	bh=SPz2Y9H9xlT11bXja9VdvzwYD3Ysi2yQDr36Wp4VM0M=;
	h=To:Subject:From:Date:From;
	b=i5dK6mAmeuslxXlQL4Lz0ZCvEohqjeMCSBXnhOJoyvwcs/iKEvlkJ1RL3VOgbfoMC
	 F6gXDWCjU6u0ZwFnzvlowRRVi+iG+Olu/hJv6vrNZmDb3tGfPh3BnbtqPVrHYMBjQ7
	 psmRMk60uSgybT+mAP8ZrEsgcT3L52fmaGvc7yESpcTGvJJQmrEd5CJRhXeFjzUP21
	 uMQ1rYb8OXuHnQTypZNEmM9b2ailUImnUgwLwBILPYEyOzfms8hPjVRx5net0amy0c
	 hxByYJ/lL56OPcfqo8pLYV8oV6rzStWzuYlQOiPfc2yW93cFiJz5wKcHlz00JgfAvH
	 WSF9kDMYNNOsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD52C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473159358.28408.15823207350969113461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6bd791fafa8e3e1c196ab999f3d8924839c758455d8b4d82a8998de693c13b
Date: Tue, 15 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744731593
