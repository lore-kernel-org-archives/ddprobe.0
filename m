Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2309030CDAB
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778850634; cv=none; b=it85OQE6GkqcV3adYNInMUN78YrywN4fgq9w5bkpZWeNzrhe2zbVD5pk829jE9O4wH2zVu1/q50AySoqldT7jm5m+Ii9cOhw5t9YRMhJQts+E+6qzkf9//IlHXSKuUj3Mod/31JOZAv02oy7tBvBiHysIdF3g+bpVtNqjEy3/vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778850634; c=relaxed/simple;
	bh=hycH/6OSAsZbm+Ai3a4lJS6pWhGBIpSRRy9/jJkaKgM=;
	h=To:Subject:From:Message-Id:Date; b=Qiv9PaSccK+zf4fzPtz7+Kfcr9Z1hJ+pYDHQg/aKKOHQzhyXvKkoG3ib4ztcvA5ePvNgBosALz51NEIwCbJBf3TG+xQDonI6zh6dq77frsKMLbr3tUmmJota2d4LyWt1bDxQQ0UggF5HQaePBMZpeE/1mv5plaZmNmpfqZHhAok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4lvQBjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4lvQBjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FDFC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778850633;
	bh=hycH/6OSAsZbm+Ai3a4lJS6pWhGBIpSRRy9/jJkaKgM=;
	h=To:Subject:From:Date:From;
	b=p4lvQBjyO1gEyUcDvZbY5dxZdUcttiJAoA7cDh4+eL6qnaD+tz3krgk4EEQhiLmvH
	 sdcbr0Q8+OVQ3d2/mKNXWFH96+TEu0eE0WJPapBb44wPljQu5karpYehf4bZG0kuJ8
	 P4QoCV6kNTgo8GfoIsYGnZ0jYcW87MaK/iMyKWevT8Psy/sKfOVA3UOFuEK1tGolPS
	 7LG7pM8bgA7Zqwz7muQ/iXp53d/stzcZcbXqN8Tz+aBBFgFEYAnd2zCyz0AcWzh9K6
	 bjDLrerogP8DxmH501NmTAm70jvXO+l4SwVz5rw4VxQKZJ/VOqhfXh2SfUUFOWc1BV
	 hoUJFZY9txmrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8A7CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885063369.24546.18332993608111324824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f981d4fca7ce4d4bcca222625aa4b0f13ce78d9b5062fcc70671114dbd90fe83
Date: Fri, 15 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778850633
