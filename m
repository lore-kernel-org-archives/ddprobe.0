Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCA429405
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732344354; cv=none; b=MASMTxrakKGEXj9eq1vF6kZL1AQjf4X0tVH0Z782YdHjp5WSCjfm/1BHl8s/vriKTEAwAa8sTZTnGgy7y+bTv2Lal62nVWx4P+w6Z4F+JO9Ox1N8AXUg+r7R/5pl9r9XFwODgJhPr9wo/Nds7bRnfAZXhj3SSBIUEKgF2uKzsWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732344354; c=relaxed/simple;
	bh=27GJYI4RAYtHjnB1PlUt9GmCZ37RKIzJc5BllxPdesw=;
	h=To:Subject:From:Message-Id:Date; b=o7gY279D94F7afAn+qjeTlxRGsjFhp7kWvidKX4OGccnTHlJxxJ4/xSiX5vEo359e8uW9BGAX4zAuGPvY7RJX8xUG2q16wqlho5aYzs0IHoswSztMmQEKdp6rW8twKiLFQXt0TEHVKsaLPdq6eYWeUcVJLEYwBCVynPmRAj0LdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQV0Ah0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQV0Ah0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5966C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732344353;
	bh=27GJYI4RAYtHjnB1PlUt9GmCZ37RKIzJc5BllxPdesw=;
	h=To:Subject:From:Date:From;
	b=jQV0Ah0S3+1gjqTSYTWZtNNgSODlACG6aFk+QbPmHHhhuJ2cNO2aJsytxO5ljVZ0V
	 psf68UtE7/2mmZaSf1x7+8UUkzQpS9/A7BMR+ErLRCWUqwYlJmJALW/8hzX/FayG2q
	 Ph20PJ+XUr206BayrZe7PDAhlK30bLkhJVYpxGmsaDZ1AOkDnYG32H20YqgaBJ/N2A
	 kijnJ7O90wPeEtfystZLyeA5Ev+ykDIWo3dfeWBEg2UMeKVqYK1U7j9hrCS0MkbJA2
	 V0nLWGT29hW/Zgyj3oEa3q4BVF2SY0CCe6AcyE9w0VCpaGLitrnPrnTCXCN5qk5eEG
	 ri2oUtGbKDtBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DA5E6ADE8
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173234435358.8608.10449257065925099483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f672cb810cbae732e30375637cb88dd5212cc7dad2b8d75c949895d302259a
Date: Sat, 23 Nov 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732344353
