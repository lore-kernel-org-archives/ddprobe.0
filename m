Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3389E5228
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721592954; cv=none; b=NXGqWkyNfRJ/wfuwZXSY9QDDDlaSjtrJ6CkDooYB3WDGP/SCXvbBjbKXvzopBj09OEwUVd2DvuoBb50413PeM+VEWDMW9zwayGu6wGLQJCGeZv+boPGPD6PwQXAGhJa1AYaeBxTHAjfl8PPK+S2jJY14A8pL2uDG/G4wowMEvJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721592954; c=relaxed/simple;
	bh=21CXozqb7pKSH6sxG33/VLFTtmYitBwl6fufxPdAFWE=;
	h=To:Subject:From:Message-Id:Date; b=ZCEpQ7tttMJAGKp7Kg8HO3RF/mQO2Dr2okdl+TCqPYd01LAEKUDe5J5JeM1I5D68Jn8su9jUM020JIsNGNqFv01x3p0/vCbFu4ftCEA5W1dD6uQkqaxYbM3X49cUZhPZxnyg01bB9REvXqKQKKN3hBfyTJyWa34hejWG+uAAXto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyeBkHxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyeBkHxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B261FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721592953;
	bh=21CXozqb7pKSH6sxG33/VLFTtmYitBwl6fufxPdAFWE=;
	h=To:Subject:From:Date:From;
	b=gyeBkHxqfsBesAsN6oNVYHCuMu6o7+LJb6arMgWBBSAR/+53/j8BWNcMZAp9zvdLE
	 PrpIavODLnxbn5zY0kAYzwlOUj4p6xWOJ8dqAIJ8WDu9JJzs12VDaeI6Lbnt6j0ugS
	 S9WI51BIUPSmHoQmMYH0WgEw1PXOZhap459g4twR2fK372K4bHW1D8SuvMGL3IJXhs
	 V/YMxHP4ciPywuipo6enuWRKPDWijlkVoazmwTPsMiPizmx4h0bl+/84O6i+bu779F
	 +f2AYwB4Hu+MPfb3YlDGbaFlU83j4PvQE45ggT2rFsqsgIy/b6cguz8CfrD0WWgzVo
	 MtTIMC+tsflBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0BEC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172159295359.26501.7780759549275689043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24633a9df8ff056ee488428b3624072924659733dc7815482a6a4e1b3918aac2
Date: Sun, 21 Jul 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721592953
