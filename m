Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA462AD25
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758973794; cv=none; b=lCHRCgKoms+jDuB9FQWycYa8TqdosiL3zRT98W5gpddocSIMJTBj6Of2t3mMh4k35awwswjOwG6MNZMcLpxuVxMRrpMfRZq84OGG173UEiWaq4Wj1CcKd3HzP62Ew463iXx9yOxF2Cz28sKrL37llpioyFx4LvNQOmCfvJc4QqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758973794; c=relaxed/simple;
	bh=agUbUHTUjis3dv0SNmKwMp9eUnrSkYJldgpZyYD0kD8=;
	h=To:Subject:From:Message-Id:Date; b=K2OsfshordkGbPuUojzMj6OY/3V3YwDKSedBgB6glVCbvstnBpbT+dyienDwoShfNc+Kr7SUukZkOJq1wdW1BAQHKFNHQJ57xlNspo1x9WfgQ5Io8KPHJKNw+gbKzfgUhRwMRg6brFFse6OE0W2aH8Pu216sW4Qs8X/XCFx83hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFhR9jxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFhR9jxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB39C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758973793;
	bh=agUbUHTUjis3dv0SNmKwMp9eUnrSkYJldgpZyYD0kD8=;
	h=To:Subject:From:Date:From;
	b=tFhR9jxZ9jcnd7eIvDJ1+gOf4wtJoywwS0ZDjIHtebbS/k0V3XRJxPeHde4xl6I/i
	 JLhyVSFHYOJF1Mod684TaoePCYJ65GvVCBSjI3kRN805pTGAU93EzeLzmmczO3R6hw
	 46X1XVx9Myvoq6X1mmr3Lv1ouWZO3E81NiDdaEbbro9lfWxPdvYjKAN9sNhr6SS6vQ
	 zxA27rzZx3XBYED5SJpeEYoZyuI4+MqMZfDjrYKRbnDyMLfgtH6HKmW3fK59Qeoxy2
	 1kRikSgJ4RX7GcpJOsfur9ba4+zus6rv60rTet2DvSP+TTlHgWchEexhkAzE+pNN5T
	 EKjoIreE7Ay/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C91CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897379358.26740.7783206277365755625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f02aa15401b9f02401ccc66a0429b20b062b529539a20f0b81b4fbf6d19fe50
Date: Sat, 27 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758973793
