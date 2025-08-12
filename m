Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF82257435
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755020994; cv=none; b=utMd4Jv4klh2M/Ueo/Ijwf/9RDVjvtOHyUtK06fQYMFxgKz41mMRcjxfh+dZ8sElPOpl8Vbr+hr8P3o5QeHzQawHqYrk2ibePpPky+Ksc5f4h5ChQUgg7PkssPZf7iKXwMzcjB2ffFU17DR2tm67zETnY6ktQj1fNVeFCFW79mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755020994; c=relaxed/simple;
	bh=JNydUiM58H/Dveck5n7sF92zpzFDcyP5g49Wn4E03Vc=;
	h=To:Subject:From:Message-Id:Date; b=ckMiSfKBvu0tg01AHVZkBcaMkwb4tyL6iZtz8C6QuLMMiM4P1IaME/Qpyh6WfYxisa6ZXvarN/3R14oB+0Yq5XU7GdwjK/JSKjoP/kqjvVLp88bv/1F/hqwuciMM/NlCw9GZEBTdrH/TDrhs7EAVN7iRPwc8D1A6QyRN76ibPtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o40PWOWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o40PWOWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4965C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755020993;
	bh=JNydUiM58H/Dveck5n7sF92zpzFDcyP5g49Wn4E03Vc=;
	h=To:Subject:From:Date:From;
	b=o40PWOWRf08LWBoB8/LS3MZ/33UjL23K2QItlZiTtHD331QwJ+IqFcSFhdGLFeO6L
	 pmwpL9aaTCYVdsQ7eZk6+xJg1A9/lFV25By7mZp4wOiWeVzfLZyOQs+4btA488hKYN
	 Tj2DHhP07U0ls0hsgVqiL9bhEMiP3Jil1bPzxfkg/Pf2b0FH4KFaSE6qp5EkZ82CAo
	 vRCmN9j+q0R00U72/jtkmrtCekAA6rjJkybPsY+cM49q+xnSnyY2tanNelT4RJqS60
	 pOIMwWqyWoc6vyFzBqxOcUR9hBXtuRzPrqySDLLkbyNbj1HgKDdOG1v0FA1c1yRzVW
	 Rg6CxXfxR54gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92541CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502099357.16356.9139778709141905280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fec522b7d696e6835f1e526ea2b3af7faa8457a0166d11da9a06011dd93bdc
Date: Tue, 12 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755020993
