Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A18F1D86DC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769576634; cv=none; b=sjxMltQbRqXt+D9BOPMv6E1MmG0r8TFTEt2+peuIimaga5M2ujOtb7wbod2qahjWs9HJbLF1RwpIxOH5tkN3i5Rvoqmk6QW3ZI1na/WvSbpWWv7nEEpyRPL3i7wpaYXA7musdWOfFbhyDs+xwo5QleXuuZ4OTxcFCXyZ1a0Usdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769576634; c=relaxed/simple;
	bh=db9xVRgeQl3o+8m2Un4kK4k+srPQSAh6lEoA095Q1so=;
	h=To:Subject:From:Message-Id:Date; b=k81Tcf5skSSRfxViNReCpy7XSSpaP/wbkbxY2UvzLcJKyd1OXr1oBl2LV9nWpG6+EpJNje4ru2EZVSfo++2Lm4vR0Pse7JPTTpbthTxzZn1nEGCy3GXjkP07IncGFVvet2/1ch3J98nNVAESPsOvMoNuBDwBwdU6rv1Qn2NwLd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIBGLDmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIBGLDmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7002C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769576633;
	bh=db9xVRgeQl3o+8m2Un4kK4k+srPQSAh6lEoA095Q1so=;
	h=To:Subject:From:Date:From;
	b=gIBGLDmhQCHlWzD3JvT8o59vf/C8um1m8dEBo/Xj1Agiybc84Y3pzPheghYHQR4cu
	 S89+BOxtNFlkX2e4djQWHiPbzgKfXM8xYr5VZ+MW6Flp+7GbNMtpqtvYFaaPVzJchB
	 4c3Rq5Im+OIyg15aYADNqTGahVTlvYGP5RfB9atLkOQfeuc4zsdKesXCqUTKs4KNG5
	 wyjfaq4uITM021xa89PI4W2X/hznuFN2OTj7lZsJU2Zm8wMbH4r8ShAzNuuA8Q5Zjc
	 kz6mnKwhLiaOvvb/cUcCsVKBr9f6PfTdXolfKX2YE5WH3BRPMbGaBof3D4wD5KHuP5
	 VZnG3/ctY+n4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94946D35674
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957663358.11499.11766494276995655253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfa4ecb9002eedfab8fa581e57198e6b099e3b1335b3032c6700b4941f0ac96
Date: Wed, 28 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769576633
