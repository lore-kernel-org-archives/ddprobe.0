Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B471E39CCF4
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789741834; cv=none; b=gklibvqbnzJKR2mG9HcayfdQ0lnn0FTgNBwNjNePAbojzJpGU3kF0ycvdXU5QxTy6w3Xm9EOFutd6g1cyADG3miocdCkmEZ5KLZCoYhX9lRzn6vlN54bWJdteaHqR9Me9Sqz71tnYCmfsrUJtVzCzLw6n5gwBaVtxlsYM/NZ6Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789741834; c=relaxed/simple;
	bh=8kbKgeEI9InDYD6JesdbJ+nAlXiH5l2ImTTDuHuhBss=;
	h=To:Subject:From:Message-Id:Date; b=OxhY2jxfl4yFSqyRb8b27TNnZ6RnSsPGj/7utR2vDxxPEVJFZVWRs10wYKAF7HhuxT2kZL9zSIS30cir01eJV0ddjqkQ9sq57WuhEFftdyQJlHd+EPQuh3ZOwN39/udGnHe+KBrC7SodCWzH5//ZKERnsrGb0fPmKw4M1xwB1F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMPp/rri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMPp/rri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D306BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789741833;
	bh=8kbKgeEI9InDYD6JesdbJ+nAlXiH5l2ImTTDuHuhBss=;
	h=To:Subject:From:Date:From;
	b=lMPp/rri/lAB/S9vF6HQEObzbMxuVS1j/6vGFn/5tu1Sga6G5uR2p4NVt2x92Y4Px
	 y/QsD1kljv0WLKhcDGpod7Iy6kUuJxa/NfXM2LQMtXtTLv9H61ShVCopqtSCCfb0/F
	 oMhKQIJNK2C6Q9RtUIrUqO9mKBU/06C9S/Z4vL5X/5hoCCl3tIfCa7aAAwXcOT57sl
	 C712pCsFWGFzg8sr0Fj7RghqdMKsFRAgYaSvtjnMrJxf24B4zECYpR3WRWBHPuhZPH
	 Yy8Q2m7BLAeHfj93cY1NTjeuUNdsO5yqzrlnm0k0LmeM3O5pTNRwdaF3Ijwc3v4C1o
	 LVjqGiCGQ1VMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACCBC982E0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974183369.29145.4997119324321846275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80f235e062481dd219ce08a70c31175bf6ab6f803f350c5125577ae2b268b6c
Date: Fri, 18 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789741833
