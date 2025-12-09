Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308C972618
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765267374; cv=none; b=bgxEHyFfEpfRB7CopMx4rY3TKrUD+WjjICFcVmG1RJ3ZjVbugaOhMDElFUkbLlq4f+nE6skTyupI8ZN2tkY/RFCcqD5agKkyh8RzjQFXgWGQOHgMNLo0y3VFy9r9lO4E66oLYZInE8G5DyAipDM9fktH/wVqyppvUbLIviFZJ2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765267374; c=relaxed/simple;
	bh=F3kVTn+tJwS2j96tOkc4VK+RaWTxF76uhraFMEsXLD8=;
	h=To:Subject:From:Message-Id:Date; b=MHAbh1jXE4tID3VGkDlppRHpzPRUcQI7ICrW7YK3rzNH071/eqYtStPrvd/GviHwlQ43IAgczI9mYX4IEU8WRRN0vUSI2jDlukKYoU1n+xqc7a6D4J3Jl749FtuXhZleOsO99rkI0psoMyNXQW6po93Pq9A6RuT9gRI5LO/8Mnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kt6n6XqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kt6n6XqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE57C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765267373;
	bh=F3kVTn+tJwS2j96tOkc4VK+RaWTxF76uhraFMEsXLD8=;
	h=To:Subject:From:Date:From;
	b=kt6n6XqFyr9vF28wrKA6CmtEad2XwFAMdLA6joTplOYvaPnfAWBS/ISlIRETbxIhA
	 ir9Jl9JaVPeKcoDPEyfvNLud9jo7npYSvMdUrJnOy4/qCZMuaPX3FM2SMZ2sVt8K5s
	 yyXpxjBuHdiqzsylJNoJIdqC4i48QMMgD0HHw2vWbCPj4aj6AtLw8VVk9Rns+Xmx3O
	 TPzuePFj9hDQExjHGRzadDX9l2BRIz0KR9U4l2rYwNcK/wYsvow0QvjnfymaLiQj1+
	 1rV1Y4bpyct1zRMDJbbnt6aFZTcAz95BbuBquQYb8xRIPgv0G/35E/6uU2w0porhzO
	 Ldgp7KgJDjbmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D38D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526737361.8876.3180434354371096815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f5802d5e33f1849145116266be04a0ae002dcf53cf606d2a7447b1d4db7205
Date: Tue, 09 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765267373
