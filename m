Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305DD274B3D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760371794; cv=none; b=tt3+SjgGkGUyVSEhETnnj3wv48jet+4f9QGuUiEvVrol4Oeysqjoj++fVyPMMQBCpsjNRqTOSxq5FVzEq4gBAbjRfYXJjZ90norwjytfu2cRvYpb0WgBG0kdwsSYdzFOa4L03KtdeeVJPDnOEXxkXLTSVpzPWZ9E9Nfzqe8EICc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760371794; c=relaxed/simple;
	bh=qEmRBPJOYyTRqWz/hjEv1uXMq1k7q092yjMNF0o6E90=;
	h=To:Subject:From:Message-Id:Date; b=UIZmuO12eb6RII5Fp2xUuZDGcLghgsU+C51hQ6z7/gkrQW+w33zcSo9wz/RwencjnizscABuDoB5m21w/NKfu4MIKqU7GtAqJDkqNm5Dxxj207j4fHSuziNFb57OikA9scxdXzmlQW/ut0bh9EBmj6IHolndBRbNU8eIG9u5Lec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTiiiE0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTiiiE0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A090AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760371793;
	bh=qEmRBPJOYyTRqWz/hjEv1uXMq1k7q092yjMNF0o6E90=;
	h=To:Subject:From:Date:From;
	b=VTiiiE0ZSMCHObI31FNUtdTCIMCvXA62xRfAxWDmcPwYy3+DMD482fyosb49Pi8IE
	 DAEElcra/+wqZoOvEBjj3TWHY3cWze1NsG7O6zKUMgDNqwoO8dDFP7JYFD6QxJeyjP
	 VVBYg0Xt329dcdzrhk1iXV/lKdnGZ4L9ddPvTS4amNsp4C3QKQxug9pIfwdKcCpenq
	 /m/qKW3GEZzN7rJPcqjRcsOakswxib/mRpkDfZo4Bmh9q2ByuVoKkDdY+UIbLDFzEj
	 GXFSjUluKqPoKv60mdFfNkVrJNVUOCkW/6oV4xBA6KuUa1Z0xskdo1goKpVDDer2FP
	 93+wee6XzRgJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E7CCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037179357.10342.1204360823946806741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a3167067242379943b222b74398b60cc3ce82393833b231098591979520791
Date: Mon, 13 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760371793
