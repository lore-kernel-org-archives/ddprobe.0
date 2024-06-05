Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6BF15E5B6
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717618643; cv=none; b=HjAWZRhMn0zg1KizTuR8jjqd6wdjjNmRTYxHxJSOLOJJPM5rnM/KgY8oD+mf9mzgFTSVcC336skfVDaClcngF9d3h09V/EW0e5MKxsptjOzEZB3E2xnlATiYi7QkZqGnELUITEAFjOcp98zz8dR68AFfBDxuCu33ST88glDojNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717618643; c=relaxed/simple;
	bh=rnqRVrnu8wHm40SSLq5QG2zBltCO6wLFqEauJyGC71Q=;
	h=To:Subject:From:Message-Id:Date; b=dMkogREts50mla60aC+CcFTKnwVzjZnqwVoavUOuzOMjkN67hAhljprNvdJaz4bUuef5Mbgg+10ZfAAIRvYmnPag2xf1VkCfEnS6ZHX0SLVA0Ce6Ia19fnpSUHWFuLIEK8MVbfe/+xjcbSWPtjhaXx2Lp1MaW6fET3nqa5iP/B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KckzzT8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KckzzT8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC24DC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717618642;
	bh=rnqRVrnu8wHm40SSLq5QG2zBltCO6wLFqEauJyGC71Q=;
	h=To:Subject:From:Date:From;
	b=KckzzT8GAMPVN2Wvk0zg2f1ty4+a69qA6ue6fnmQqmIJybVYNgMY7o+0YHs/3C55N
	 OzlWMheWsmnpaMM3D9R1a2FBXiAhZId4qSvVLAh2hH3aNqtlV03wuBc5VD+jtfEpW3
	 NDoOc4QMV+NdP1ujdpc/t5kRtxTWzIkA0Rtb3sVXcrEXPpsmyjnyHA30+AIjtMnjlW
	 X/L5yqbxNRC6pIzJf+xQMtAmto4NB0OqiVACLrdTO4xJOn7OM8vAs7oy86FOWkHDql
	 hCEQtZuXqFRDKINbv4gRVENuQc3E5f4mNnYPDDe4hbvCjPeDe0UOIDcOHDfAm80EoM
	 FdPfBeEinNHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3C1C27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761864282.9667.9608677907427949923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911089b6b15064f28899392b8a96041f61287100be195ee5ad546156dba41f06
Date: Wed, 05 Jun 2024 20:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717618642
