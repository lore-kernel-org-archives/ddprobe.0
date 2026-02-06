Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEF02248AF
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770347634; cv=none; b=K343uzHxA/LkBkU1KC8eeAcvgBd0pWa8vLrFPBNyf3XWkG6EHFKq93JNHvM3Zth9lBf8LooMy038aZxJIHCSQADNkh0qIkcRJM2KtNi+pgubGYQ5R+YvHkBJDJAWP80NoV6PoFeoDNJ48ogdOn9WzV5RBe+6Sx4UjHnLRQYwu1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770347634; c=relaxed/simple;
	bh=0gtSoaE3Mm1bKLTtnJFpc2ebGXZ7N1eg0d6P8vn/GNk=;
	h=To:Subject:From:Message-Id:Date; b=e2kJWFKO5HkAaRbiUrKeTfyxCK1mdsNCi8BCGLKcFpPGcD4L4Ne5qPocsPkkHXLvqkYbwAWM98NbA62/Diuj8xoviPwZtkPCTLZnnjR6xe1S9VDNKMEYZFil3x74oovuyB90Tb2CUOaFqQ5iSDtvbW3zs2nrCKd8S+Tt2v/G1uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaDutUrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaDutUrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B134DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770347633;
	bh=0gtSoaE3Mm1bKLTtnJFpc2ebGXZ7N1eg0d6P8vn/GNk=;
	h=To:Subject:From:Date:From;
	b=kaDutUrGw6GA6o3r8SAyW/edoyQAnF5xx04cCe6neejNkS155EEaKeRdv8Dw0W1Oo
	 x+y5OvriVyJx/FHzchXHO5VLGkUQ5ihSFWL8RXbHY9rzhUV3ShKfng1rdcjOJw2A6m
	 HMFsCWNRV2qottZeE0Tu17+ysbBHpMzStVEanc89MD/nJwk1bgyHF6HvGpY9D0YVYH
	 RkHyv8rRH663vLyQsJPZ76GhigrQNjj3VFhXr66e+s22YJbk+wwDMOcfuA11/qyzdC
	 KcxhFLzCVjutzJxA5FRAzeoBhVVFK8a5E7OASpfksv9S4O9XniJKlJuuAgWU4ljn0n
	 XR4/whlm60SmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C791ECD9BE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034763359.27757.3988039855258652827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376145c62f67e72db8b42f3a3bf2dbca83c448236d8d75c45ecd066cec554141
Date: Fri, 06 Feb 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770347633
