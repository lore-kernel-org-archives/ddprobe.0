Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1272248AE
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759769994; cv=none; b=HnoCzkohl5pR/cJwb1xGjbGO2E1rus4SWwgSFzTzXCEMu4Y11Fzz70z454/cp3XmIdPgeBEsexVtu9jCziRsHl851S8vrNW16vmvRF4mb0NoP1YIUrl92JrJrzCXky2B2dom/L4v5mQcEDflzG9+Fi/IomVZHW0DvEzDJEBWWq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759769994; c=relaxed/simple;
	bh=3r3GSaV23iiolcB5bNX0xbidVpl/YFCJJ3wN55syn1Y=;
	h=To:Subject:From:Message-Id:Date; b=X6pPZqgFp66lKYSyakwjcNrZEFBb2jNHLvB+zj9v0eh6v4jUst9XqDHNbt1F284LiTM7t5fwgpKdHnwkWGB7z3KDZrD0A9H5F1eDYf+KwfJQJn3hNM8iWMQzvWzcT9W3S8luF6fjEDyC6/mfWEKq52xvUoAyNcleaIqPcJDEN2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzNxZVdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzNxZVdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03B7C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759769993;
	bh=3r3GSaV23iiolcB5bNX0xbidVpl/YFCJJ3wN55syn1Y=;
	h=To:Subject:From:Date:From;
	b=lzNxZVdv1v1RTrhO49ItiyPiVZaNDTuv+p6NSJkQS1gG6cOQb41fe+gUF7OiIjM12
	 25vrWf1S+x/3/RoQ8Yme/NyTyQFzlcx82/sZ5C8oKxK40ETc9gmO9HEh52zUK9/KrL
	 jjq5+Y0/n1T//G1G0pNfVfmoZ8HorVK3rHVgTfwE88FL0YPZsU1rM4GfU6vFX21FcU
	 Ad4ZZ0UhKVF+cMkqEgjUwbxYmGd3egOjPiwZ/TlnbVrkygWptB7vbF+SG+KMdhU74j
	 7w2/NyPvDFfi/LAcODx4dAZLszXxCGaL2sEx5fmHRTJuodyHbECLFQe1FSofODvHkT
	 2n3bKS1ILV2EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C29CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976999358.28370.3129637796460068321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d9f311a150be0b31492c460cbec12bcf443c55bd48ad1ce962b7fefadb542a
Date: Mon, 06 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759769993
