Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCBB3FFD
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744178994; cv=none; b=OQpgpFmhAXhGdq4KC6prIbwRUGGznv4BoQijGaOOTDf63tSo8KFtq9ycbHMi9sGq6Z7hY3DgJqX2d6U3oGRASI78ze9RGuaSfsH9zYywyyEX6bMWAXmUf1K9KAy4BGoRhiZkC99CTNzGtzgUwcgpyUcJYPykKXFnZFSyqPI2/ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744178994; c=relaxed/simple;
	bh=rKRxfiiLvc/eRQWuALPTkzFm/5Y5h9wSrNtTshT8A0U=;
	h=To:Subject:From:Message-Id:Date; b=tzZgs3/kfBIhB6cOFcp46Wt937hKJ2uh/a3K1BocwGY7J4C+Xk3qCOopL0zUCGrvnw9aV83nhhTDggSN7CgPvKxWbMrts7Z5yNq8LM36zJRRAFWRiro/BJdZW92/LrMIw1AZWYfIkcEeLEDCzAysfY1OLlzodQYOOjZL2P3p9c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgZAPjR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgZAPjR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48DFC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744178993;
	bh=rKRxfiiLvc/eRQWuALPTkzFm/5Y5h9wSrNtTshT8A0U=;
	h=To:Subject:From:Date:From;
	b=kgZAPjR9/e1YOkEUV/KK15+aeszRuxZGl4NsyOrUxRD5OlOcFmi+CKcdRt1aKZb/q
	 SYF4K6quZ4DXAetgtSxPz2vo9Z0kFAum38lgsfWr5O481nhlHrrXPN8Z1r1z61gEHa
	 pYHl4MhTF4pqv8lrkqum59TjK0IN2euPqdV1ihr5RMAUHdPiCr03PzALfSsxtZeAlb
	 8HILPoW+55BJdbNSH6Zn1hatjuaYDYxRgjev5HmWpFoOEp5Algifdb/fM7bjrD4heh
	 UWdH8hrtKtLuZE1Od70Ss4bDqPg/NuJB9YmZBmmnngegNXIxC8BnMC7D7kQsgjcc0C
	 /gmOdDZ+M7+uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07CFC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417899364.11523.5915266655559054425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569137262ff9fbc7bb853538f637603dd990c4effbc444de523c501b7a307ecd
Date: Wed, 09 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744178993
