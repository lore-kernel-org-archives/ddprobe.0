Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D6A37F00C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788143435; cv=none; b=uy45bhe4ZcXrmaHeWVHqIyWsK5Ju/J5N6zqYHWFjVni5eIGxetSihU6jTgriZT583RZMUej7hq4fCOSoHWy1gVgNk8A4WMNU2vIRMAfMgLmwNAwPbEFtNZVKF5MT1Atw7KhrdK62DUfhzoo0oQD0Gw7hcynVWs/6oxczuJBQYzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788143435; c=relaxed/simple;
	bh=oYGbOD3ADkYx5MWGNbd1IOaxfmJlGQe3XyM/ue0nmwU=;
	h=To:Subject:From:Message-Id:Date; b=mS5VOXHfYf/pKhgf8vTFlx4/9vGE3cRquEu+zH01dWWgv2/KPMgCK39xMp5+tshxpox+QrfVxdAJAu6BCI9aeZN1CiwmTbilvQRqv4JChxkB/Cw+PQTDds7rXVNqLEAXfyvnzwoFCVn2pBbie9T2bAVnsM12cnB+rhnyX/NXVJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtlcwbAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtlcwbAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE04C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788143433;
	bh=oYGbOD3ADkYx5MWGNbd1IOaxfmJlGQe3XyM/ue0nmwU=;
	h=To:Subject:From:Date:From;
	b=WtlcwbAgrAGfsUXUEUvfjJ161id0VysqYenM6ok96lL/etAE9Nfj3VVON5jlF3EPQ
	 LLKldG/dBBpSseSNGI1/40bB+YeCsOipRJ3j+o7NWLc29APyFHyWyoO6bL+Pvr0fyA
	 53eMCV1FvatMv1slDW5wCUrVTqDxyZw5X177HAYO1aAIpsks7mahmB1B3g+WWCmzxM
	 28SagfS6EWZgrLbEzNx4e6lyTltEKBVMCDSS2BUTLVcA1I7C75chciAWPstKB6tvHV
	 3OHpVmlKLIOmEaRNw1y4ICCFy2csqnhtfpM0F1Zd2hFG4qbEG9qdJJdWFqv7reohtu
	 CAgebZzOrJYUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97E9C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814343368.32693.7981463780818304992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63ef2abde2d0e4af0d7bd08c1f241399c9d8a23c28e0a7ffd7981834c719c5f
Date: Mon, 31 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788143433
