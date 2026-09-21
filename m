Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A7435C6AA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790031634; cv=none; b=mENsJCxk53nDOGcCK0KfR1+87fpEPppU+6kyZiTj5kyv8dhuvxyiieDIX7zOJaq15Elgn+eDloCMZ++C+XUIqHJs/HxtTPMJ1CiYO03OcgetD3w0xGBDiqm09FcKC1Dtb/IDugkZXLgdEgpTW2Y4qTZYQq7sQG42TgPh6SwZIas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790031634; c=relaxed/simple;
	bh=bZ0CwjCeST8ho15/WnhPb5uObgNPBXHbXjHinl9ael8=;
	h=To:Subject:From:Message-Id:Date; b=kmOhxImr076PrHHuJJLxmPYx5olU2NFNczfkne3z/93TVgVlBkA1RSQ2uZp1kHdrJlzwZdZkPFL4OVWetBqzyukY+D+0HB2tGiasqAZeII0FaolbQO6TAcCjc585n3h4Lhgnh0cxMw4sG8DersUkTWbfF4PtdvjPrYwV0QiDAhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKzmOYMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKzmOYMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FD2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790031633;
	bh=bZ0CwjCeST8ho15/WnhPb5uObgNPBXHbXjHinl9ael8=;
	h=To:Subject:From:Date:From;
	b=PKzmOYMRNE34O632CdJhXfgO01J+rP3o711t2OiPBxqWNH1ejDqd5TXqqA6iVkE5E
	 3nBCYzCPgWv4AfqZ7HqMTRVDj52UiwaEmAD48WEeLmwvXp7z0/EYyX7ZzTRZgPMzyr
	 1YjSeVNXR7M/y8QAnacgFys6aGOCVENaZLXSJqoGFk7ZxwpaGpusjtzy11CSrcFb0f
	 jtcf4vtrWUm8OHshsUbhRSgQ2jy+Xbk+sqyAdMPxbbcgH2I3gsnbvbfS+9avU8FrGn
	 kncmJviVph+xFu4MLNAEgr0gAHUF+2lSzemh3Mu2kg7kPbHzcaZvLcHHJHfuJg20ux
	 HyI8J5CmKx0tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F94C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003163371.31605.9755144293569571619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380489375f56f99016000b1214d182951d240dfa01886ae15c7432b65917c602
Date: Mon, 21 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790031633
