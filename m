Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D34C163
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744581595; cv=none; b=gZ3jlI3Nr2W8lvXUN4VJQFy7t8y5QkKZD8FT5rlyjn1ewbOeszA/emDKGlZn6Op7PTAQpxNaMsmESQUIdsfOFwY7a46IlJ+EPL15wbNHTiSHje2NUs9LvvZTji1l07bnGz6ZKQSkSb8Uam+y6Wf0yY9F3sluGBnwtbT1Iv940QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744581595; c=relaxed/simple;
	bh=8zg9vZCO9GeW9/U4nvMdKmTKvrqZTx/EcsG6Zh36FP0=;
	h=To:Subject:From:Message-Id:Date; b=Kqw15N4Fg1caRlAttyW8ThtHZeFypTks/A5PhtXWuzIyXFW+UHyfwzHoUlqDhGHCcQC2U+5VS08SoiHR3ZHFTmr6lZjrLM5zuqDZMXEbmhRFWwViSykA5GllZgHnPyY0MtfRbd4lyeU+UH/nJ1egzk1a/NAnNoMQgcndSgpijJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkVaMG+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkVaMG+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F81C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744581593;
	bh=8zg9vZCO9GeW9/U4nvMdKmTKvrqZTx/EcsG6Zh36FP0=;
	h=To:Subject:From:Date:From;
	b=GkVaMG+4+4I400vB0UAflYK6wKGDrKCz7bA41uGXJ2f3t3Y3xEbXRtQeKFssJs8U/
	 ZIA7lR2UKycQwfEhjeaJ5xJSydpABeYc916QSJRPHhEN3gu6nuY9o9TBweoSwoC4lR
	 cJCaS4V24Q1GNMS8N9ZEYlSc7sJ+iW9ONH4EabFN6ATpn+Ymq3R+v5L/KAL+GH0Zmy
	 NHraGvyKyf7Uowfp0MLfPXR+JGBETmqo5emIv42ngWq+3aZF3Nhb9AB91RJIkGu+NM
	 puz3zLkc8mFd9zKsPJ3uUlu53gpp+kkSGkZl97bR4tosh6t3ubfj22Ol9gWJJ1WpMx
	 7JzrxWz67kbmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E385C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458159361.2971.13939010617608905273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4cdb12863923c4f393dcd35debaf04b0186276e0db32c3a6cdb467db57106e
Date: Sun, 13 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744581593
