Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1253905F0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780521874; cv=none; b=ldO5/F9NSNFkcGGSAGOL7O5cXI10PPtBEF3vss2l2fdWtQBRmt5yXWk+zYqAbVDooNGKSfjROyk1Z0kqPtCdfURpxTz40unpKwPQSZ/ypCE2rbut3DdTP9BySNgNqBFF2Ld7+IMKIAbxx3aegIaFfcZwo0yVWT+gDqMxK7Bi72o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780521874; c=relaxed/simple;
	bh=VHo2NQCJ0xFLP1HlLPyPW5biwiWq88mldTnHKQS4/9s=;
	h=To:Subject:From:Message-Id:Date; b=IT12cp/cc7yUp7neaY75g3U7ojFm50e+RmGpX7I5ekiMPSlybDORqtSkt092Qoym4UW2bJ4sFqe4eWuJR8CuhCeV1p0WLfBKXLbgO9g6DtFoGirFQdHFR/E5NottX03Sa3H+umtdB/PWUHBUxfpt3u962WvZiA/pyaNK30VMQUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhhdHnsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhhdHnsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7040C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780521873;
	bh=VHo2NQCJ0xFLP1HlLPyPW5biwiWq88mldTnHKQS4/9s=;
	h=To:Subject:From:Date:From;
	b=AhhdHnsjwVgtOG9pCFrdtyEy9lTOORVf0m9dz8p1dL31wg5hAAuaCQkEsHFTJO8cM
	 FNNY86kP5rlpJezdrFfrGQVHBMnwN8bHaQ5uW04SDGUo6sVeR2oLP7Xq136wAKBUzz
	 MWJ8rTc5NXyUtlHgA3Mae4PWqZVlxZ4hvhBg0soxnZxhNL5XqKLrVpfaJvQDQwFX+w
	 U7VQxrt+OqXDvux6u48Y6laNKDJv/qGKLrQiPxiExDOs3AuFy2acNWy5Ko4GocLRzm
	 x5zAX+9dq8iRY65SOTu8yPyax5sdP0+wvad0iV3tv4EnLGIf0eDQ0KdLBJw32bO3Mr
	 tDUsPMzsmS0wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE94CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052187370.10035.1708580800276269186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba7cac6caf68b3021740407eb243e0c50048f807896a3fac92a76464c963bfb
Date: Wed, 03 Jun 2026 21:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780521873
