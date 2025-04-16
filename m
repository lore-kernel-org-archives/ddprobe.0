Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436B421B90F
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744811994; cv=none; b=I41XpkOVyK0NOABKDznyOZYzzBDSeIP/PoyvvlVUoh/Q1szvnSXivmhkEhoo+3bu6cr0aq40t6vFDkV3t/pyrMM2ZEX6T5iI49HtxTlEeu6WURXdrisD0nQgG4X2FVWg7TfIWsUxPdZDGG+PS98Qhm1qp1sJ+0Z5KehtMmTVWC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744811994; c=relaxed/simple;
	bh=19n4rv3XkjEwpUYWLvG77eZ80y0E4XrKMcvbJfz9+GQ=;
	h=To:Subject:From:Message-Id:Date; b=Gfn5p3kGjdoT7QjaoNAp+LtqjBMViNurJDWUJkgkRafgBR4h8idJLv0dSY0dB98cY28NDZtSPZyZNiqwmFDv93ML/2be3sB1UY5T6sPZsfuuVy89cdSDo0WVP7gYe5C0XBEnhsXF024Nd2xF5MD4qEkOZbTrSSqh5iTU3jcytu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7fTOaYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7fTOaYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB52FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744811993;
	bh=19n4rv3XkjEwpUYWLvG77eZ80y0E4XrKMcvbJfz9+GQ=;
	h=To:Subject:From:Date:From;
	b=M7fTOaYNtdnraevCfjf6jwbJ95WK057JrktQwKojgdcUKd7PdGPUOvFAjtxeSXTnJ
	 YmuiHJHwtta4jn12tz2klItoZpjbEr3CzxQiTE1trTi5Y19fuz6kK2w1ysFyx1jFe0
	 4QKFs4cK2ECwGLAWcdjtzAHfEAMWbwfcFsX6X/tFdoMk4gdz2EpLQO8bJ9m/cjSXp1
	 k+ZwVsNjJMhzgPPb54Py4zlpKXF4fC9lewJtU/nyrsjzecZ51Zkh9eyQnvlt+sCK+A
	 V5+Egx9HYZCIKC+uqm8qPUdc2abDhf2lqFp7tbRgkGLHerENoEiMWp1N9MRO4m5MR1
	 Al4iyKU3KFgEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A9C369C4
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481199359.12063.17631105123341480279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4f68db45a60b6d1437676e1acd4f6218d9f59f745d0068819cb22666df2aad
Date: Wed, 16 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744811993
