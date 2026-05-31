Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51725364EA4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780226074; cv=none; b=Ol948jSEZSKkA7eQPqmE/mUvFZCjRoORZj9UpLOosirDHDGUtj7prcbwQEtPXukwjQEDM83S72kM99mR+nwpntHs/aZD7uwiZQaVDCn8mWXvacpfa9w9cYszD63fzKJ9eUUkkJhhmqjn+1yvn6AB1A9AmnS5otVBPffXyIs7RxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780226074; c=relaxed/simple;
	bh=ivxdzRoyi70I/lhdkyOraP7KO4WQqL362RdJ/siYNSs=;
	h=To:Subject:From:Message-Id:Date; b=rwrsxKXzLNhjxglY5epEslylRlBEVUYLkY6/ZjYiQj3KmIrr5suJPJYvYfeYrzSxU5XDSxt0qZLAyJCJRrkKwkijcbYdbW2SUjdOtV8G+WYpFPNJt1WlkP/mTnyO7vIv2lgGQcLTRfGoaZOBBEHhTEhQp+ef/3YusK7pamCLvC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8FOCoN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8FOCoN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0841C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780226073;
	bh=ivxdzRoyi70I/lhdkyOraP7KO4WQqL362RdJ/siYNSs=;
	h=To:Subject:From:Date:From;
	b=d8FOCoN45ADaqY1wU/B5e0JZCQ+dMucE51bthndN1YU9ZN9vkbMfotHX/drqdwwJ7
	 tuKrqwHTsqeZ/U/GaW+xHAu9FcFYXuCh09Kzv3dbYOlE+1xac+xzH9nR+daNE0WWe5
	 umQKRViAS0qFaweNY73e7skzDnGXgO7OauTnuZ4YO2nf3f7hu0MkzEDxXSbhuiKRvG
	 nMUPGxQu4/w3EkQ8FOQsWnh9NPnxXwiws4mHnCwisEUDf5glgbHtgxs/qrOPQvfxtJ
	 2NwDwaBIVNPYlwYXuRQ/wVqCRYf42iE9HUHZmXTQxPaWl4zcUTr6JMnR/4tnx5LFyk
	 pzG5GSxFpCLWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE2FCD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022607368.28635.5280202728977052841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed2ef51355903069655d21669c3160de8b5f54a9c9558a1daabb1c9d5039d8c
Date: Sun, 31 May 2026 11:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780226073
