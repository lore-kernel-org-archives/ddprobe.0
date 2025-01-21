Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBF93D6A
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737485754; cv=none; b=VtOBu1QN+y3x9f4TmAtUryRYngrnELLKFRWeNeJvi74xlNabtGVVivNN3WEejNH+G2YlD6W1fxs3z+e8TFsC0iovdLM95pzwM7bdWt9xD/BrmTFIyuMNO0JsgT8Y7Ba6qrb7CB0zb9skirvLZ7Sf2ly8Gfxcqf1U2hnuh5U6SaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737485754; c=relaxed/simple;
	bh=zquvGAyVf/rt/FTEdTrhW1V6NjuGTVJXry3mHWMniAI=;
	h=To:Subject:From:Message-Id:Date; b=EdmY5jjD3rGrUZW6ESimZa04tb5USrentOSssBkTbnk2j0GHeXdW+xn+vbEXkPgdKSVCo8rIPgiu+jeVz2P143DqBF03o/VqDWsSuA/oDo6gAPYCfQTFvAtoqpHu747B6Q7QKsmJ5JshR1Xf64BUYTiwyxZ1Ls4opH1FcG1S0Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSQKt8Oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSQKt8Oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FE6C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737485753;
	bh=zquvGAyVf/rt/FTEdTrhW1V6NjuGTVJXry3mHWMniAI=;
	h=To:Subject:From:Date:From;
	b=eSQKt8Oy42PFHE/IApiSxRf1wURWIbeVCP+h5+5LJpWH+DyaNCk1SPaVTB/Mo7YDp
	 pizES0nr9g4WikkPIZg0ADpoT/UaefzcMLnYJjnlGtPz9YINhN6YUMiR/VG4kSNV2x
	 781uvCwKH40WDNjJm0FuI1SK072GzTWBItvFcUpuQjsC1USDu5DzR1Q4esVjfDC8AB
	 vBXRYz2YBaQB/1qeW6LnoOm5U5zH3hBZ/V3EBvZa7pZ0O49664TBFH8vZbltyG2GCp
	 r5PmLTxP985o1YXiDPnLNrnRCU7XzBBXK1P5A4LsKEVrPpjBrPg5jlVfUaOPeD/8gO
	 RgZUNSH2yVjFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F42C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748575365.10821.15728323844025870015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7751529b5d9ad3a529a6a8bd42d7b1a6ac681297c0bcb4208523f0f98b6ae83a
Date: Tue, 21 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737485753
