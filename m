Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44285195
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746940794; cv=none; b=ORtPNWTATACp5M6QjPqEgNBfMdxAk4oYOau3WE3lbxq+G7Mtf1g8NsIBrpf7yw9CQSf77dN3FFiI3VWDZA0R4XCCxw9zg/P8D5dX8SccqaIr6g5DmNqAjRb2yTILJOC9HutppSCj2TIk6gch2h1o3S0sd9O/10ytP0SkgVjhfP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746940794; c=relaxed/simple;
	bh=5baHVTgfCkAAViL5EHZ0H3Aa95+yyNmS4zoFsDqcwws=;
	h=To:Subject:From:Message-Id:Date; b=XsTxNrxKXHB4uUweAbqMSwD4c2OmCxQOEM+ZySARlc9ZXyB9csbggEwDuwa0TYFwpTFvPJ13HbBuVkWs0PWHm33OcagXCNMYzo1bkjGu7obVlNU5rZ9eUaiU1xsLjDHIcYW8yjL9OyMI9K0LFo9nX2msYfGAYhYKoILSENmiFxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8BRkUdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8BRkUdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2C9C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746940793;
	bh=5baHVTgfCkAAViL5EHZ0H3Aa95+yyNmS4zoFsDqcwws=;
	h=To:Subject:From:Date:From;
	b=B8BRkUdZNAIxF8LbOdtoFMJg5nitYProASNZ+HQe+msygeloKboFu3L1PDarrrpPT
	 5MicAZz78EH+gvgIhH+4tl9OiZfUy1vTPM3iwS49phsRua9ZC1bYVBrNEypivqTJzF
	 kh4ftVySx6efRaSQnqgVR1PnyZCMDgjp3l0nUfesT9AGK+x5GBaZy15qt1wvjQRwwo
	 mkS9yd7kfbNWu6x9pSo5HLT0DhSrvCczPQIsxXktooxsBHDCw54j3zNjSCJ17jxvmp
	 AzyGvFMG1EKOo/Tur/luv/ELR7PSMQ8dJhvbehEJ07V5n0pQyoB4YJqPnefaPD3V3B
	 RK/unWg7mafZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E8DC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694079359.26941.10420440337480058895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550f7b7fbbcb50e72e8c279704106293f6f0aca48dc14a7f0f29a55fe51ddc66
Date: Sun, 11 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746940793
