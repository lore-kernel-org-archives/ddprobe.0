Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B3B632
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754271594; cv=none; b=eyscU8HdtMkHvGLkgSNZwrRlXUWgijExvyIcXqjeWmDbtL/DtPvPIa5gvqLevUvDsV9kemqcIw+Laaq2Qi4lg6MP3USJoDdnzklKiOZgIuZsTHsJvqOVJTp73fnAGPb1tV2j7UV9f9kXj+8c9LzWH60m31tWHfpQ6J98cdz7A7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754271594; c=relaxed/simple;
	bh=LJLP1JyKhZSmzJAR0dVrCVomdwxQQA3SkB5SjOgGyww=;
	h=To:Subject:From:Message-Id:Date; b=WE/KCo8QgHuzFos/oWnP1BjjzXpkSWZ9XYUh+5Qw97BhJYCqCzeZwpImFzIkYTiruWZcUuXnlAYZ3KWFI70CTRhdcQWvjcKjg8/Pb0t8jW2KaCtH1nzZTS3+EbwYdjYqYZ+GZxCMKiR2VuPnTFplNT9XqSciJO5N+ZBj/YJG0xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Il/naHjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Il/naHjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D4FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754271593;
	bh=LJLP1JyKhZSmzJAR0dVrCVomdwxQQA3SkB5SjOgGyww=;
	h=To:Subject:From:Date:From;
	b=Il/naHjf4DCNKV2ANTEy/1lURv1k4Mm9N/Ql7aUYLHcDSyvHkeWZEZ1vmsTuyqBoB
	 2x8fBLrrLvUNBcAZTHgsIY0cGym5VdNigcDO/q0DqFfFzSbMU2rnSmjg1lrZ9vWXaW
	 JlzjorKiE0ypLZwNj5eO8Oeb6pNVv5IpC8kSmdnATK705GQNl+uBG71F8Pt9zt8G6+
	 tZtsjAq/XrMPpG1Rl17TCRR6hd8diloz4sjrBdwgKYc2nV6SE6JgAw0LScnAz149iz
	 yaAbV4ubfTj4filj1kB30C1ezuNjJAljsVf94J34P3zdrWfPyY3YuFmHurLylSx5ja
	 S9VpzaqEjI5Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAAC87FCA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427159358.23187.7082471302507310130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4cecdb2a98e0da096d3d7d22294ec321d742ed00ec7741a84d0acc0471676c
Date: Mon, 04 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754271593
