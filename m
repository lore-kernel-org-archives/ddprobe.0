Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051DD2E84F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706468297; cv=none; b=jQk5WMvQOHOUls2ESxkV2I/ALeBNsV5LnH/UkwToDUypteJ4kwigXLndIQMBdkgKzq1CYgJibSNOa3InA9SNMyLFzhsXTrXu2L6SL9kK7EhdS7cmOILa58AT9HqLd9S9qC1tAXw2UaF7bakAlwZU65UQBgvmhXZkyFQrW/jMFjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706468297; c=relaxed/simple;
	bh=3U0w/1TJaGnhLTCOtY9OaKlxN4dqEbibo5qk130HqKg=;
	h=To:Subject:From:Message-Id:Date; b=DDOr4KwLjfsICN0FBTD7q1PhyCffCMDNinFhgTKV8UlsjfEO7N0asbMjAR7bhfd6g6Bpf5yukEyJxfoz4xWDTSUWAWy8CM2tV/Tj38wzQcvrJOZ6i6ploXPQ06C9Nik9k2HJGW8R/3GMokeh/qSjaM1iPxZuib1+N+zqagBHIj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYV8QUPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYV8QUPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81CC6C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706468296;
	bh=3U0w/1TJaGnhLTCOtY9OaKlxN4dqEbibo5qk130HqKg=;
	h=To:Subject:From:Date:From;
	b=uYV8QUPCHLjEr2OA8Uo3N6L5y/7Lfaf4FmiczKfWjf8lZwg9hxWLF+LlLWBKxE6AD
	 u4vTGygrSMGliG05DSzaNrr+lOFOffCWlpmhzf4cHi6Ucw9Ul5vlfs5269EhxZxAQl
	 r8/9qTPOtLQt8Yyg/lRZ7BH8bZIt/wGxqXrn0Lv7lKaSQFbIArHG+MWghiiXcRixYo
	 GQzf4/Zjiwpsl007m1hEY8aZWWM5QO683iaHY3JuextyNuhsfGw/8WrTcrRyfMalV9
	 LzMRke2Adlc8utZmqNU01u6Jpqpl98cUTVCEdbwhABpofu5Rpi6/Hhfx7Fhu9jJcnN
	 FXf7RCtKR2ogA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D2DC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170646829637.20779.2253582800517388693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffcfa43af362bf01cabbcacab6501171a5792fe62bd7640c64d3a73254ff5d78
Date: Sun, 28 Jan 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706468296
