Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C542F29
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762369794; cv=none; b=MjVZEmoY8AXwYmbN2r52mnbbTbwdx9bbUNX1kz1uK/DdKknaYP45ZNuLi5jaD9bJTYkzKiz8Y99pJMSN4ORIRXarxBwNYDugCowgs6ZmWv0HgxdDmsZyV7Ae5Rxbd3OwbGw7WEyTL5/vthQ+z8syaSHnuyCkD7YUv4bMeYxVLPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762369794; c=relaxed/simple;
	bh=JIRzPpVm8NmiBvkcjvS1uI3B32vC1Ys9M5uWRWe0IAc=;
	h=To:Subject:From:Message-Id:Date; b=lqG9U5fahRGTSL3yb5hJnN6EccuekHd/6gh/4XByI8vEDOz8PxOoL0N+HDgSnoXKfcvKmSU0H9TsCM+qLVPtGjlmG6PMDDnq4uHdAwNnPbTOPHNcEHJn1jR2k22SoqR7/rScezo+eV2qLx3aX/9GG2Ucn0v749ezKm0PI7C5hhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEQuisMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEQuisMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F18CC116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762369793;
	bh=JIRzPpVm8NmiBvkcjvS1uI3B32vC1Ys9M5uWRWe0IAc=;
	h=To:Subject:From:Date:From;
	b=pEQuisMhG5GK+8H7d+XoN+rUJiYyBkt04SUWVhvaL/iGhRB106TpGugTXbFfaFmwZ
	 mpqMPtDjmJ0UxwpdXkkOXstfSHPomqKTkBdI2TuPWpg1YcedBsyfLWYcCI0sKHwLGb
	 qog2FkpNym/q9/rougHIloKQtpDDrW31Ch5JR0BKNazoF3W26kaBzlU3S4KOceGFtB
	 XpxopymE7YrbuZW5y+tLefTGtrKj8WIm6ZtstOnYEMDPO0WzH0O52P0BW4pXzDTWAK
	 YOsdHMQ1ztaxqRyrWoo2OkMbyGpSNAYTlKZuQALRwUdEPtZ9JuajfSQROR1rJVpcgV
	 ZyiMu6K522DrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92774CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236979357.3425.8735341319606079936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07676fe3470d26da685285fcd1d5255d358ce401bd8342c95773140a91907741
Date: Wed, 05 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762369793
