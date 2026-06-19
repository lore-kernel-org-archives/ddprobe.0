Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2312D2486
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781865394; cv=none; b=dhVICzUap8BoZnEUCxUbyiby0I2JDL6XGeJuVmlxZps9fMHvNoQSKjmgc8pK1vxC8OIfR57ZGVHqvFs5bpOzEfCdzcd8t7IcWbMHWWubOZTJuGIK0u1P37otz9d4EbZXKPuhp/Sd68mpDg2hazK2jkZShiKBs/U29bHKkLT/U8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781865394; c=relaxed/simple;
	bh=ni40J1trD94fU5mgG1j8aB3aekzC11ZFJKRTUdog9Go=;
	h=To:Subject:From:Message-Id:Date; b=qutylwPJMuwhBL2E/BV6sqaLuDcrkcE20E2tm97I9Sxn/x3biUDsXvx68QplKzfVcCHwH+BmQrOlVwXcLPWnPP7FfyrokktshXpWm/olqv5ElhOy8S6xZEGofhC8lfUwwPbgvC5d+p5DgZQqDvZeBi7W3eREte42KkjW7oFVtDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHLxHwq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHLxHwq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49D8C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781865393;
	bh=ni40J1trD94fU5mgG1j8aB3aekzC11ZFJKRTUdog9Go=;
	h=To:Subject:From:Date:From;
	b=IHLxHwq0APGGCt8kyTWdw/6ehpxwzkRjR/s5YLvxvSHGo6DXipDK7Bg6Qugpki4g0
	 SD27gia8n0JhAitu6DmnmqlLcgtZswz+l/xgEpKo189nq/MzUHemVuNE76lUUl4Huo
	 tRmloDXD90SA4fTaA0Glm2KBj3CBnPI7IPQdwAOZoSIuZT+/WJTvsuFzj3IzVKZ1ql
	 AGuNzNTSArkNmUtthc4VY4b0BpR8PwvNZTtvvv9cmQDjkzjFdQmtY5VYfnNowS53+G
	 gTuFpr7YLXfYlOKJ1hk9GQW/lUgd1gKMWtL5AWEXhfvSh9dYoVpHgr08kBWF7REWfe
	 7XR7oxtW+Tkng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8674CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186539371.30177.18245855053594672022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55511e31a4960100f0d31fa42c70b3eed58a82994bcea8c6b3eabf49e3a0f97
Date: Fri, 19 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781865393
