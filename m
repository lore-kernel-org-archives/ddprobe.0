Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5169F1D543
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720421783; cv=none; b=FL/WRGdIL89EqEnsI0cbNP9qz0kVJ8F8nlYQxDYSNJTE4u3iOTpsc4XQyXIgf91eefXlVC+S7/JZeAGHtDG8YODeD6TvP6gaASJ5clEKop2MnA3wcCL4I2okv/F6qKQJKB1xUuGbporVFvBu537z4E2jGpoxDd0QYNpMYk8Ai5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720421783; c=relaxed/simple;
	bh=6LtmANBX7Pvt6NTF6nq51attu1ulBufEcar4fyG5zmg=;
	h=To:Subject:From:Message-Id:Date; b=JrOosVrOkvzlDTdYkTLX/q9qtNHhCNiEI1mtznuiARc91J33zH+A5/q4zAhvnYcgaE5H95QKbte5QK7/0fZTJu7XIsDlI/3uxDsLMdYKP9ONSIP9vZQ//dK1KjLbqLKCKGPhPa1a3yEongvjkbUIjukd+TfYuPt2pwB8jc8xH4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLU6IbsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLU6IbsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AC6C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720421782;
	bh=6LtmANBX7Pvt6NTF6nq51attu1ulBufEcar4fyG5zmg=;
	h=To:Subject:From:Date:From;
	b=QLU6IbsKxl76C05FvZegOhEdKlVwCZI+qw5oMQgkkTDNLiJh753BDqjhQpFyF7t6K
	 TQguRO9Dz8faN2KK6bovF5m0vIY5kJxHooBnUp/QG6J3/H4BultJYPGuZkB6belsST
	 9F6x36e+VSu4CjVPAN2pAb3xEAsRNtCtRS7cxdm9z9lYnSVsNOTpgZIh4dm3aR716t
	 SChPT6ItTJw4awhvNX26THODi75tw5628NBxez/k8Iur0OJ9fVZQtgeESz2WoW5LRZ
	 7uheAwRFzmYWoSqRKppnck4gCP82M9kUV2f8MjQsqPvRhogUQMHjjQqriV89Eh6/tE
	 Dj++8u1InePhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63BAC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042178277.6147.5975186169351781569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01a6a457d0f242185f92e88ba8bc4c431a67efc9fe329486f7631dcf321f981
Date: Mon, 08 Jul 2024 06:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720421782
