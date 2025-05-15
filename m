Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D058172600
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747315193; cv=none; b=meGltVlwI+HPRf7g8Z95gz5ERVdGGQJ3SNK+saFb9CM4g6coDrXIlKxIExanrQAetUhw4DPWxh6LkZBRi26GcH8IUsHdezN7mD1yonGAdqYFKwxpEUH5PSu6+zOfeAdIOlU/hf2bqtAgz+Q25C0Pttr9xolUIlEY0Aq5o5QZXmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747315193; c=relaxed/simple;
	bh=pnt5A5lWpvJeOIr6K9FftxVRPfAFMZ91w7wZKhsxErw=;
	h=To:Subject:From:Message-Id:Date; b=hhCKxP40Fw6fKO28EuNkBUKW4UZcbiubVKDFoBU8z8yrqSCg+bcBeQIy4YSIOvpveB3hZRernm5bCDME9pWst8FqCiZOG6puxy8v1vrORLOnQxo5cNh9BpMLnVCBc9n3nU6+CVE+pgsz2f/uCVIgVeCHcdrifFBE8b2hfK1T2YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpk0p5zH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpk0p5zH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35D7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747315193;
	bh=pnt5A5lWpvJeOIr6K9FftxVRPfAFMZ91w7wZKhsxErw=;
	h=To:Subject:From:Date:From;
	b=hpk0p5zH2VH5RYtjzYfdVQH2asqpwi5kneHlMOVH5edXxSKYz021ILpa0yuoaP+gA
	 eK4DU1YIfVIabShPtT1ZyjohBD8UW55RKqgFf2mqA8I1dNkDBKJxEKi1C6o8qKPaVi
	 NUfyQFiub+lMzCnwycQHfO4t3a4fjd//RAtZnGF6OucU/TUnvdLxqOLwZzxr74Ufqo
	 3x/HudN7Kub+yS2CfZopCcJhq2B2ktXP4iO2obGeh1fTluEqV1YkDm+10vvvP4xozv
	 8fwf/kNKQSIYIbxPRvkS8mFxOM7e/8o/EqjYJX8ZsLYWk5TXRlJiDLUy/V34Mkwi4v
	 /HFsGuj53ivdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C05C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731519359.7575.12382015473026900689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dded54129c2c82aec595722dcf71625a0a3e39868506855a59990cbeace6703a
Date: Thu, 15 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747315193
