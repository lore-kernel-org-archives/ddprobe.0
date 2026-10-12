Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EFF135A53
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791778234; cv=none; b=KBpHuFq1rWNjTd2he0559mTbqq8GG+jBxwZuM1jk5pR6Bv5/vF6ga3RtuFgqrCQDGOt4RD3++259/Ikuxp/o/HX4cuAxm6chnD6n6mFPXo4sKDPtPBC55QbwqdV2eLKQtLUCLaGST/jEFWYCdwnaXMUcPbUSRlYZcI/cTybWxyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791778234; c=relaxed/simple;
	bh=CzYuW8Jd2oGcaRRGpeCvn6ug8HOvJYdfuom6hgwfYHw=;
	h=To:Subject:From:Message-Id:Date; b=mJfpfeG8ksgM/qn0n+6GQseluF5GHfQXHTLoBI1UTCQ/eJu37Jx5ScuNUlWDS4+uc9mnDXwtfd1Xn1mEUdHsWK2hrhKjei3P2pSjyNwrtcAyHFfBwoPg/giGfgIQwoIasJJKq0PgYyJ2ut1VpSwKhPfzRbwPUoO6tcE4gfeww8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dtnswd2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dtnswd2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D331AC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791778233;
	bh=CzYuW8Jd2oGcaRRGpeCvn6ug8HOvJYdfuom6hgwfYHw=;
	h=To:Subject:From:Date:From;
	b=Dtnswd2IzH9RD0NRR21J5pPmTLgTP/DsBPgYUDrg1nBqbSZLBQfD908lLJjweXMtW
	 NpdtkhdDJMpRRPGoGXSqt6njSBUMWykp2YWe8PhK/4NahzH7qZX3s5BIM02fM1rtln
	 j37f9tzchRRKbd33Wt3hCwsQmiF/Yr5k9xUGDrBvc0Yr/yml9pj9sNHzYXAt+b3Vmv
	 wtARHxLV9jDgOd4MQ0man0iwygJi3nEdFxbNHNKZNT6KhxcpU+0MleqyBozObBbJB2
	 CJpG0KOw19fiNXbx/4mgRwWRTJrbEUwhMCWAUL+MxrzfF5YttTcc8ajkxmxN2qxzwp
	 br93B2s/eeXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCC9CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177823368.29313.11801195018339140883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82652cf08705ca2fafa82db2190037e687c1eb82e1bcf050591ebc64afa57ab7
Date: Mon, 12 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791778233
