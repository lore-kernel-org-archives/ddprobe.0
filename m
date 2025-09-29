Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8C933EC
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759168194; cv=none; b=uICsyI5e75oUAOnJ2BVWuJXF3uS3T4mZ3P0KgFJ4M9priZn6VmOkyR4728ydGlsRqaiXJiqBX2GV+7SzUdRujYyn7Nfxx3rxEkUd5IST27cD5ap/pnTLTGYC2mfnvMI7Qr+BLHDhqnMcgHHfJtZ2UIXRDgfCEZg2IkAu5Cf7dRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759168194; c=relaxed/simple;
	bh=V6UBNUjmkZXNPal5so1V4YzEqwC1e+Mb45BMJRh8DTY=;
	h=To:Subject:From:Message-Id:Date; b=uuJAyRqAjRBp5eWejlT/LKzQCNiozkhiZ1vTbbzXxWtwsHkKmZALM5jww5Q+OfAEP/nFu26a37LCuCLBRGEheybseLfEQXngecg0uCXzGpU1OHYbJlTX78FXi/QomfS1LciyI4eAB1XwKMgAs9NayayjQgIGvfj7KbinsNvhNYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqgMTw3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqgMTw3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2818C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759168193;
	bh=V6UBNUjmkZXNPal5so1V4YzEqwC1e+Mb45BMJRh8DTY=;
	h=To:Subject:From:Date:From;
	b=nqgMTw3hRKgeyZ98Thfj261szQ44usEgUn9JiPJZceyP9gFncBuBKNJt5nVgdYQTq
	 FwZTcSz4H1rB970EldQ/rVYhlBHb8YhioiTC0/JtOX2hxgHpQy9abPtrn5OQbdhZMR
	 sqrTSYdD//HgkTAsGc5cYegQCdxap6Dh3qXapqZfaTRtT3FUktBRxh4GeUMPmTy8LI
	 lyLmn6/ikEkyTfCMK/lxEFvvks3m5a+cqzE4vcMBWPUotnGqxY8APxmBTGcGCa7N8x
	 oXxzueuZwqyLuLa1NyzwcQK5MfKv3/eAAIqbXM0iiahzoydZwR60YeG212GcoPstkv
	 NwC5KUuHMIq9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED83CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916819363.31250.2749192050022673701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6ab710460dcd7cd89d15f2223afb66cd3e630fc87b48fde3dd26c031bb68c7
Date: Mon, 29 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759168193
