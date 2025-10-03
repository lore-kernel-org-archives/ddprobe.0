Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B11213C3F2
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759496394; cv=none; b=WIOmUPi8pIGLPP7bxoDFE+0nbXElOma+lteHniOao+fNHHVDo3FqlJ1Go8srVKKsdDXGFMZFChqkbgj5A98PbXA/mxNEU5ZED20nRJ8lew3H8BHwXj/pVbcLLDuvV07VEdYUdjf5CK9PsA8nDqZ/2rK+Xvoxr65FvvaGsVAZE20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759496394; c=relaxed/simple;
	bh=lmN5GL8s0Qc/weKNzH4Ci+eSsu5Fuk1S5cfcUyCUUKY=;
	h=To:Subject:From:Message-Id:Date; b=gsBbi8PS8SkmvePlCAR3wviDL46izDBFxxYrZyMa0VPKQJyOll9cg2HbmGJ+YORlrIyJbhmpIJK+UZfZ+N7+46e3/FG3dpCiOkoW3jlr6AvQVrXOyldt0vdg2qAVJAgeb5WROmDei9I9gUGA+lIOA4SJV6mW2Gnpk7g+KIJFKTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8qr+Bno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8qr+Bno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23A9C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759496393;
	bh=lmN5GL8s0Qc/weKNzH4Ci+eSsu5Fuk1S5cfcUyCUUKY=;
	h=To:Subject:From:Date:From;
	b=M8qr+BnolNRzsK77UsUlVZNiB3gH5MCoycJW48gyu/BS/Uzjo3KQyeyjYIZz/oPcU
	 W3ppfZ3CYpmTYu2YSPhp06bMhIMr3xiRWDQzBI+JP+syXQbQ5ZLOlWylViH/nbqrp0
	 bFm0atdsnNGifm0QgCs6N+KY51Vrvf72UW9sNPwpcA2u4SYENj7UIoQbZeWBqMo1fG
	 48HnmclqaWtA6hEEbJWinvznZ1eoK4mG5Ju0DYmNjHhFlqkk2lq1ZlzB23JkcEmt8P
	 vhvGRIJkGeq8N9C2b9HP1+tiCtRltAuRyAdLMKz0ltpmKkCeZ5PCFgo/XJPP2gt4cX
	 WfnMFSrMPIg/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CBCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949639357.30191.12574523781833818189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6dace6cde5cb022e84dcc44a1da267e12571e33a797ce49a9912672ec315429
Date: Fri, 03 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759496393
