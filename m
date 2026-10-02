Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508D43BFE3F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790925634; cv=none; b=ClokjSl+Qn4d9YrHve62cRfUfmvI1ugHH1wQU8DeEgMRRQd/jYKDH5gDSX+/fYmi02CZFbW/IpRA399948CaVgZyvae2AsIRD5GaegB3ebI+Fs7PoFT+X+UIHRmsP9cIZW8Cu126dtJu04IsxRPMqZDx9q9S5qujPiPtUclqvwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790925634; c=relaxed/simple;
	bh=11xkLc5w13rpn6nDvtOFwaPWjq7FX7Hz6tqHuc/G7zM=;
	h=To:Subject:From:Message-Id:Date; b=OHcze77ueQ/8yk104lRxcDd1++7TfeCAdBEGTgwpmRI/A3/xuVt6Oc4DIMLjlWsGmPrSCr48e+tBaRYd1z1bMVUpojOiLffP3BIC+kUZW4u7mphMvcxZf4nTNq+s+wfek/glVgjvCUN9OfC1dzIFywvOlCGbsR2MzIiG2OzoJoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idEG9c8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idEG9c8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E17FAC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790925633;
	bh=11xkLc5w13rpn6nDvtOFwaPWjq7FX7Hz6tqHuc/G7zM=;
	h=To:Subject:From:Date:From;
	b=idEG9c8GIpB1aTkkHVLgLFWCOy7054oCNvjjWseB/bGk37SYPp2iUqNaCrN7HQB7d
	 00moDFHCrZfoBmsEsS/vZ9MvTAxRY4JMzJYDrPsKJarmhfrYVVCFm8wbdD4jOczhi2
	 TtxPyy5umIJXfplkB8hBc09UM/D96net1Ci6wlHu8sESKtOhLRFgut2+r44NTxAa6h
	 OG97Z5lvkSY61JfljCVrCJ+ityn7QhuaLrV8ojOqMFoZ/QAFPSwjR4X3l++VrtyNAJ
	 MN4wXmMLEIu3DufWMbZAnc954WAsxBbLbHywJf0oi3CPZy4PQ6VoK351Q8/B4ByCEt
	 /bR0OjVlqA7pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E62CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092563374.3663.3800632256721005840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40be71f3890576d77591931542063775cf54349bb6340cf56219648131dc4eae
Date: Fri, 02 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790925633
