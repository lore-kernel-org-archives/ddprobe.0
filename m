Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431CA282F36
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783036114; cv=none; b=l6f2Eza5rYfzPbFvjbZWYcWM+jLnuaY6GC62mIVqVRoDjj9a3wMUvLOYYFQx3ghWCMnyFUjPFz/rmUIyRAcyakuUgbRCDs1lVdOb55gg36e11G8jnoq5FeESHtlAw/hEMG2iWtNZJyz4dMyyk4ij8w+fRh6uJpxMujt4MzhtuEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783036114; c=relaxed/simple;
	bh=1DHakmd169D0q8oEdSs+Pr2KrpfJZRQi2cjQZ2NeC1k=;
	h=To:Subject:From:Message-Id:Date; b=bR7PtWaMGV86ZB+G9T58ZEwYx7Sj2kJs9+11yTgxIpAv/7SwmE3AnkddO+gu6JnIkiVGAYwajV+2LilArsWKZsjUAhmqaxBXpNbu35ICxrVEsN1tDiGzeNHi5QgXnHZUI38ORGKdAlz9TX4uBV3rRihNcyfEQq1OkvKVqn63ku0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtStNL9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtStNL9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5F3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783036113;
	bh=1DHakmd169D0q8oEdSs+Pr2KrpfJZRQi2cjQZ2NeC1k=;
	h=To:Subject:From:Date:From;
	b=GtStNL9L/SeyGaJOAVRVLcjDFfDpmUu+6ND1BZdjC+sCuKbwNWP7qrGrNkMQJmUHV
	 SvmBTwLPfJ0TRfX/T/STSj1pt5IF5fYEQXib0Q1FknzWtoogTYeqBv4aRrgMu1Lemd
	 eV4ZxtrEZ3azZnLTO9LFrMsv2GQIv+0N/xZoCxpEOrhCO3lLxkarsO17IuoQoxAc2r
	 QCS0uqMH78+BXDtVcF/6oSbvJkqx3YH0f5dWK1wX6iQzJmw3BiqvcBdin7EX9owMI3
	 v52zRZOmVAiVcHaXpVbbLU1zwIt/j77QMLoTN0hP7hS+HJ/gTXIxm3nl+oTEmlodKJ
	 Bc1kklE8KE6ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADDDC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303611368.13017.5691335685969592764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4761fb77117657c92eeb8d6323f22946cc8dbb33c752201a0a6b825e70e652e
Date: Thu, 02 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783036113
