Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FC7186E24
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726059354; cv=none; b=ScfjY3pMF5AaF27wpSfxTG0QneLNuoScWTH9S/+eTNYw8rUX/6p3bI0FKuKu38wf8vyX3kw4JaAPtqbusddlruC7/ebd3T0Keq+Teh35reTaE6mW/MFkwcEsgJADH4knf6P3AIFELE4Wn6JydmSg5ELYFc2XuzgLVI8qsxY3qDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726059354; c=relaxed/simple;
	bh=K3xwRH7t5CsLKWeV4HwjLbGPUxLNZI2l/h2IAFnzoe4=;
	h=To:Subject:From:Message-Id:Date; b=cdg0A4jnCQgiuEl7Gfs407la3120KCjGTxmOkqUC102ucalzuLcF/Ehi6NJST4SnkV8olMMWkYCfws999IjWnURknkM0cwLKVZXm3zTbuprqQgjSBZ6gSKyUORa/Kc74CSFOs1hOcYlQY4WtXn+LT4xUU8a6+zmeLmcZVbXuW2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBc0Qpib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBc0Qpib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D59C4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726059353;
	bh=K3xwRH7t5CsLKWeV4HwjLbGPUxLNZI2l/h2IAFnzoe4=;
	h=To:Subject:From:Date:From;
	b=tBc0QpibYO+kyYXqE6GA+7m251P6Le8GnGQzvUZRYZzU1+I6KEleRMXjVpgfPySPF
	 /pHRpa7103X84rIu37v3ES2nFWCKtNAlDt2zeX3NmtOWhI6KDaoXKvp6UWWlZIXU4M
	 dBs2K1MlfC4V4JAqYAIH8cQwPxkXPw12LhN1LfbWt2UXv65hrd/ZFJDpkJTOOVdRd6
	 qSg9ExkXtIw2pjoPQBXrKY2HwUgjEM3ee5svixIga/KMzTb7d6n8dRoHWkJd3EoUvm
	 AVeidGIk2Q3DDrYVL4LWVOSZs/1Nv2Sg4L7fpRDW8/5ssqPh7/SIsFiNdGaUJ4UXEa
	 wixlufqfX8IGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9580FEE499D
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172605935360.27385.16819865157254779831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30b19d19340711bd4b832e1af485776a738111ac22bf1b46376cc3d15dc6bf1
Date: Wed, 11 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726059353
