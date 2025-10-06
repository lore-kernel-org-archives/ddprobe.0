Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D11134BA37
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759711194; cv=none; b=SI7FmffwLz3Y7AdZU/4B5CKe6/iqdFCmUKOO7Uvs6Wz9911NMIu4faD9HnCRilZFPZ18HqoFfpxqbGK9q1pNcHiL/s6CjeJ9xurIySkMRhlNO7LC4qF/eGY8UZpapIj+ogf05b+K7paXrslU6PCQQs1s+9nGTEesuzFUKLg5pp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759711194; c=relaxed/simple;
	bh=Ns5Bj/MyJKJqc8GoKaTBPTHEPJcg40zZSPCLG2PtjOI=;
	h=To:Subject:From:Message-Id:Date; b=RTuqpZMXCFKCffr8/+lQu0QTa4K/hj/aoDaJbZkTLCDqhY+Sfuegk3Zv/ybw1srpTaPr/IB5JbuYptVPEJPYBOJb7QJVfu7soBFqJkCR3DgSntUpbpuQW40APaR3e0AULp33zk1T+jFBkjelMxyWre8eKb+VzlJIOVgXwk0dHWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fx5oTHaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fx5oTHaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B8EC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759711193;
	bh=Ns5Bj/MyJKJqc8GoKaTBPTHEPJcg40zZSPCLG2PtjOI=;
	h=To:Subject:From:Date:From;
	b=fx5oTHaEIYoo63MHCrnSeIV26RSf7xqxuuvr+wI91H/AtFOFZfVydSq6BWI8wq11i
	 Lt5cgE+ousQQWGrno77SFluSBR2JREJtslBcIydqW9UFKQR7XZ4vrxqpM9MICmV8Hk
	 cl+zX4DxEupT9AiHLYh821HS7i7MvxNGThayFkmYMnoWAFRCfR3PmhcQe8PZ/q3Hcq
	 z17V4fWDSxC/kAbHgkGXUtTkIhr9sOMxDDVLxS3ZKjYcMm7Gmh+NqGKd5QwjfEz7Sk
	 39aeN5rkUlv+MxdVci7xFnLGfxPYm1H9zCYEmCE4vtb0x3fD2szc27+DOVWGWVNZpe
	 zRN+7YDGTdjiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A1CAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971119358.23788.1655302069962594127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fa141dc9b78e5c5f1b6e2a9b502fc09bf3080144bc950e1a3383b2c35851b2
Date: Mon, 06 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759711193
