Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5170B281503
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780871674; cv=none; b=bflJi2yR7Hm9kMVgK6HyKxAJaZ5N54EMg8WN+SqUqU7TYfN82m6INhMGhmRe/ay3YJEE1fRO8MZpb5GB3sfeyhqJYe8hB8eNYyFdLfop3AJF3ksiOJYzAm3wB8ocx4sYRZNt9zcz8nTnDZ405Ta0tb0Fp+77exG7C9ZyPsO0BpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780871674; c=relaxed/simple;
	bh=E0Dx2sGxI9H32zHc+SXF+yZRtiH391ARfnnNV1y47pw=;
	h=To:Subject:From:Message-Id:Date; b=ML2ihDBtXNQZGwvRqfN1Bn/QzGaOc68Mg1LfAL9Cr56MzRdu+TljUeNwGiwzyYTje2mXlNX15frSQmergycLSTtAk9tgy0Q35l4STLqk04p6O+PA97OyEYDEK5waARPQ6jPKnPWZP+5AWkKs+Z6wfUtRTvBu7smfc/MTHBsJpRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUqgdI23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUqgdI23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB77CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780871673;
	bh=E0Dx2sGxI9H32zHc+SXF+yZRtiH391ARfnnNV1y47pw=;
	h=To:Subject:From:Date:From;
	b=gUqgdI230TGe2qVIxCqkTIvA93gY8MXxOgUzMlLuAmEgnWK9Tn0pQ91aFbd8A6Wb+
	 wj3nKSc4SY5wpC+nK9EXaHUJAht2hqKfA73iNAwRO1DOwiZTZxg4XetphZk10OKonJ
	 O69I4u2PuEZS7HRVTNk6hYC4gXb2UIVPY7KTWsQFJ5ledt90QBXhcu5QzU3LnKEJbo
	 vd1vjb4VrNlokfsZSA0WVRAPE4u0o6Su5Y80wORCTTa3Fsr5Rj6FEYA6MozRbFA+eg
	 BAoJOhrvZxhWKyVh8FLUyMFu+lSdsV/wqwIJqY1MLRiCe/aJhWnBszGAp9U3FFlzJd
	 wr+qQ631ZjyfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3592CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087167370.27834.13772430146360165257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5173f6bad7300619ce286963451ecfff16d760d623f1cfe6a92d11137020349
Date: Sun, 07 Jun 2026 22:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780871673
