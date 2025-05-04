Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D93190692
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746399594; cv=none; b=sc+EQ9obI3TT0QdnJVrGdmKcZxPpTRBK7N433pxksIu9Q0i/17EgpcyKev0/iDl3Mp1L7J9GW+GkSXmSURC96rwuO0EFFBdVz9VoGLACi/xuNoKGurfbURrzDWp8/QY68KZugKBduAiC57y3BpIEQN/co1cA0EBSCPR/Z32pnS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746399594; c=relaxed/simple;
	bh=zlIijGkGPJDdkAqXmKj2wzg6j+oSPU3KwgKH01z8pbE=;
	h=To:Subject:From:Message-Id:Date; b=AOEClPIW926C7bRsaNb1MFowz2/W06cLpx6WUApNL9ZYE9TfVv4XnRRoqvxj7vHVejyJMrbNRu6IxdBNk6op3vf97ksnJIRgiMiBDeVN099gp4MzC8hCDI/wKRAkQ1a5O0N8+n51MfEk6EDM0uBEC83zFAFrHuFLTJMdncbp6VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7DhkG07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7DhkG07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78E8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746399593;
	bh=zlIijGkGPJDdkAqXmKj2wzg6j+oSPU3KwgKH01z8pbE=;
	h=To:Subject:From:Date:From;
	b=X7DhkG07oxcBb7klnvBSnyTnFRJD5uZXaD1WQHHf1zf1UzSTy6zeCtiyOmeCGxuFm
	 KqjOgx+w8GNzZ09QSQ4ynQjEMGAh1NaeYVs453cQyrJIzn4r6H4anwVrxzcMFAmPuw
	 o0zwPV0HgvqqhhHsLpP22I1Uxx2MGDw91mgS5A1FybgEFeuizRbEIGK7JN10SMXrhA
	 tBUNy8zCKLFrEhRTfLRT0RLcatutHAQxrRlsbHZThmF+Yy3ZQl5+6KE48EtU9EXTCC
	 EgLs/cTlqe+VpE8CgjMCZT2DQTIZW9o1YE5PIYdwtXw9GaGn5OuEAIvsY61M/BOvjp
	 1jTJR6Fza4BHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E3FC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639959357.31216.9286788499464541294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5105616f2d0cdb71d1c6bf50f40529bd2079cb5bf9d313f4221efc78c8d5c76
Date: Sun, 04 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746399593
