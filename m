Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA2411187
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751851194; cv=none; b=oQhRQ/YfEuDcghB4ZNGX2nIKv5HvSuPZ83kP0VROlloDwoWlm2y7Ms8XijKcVNHf4avC0CitDExaDGOfMo8zMSCUx1npXckJpU/pINe0IaJBaf/aGKraFuAbhNY4SoLbhol0fLUTXPlshUMGySKWS6bCaYl6f/Kzsuj0Ha8gm2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751851194; c=relaxed/simple;
	bh=bFRO07LDTna7lzmta5Rgv+Sx/TZDOY4XGzPcBJZEBJc=;
	h=To:Subject:From:Message-Id:Date; b=bpDPtH4mUzy04QWhizBzJkFBw2GuG27inl2uSYatX2ElLiR395IJNJJqxRhb0LTFvc0Kqb9OLaxFGjC5EXtTuXWvnpfwgWnDUlmz8Vs4fnTMmRwvRCNsUvzELl+yLvajF75bgbHaClAD9CavyY2smQfKDrdbaUioTgaAVWdj2E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeERHbEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeERHbEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F6C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751851193;
	bh=bFRO07LDTna7lzmta5Rgv+Sx/TZDOY4XGzPcBJZEBJc=;
	h=To:Subject:From:Date:From;
	b=jeERHbEzdwUENrj4PgGT9bJaueuoaZZNGee4ujcXwNDubHlREgtaVsZD21WTfuZjE
	 to3Nv3LMNIS3/sXA19lBA7BBb8htqkdYM4fzvxDn9glaP5pTs0QL55Jdzm/2ePpV4c
	 6UR47B9KucwppNkpoSYyWdLIwW1D/U8eKuw98/wPdbWn1bDhSFqWFfarXEpfH19WNf
	 SBY7xF2oLVzcHiSgJTYhcq9iFM5H+kbXvPzXopfEqhlsJVeyUKhx09jHMYsKzBRkb/
	 FvvVGko7SQb+PCBd8bN/Ngi+Ji+8NI75295slAqd3utzkbY5GMaFMF+Q0T/kaT7F/V
	 3lOcmKAxxG/uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD2C83F03
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185119357.14631.15939592187896078519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2508da2a667fec0817e15957f296d27edac3122bf7ddfe73f43ace4931e6ff9
Date: Mon, 07 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751851193
