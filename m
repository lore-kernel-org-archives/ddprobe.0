Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFDEBE4E
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727600754; cv=none; b=r8oOA3SFIlQ0buAYnhH2Uvme7YSxrqiJv3BtpFPICAwag+s8Nduvh3jEZuKPj5bluv6zr2CuaFr7wHE/p8RkCMnvXFmTVNvX5k4GRT/Rj040TnYGrrzKCK2KgvdlbUStGYEE6Tg47ceJLHAFj5puc1uFlRxDiEKRtGFFK82sSf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727600754; c=relaxed/simple;
	bh=2KDgkCj8MnSrxwYm8ufr4zvNqKxXZUcHus50u4Hx1pk=;
	h=To:Subject:From:Message-Id:Date; b=Ww2Toh1zEdMCGkePp44/5LhxzlYaivOdsa4jzpId08KnNRHTNKNjpBL98hp8gRLbJem4arELSWYAc7VT2ph/J3rnWUF7p8BpBmUXHm3hGKQPah/OQYTrpdKpYub4Zm0k/L0Zv1/hLFf2EE1eL91upVD0Uu6mKH5h6NOjF/8MME4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3BhYwlr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3BhYwlr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF6DC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727600753;
	bh=2KDgkCj8MnSrxwYm8ufr4zvNqKxXZUcHus50u4Hx1pk=;
	h=To:Subject:From:Date:From;
	b=t3BhYwlrbntS82FDi2xiGkzQddGGI7ODNRtweNZYcJDsTUIy21YUzJXe6OT/AwyB0
	 8kkuXLoPe2CMYf8hkrrJjYGc2LTlqWOc0OjROBkgCQa0J0Jn9af6s+6B7JkC0FJHu3
	 5efPDkIV8XJfkOFUCTYG3IMOxdR4PjKD4gvNMdITvoTU0MCDv8XNd96r3kfEHMvhlA
	 XvEZn2xyCKkBtAXMItC06onQ3J34rUOG7iISsl+F9vuWWiy9s6OmKsvhoPkcfO7k73
	 eTJVJmGbhDkEw95HkKGJueMCWQXBwRR27FN1gpt5FTpoMQatY91Gxld7p/M45RJ+pk
	 qXbAvZ7lPs4CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9432CCF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172760075358.26043.16824557025680994474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d5efbe1e9892c2560604e124a7fe1a22198539e9e5cdb00a451f7ce16a10275
Date: Sun, 29 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727600753
