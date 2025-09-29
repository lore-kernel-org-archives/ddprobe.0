Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B1F1DB125
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759180794; cv=none; b=S5NuEz/62yIJMWmprOQe2EF1cTjVhnJvr0SY001KPJoJ91DzKUVSrE7aFnVtJTl8vJ9WsIv9Pa0GLz5u11Ozza4QZDLQZ1EkRvxbIVAL0C27JbD+ycQulQmsei8TRpRyXO01JAYJ6cixSLuyG8xeyrNubHVFA+XcUw8NLsOpbnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759180794; c=relaxed/simple;
	bh=icTa0TkaUiyiMKIkFZZN+/v9KnPIhfozJUwhRFp97iY=;
	h=To:Subject:From:Message-Id:Date; b=Lwo87Chk9b3shFrv0jvezJAyQGwNEGD7aR3lqqGOmeWIaeG05rpg55fGNR06hiYeeTPDtzLUH8+4xnloZ/RR2pzkDcLa4k6Zl4xR8i83Nx8KlxQWnP0Fp1gMJUzwSxItbG+e+lwy01miQjbyloAo6Tpsli9xBilU7sBE0XpIkuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFv58/UX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFv58/UX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A695FC113D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759180793;
	bh=icTa0TkaUiyiMKIkFZZN+/v9KnPIhfozJUwhRFp97iY=;
	h=To:Subject:From:Date:From;
	b=mFv58/UXC2bGwFnplHWyfyJE6vO+rJikYBm4xAVQ5ZEPNxHTohW7aKkkAXuD8/Zcg
	 0fOcUwwB8X0yjPkRPDwdOPNJcamT2W/I17unqpFyraAJYJlbvjbZTJuMralp7LtkWn
	 KEtXWDxyV6zkGsBmRjYc5ldYadeUlSD3tpCA3V8L+UtOUx9HVJsHMMAfcw6fKoQx76
	 5BqSRWJUi3yzXTlb9RHaoF8kWOPTdyEFhVLFyqJKxD6qTlMDfe3Zflva9cazpS6zI0
	 rwIkfiPcN0wFyeR+SgUY9Vk3zINVZw67+2H8WAU8IDP4AY2Df5s0ncIHjnFSPfBE8t
	 PCi4hi//o+6ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F6CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918079358.28330.2471810779814779157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d0dcbe4d3a2b667916a91708de7788754b67621f79e264c4fb9a3aadb7c2a5
Date: Mon, 29 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759180793
