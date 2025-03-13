Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B01F267B66
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741868934; cv=none; b=Bym+fZp85TPEyDmEiWj20rxkqRQ5WXEEo37ZKFdGuiNWjh93+3aGTh9E9GrSnEUz4MPUbWSR3HdzFr8m1srhURbqcqx1hIF98GNhEjZHH4XPwTERlC4+Lw/yqC6Ml+Bkgucm3xLYsZHPC8HdQFGYVgml4NJe2nuiLMzBC3Amrls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741868934; c=relaxed/simple;
	bh=fbo4XXTPhzUjt0Uib399AMu8WJExzuX0fc1FXDOZh0Q=;
	h=To:Subject:From:Message-Id:Date; b=Uk6bw9f9nI2CKFOGsegZanVVrLprJrOLGB4yepLrBVZ9RutXqeAR1WtRVWLVnwueGzDIMSpFahHAxh+4C0WuOazz+1wEthCg53v0W5/lZwai/M2qFLsAB6+jdUZvpdJv+zSJFgV3WHnGduS1kbH4GrfHh+7/RrTSGbOMI94GStE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etgVVO6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etgVVO6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E78C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741868933;
	bh=fbo4XXTPhzUjt0Uib399AMu8WJExzuX0fc1FXDOZh0Q=;
	h=To:Subject:From:Date:From;
	b=etgVVO6ZDTXJk5afdkgbcp/PPnWFWcrB/z78lWrrxcefAFp1EBFn2L91dyeRVH6O8
	 k8C8ksOY//CXvk2wgfkOmKOFdrrZEu2DwIUWJy9/2QkZ7jLt7vWzceHzG1D4j/Fl0y
	 NUMwPieJK82QeElQISd1A1odzT6TnBXG35y7/k/Zo+8Lgj/lNpj2oSeDTmkWHU/ocM
	 WZVZ4+EAlaAS6+LtQprsR9gvmoqb+Fy6HrFgx3GrnJjrvlzKjZXudYirzuDyXBX4fP
	 2YG0EFS1BkXO21cMUU+8e6M76JTw97xA+k7vrr7yNMy9aEdB2cphFXwO2U40c4CR2K
	 uOmttyMfE1fzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB9C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174186893358.15210.9384738061805593223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1094c991035abe847861e51cac958584122711a33e81aa5e5da3847b975556c9
Date: Thu, 13 Mar 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741868933
