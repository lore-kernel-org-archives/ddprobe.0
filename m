Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141F4346A19
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779339636; cv=none; b=VNumeq/Q1qIe3J9sm+pO3zuAJK1/AxaVbBfHKiBpu5SumtVt1VXgMCsr0mvlkpBtu7mWFNcGQJd3KvNtr7mfbLVhvgzEGm+QaKSWsOmib7G21fSXpit2d4D3bhVDl/Ad3zjHk8mo/k6dPcAKq7gW5reGxtmxanLsCbyRkKTf2+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779339636; c=relaxed/simple;
	bh=Ke1nPy3DtLJUcozi2AlH9DG+UyRHqn/X+9bvmX/i6Us=;
	h=To:Subject:From:Message-Id:Date; b=D5aHf9Qs3P2PMse1ERsOWIyhKWKAL5nIW8kDqShrrQucENdWrqLDexiYsZ7bdiVbU+Dw1cXGXZB9EMCTG8+YBaVkRMMzooHxDUAay7KsNSd2PH7RKDFT14j2RA158kvkRmCEOXiuaMDCwO2q1lD7/hCbVL+gaoXrcUlY3dtW2II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AA/6MPBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AA/6MPBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D582AC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779339633;
	bh=Ke1nPy3DtLJUcozi2AlH9DG+UyRHqn/X+9bvmX/i6Us=;
	h=To:Subject:From:Date:From;
	b=AA/6MPBUFTaboaj30peA9v2LE6IHeNmI3DZs/rb66FQdfUVHTH7cYiuNZWMfF7BEr
	 V8Cs1h7mJ40zrgq3SqJGmu86yGP3M/yqojJIZBeKMkq/cWWjDzLja24cHWFJhn4FYo
	 75qQcyeyz1Vew9Xg4J1lyV5sgPVsBb84wwrlTpE7SzhzylQKBbyla3gMJB2U4mXtF1
	 7QoZV3o5kbrTITmykzYGvm6GM1Iv5Qthk5fl13FMus2eBccwzxlQwnt/NOafrDnbuY
	 hE0evdWHC3zYyhwWySWGrOzRSD2Hpfj042O3eTBfWrW7fOa3KM7TsPJVWr+VV3v03+
	 YeXX6M3n+beUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C96CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933963370.18848.16667654715964269648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc3c9c60ff3d12b71fb8b91f633eeaeeb02176a8e2f6a4ffeb63fc2b75c604d
Date: Thu, 21 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779339633
