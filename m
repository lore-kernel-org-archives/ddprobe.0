Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509561A4F0B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720083323; cv=none; b=DIf4Q7xd8Pzn6iwMhYGhDllg+I0I/TveaWDBR9jaSEA4exGany8V9FKWAktx6GYRP7jPA/vqg5/UD/WBBf0jIRxdV4Xjw6qlIGknbMuqKXBLuI1sMN0c4npg9EENoecLGkFSAWogRwjAIgA2zzWleTAgCEozg/aYuu+4tpBPpIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720083323; c=relaxed/simple;
	bh=bi8oT50XIhQB1luCUDMybV7ww2u8UcA4k+3UN6qygvg=;
	h=To:Subject:From:Message-Id:Date; b=cj4V9QXbvdRu5oNh54JZx9ld0XCnbA+Ohw/qsMZQAtQ1LxrK7mlHxbeBNMGzwdUoKlTUd+U86ZxtRiKJnnHRw3FDuXIg8j79qW0zv82RNzUCLvP8zGgaaxeMGfKdRPoCsscLljLwnSMivMvSYbuYeLi2ojaNEWciaZVkXao8VqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZioCdhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZioCdhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E142BC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720083322;
	bh=bi8oT50XIhQB1luCUDMybV7ww2u8UcA4k+3UN6qygvg=;
	h=To:Subject:From:Date:From;
	b=oZioCdhjEUbLSwmWIfYryTnPj8Zu3Yo8zdTgJUjn4nkZGgqYsJMP6irZGmt7lvjbj
	 J0n6PDhaHco3qxPyFg+HoYxDOZt1FFHlsGirGd3f5RJZRDy1Pqp5fwRUPYzeoBhqCT
	 ADviV9lsR614wWQJnPJZ0scDLvRLRs3jQ6emJLiCO/60ZDWK9pkW63BAjQlVITOkx0
	 ZsPwUCVNMCiHxMQ6RW/nbz2WrCEr1ySCGwV3Cf1s86UBQGZpA/GvySlvv4we9luOVK
	 NmrDRgptitObq+QFHG9cC9VB4sEeVkaL/Evloaa7n7i5k9mI/8KvEnQR7d2Fv/d3zH
	 /kZs+Ryvsm4iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE642C3065C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008332283.24771.11024926334026988540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8dffcfedcc5237a2f714074b70e8cc4db239e9601f5277e0f8a32dd397c285
Date: Thu, 04 Jul 2024 08:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720083322
