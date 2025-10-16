Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D526155326
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760650794; cv=none; b=hTvQKiTprrDrklFm9OxUyqr+IdsEi2UFlOJzvlSeixWfjTZF7KJCDB1bNqEbFV2TiAbypbxQD7XQ1N2P2EXCRWgOOugWj7BVcFSGwO5v1uCgVdN4Zwt+4pW7qrFSulyuG2BRdF/P5N6viJ79XIdKG+07rPOEUEBM60AFnwnPt/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760650794; c=relaxed/simple;
	bh=PAbp+2niWSrjXrAMkVY87O0j+Oa2/FHbUiwiZDgWgLA=;
	h=To:Subject:From:Message-Id:Date; b=gbSzOvBVI04nkCTSw52I/PNvFR5C44ZaMOpPdlX9rlq67X0ncFP/NoJWyB/dY1qy1kl/sd1oU3G5Nv/FtlvRoD0cYdu4FxPs8YvwERToAR+E31DobVt89f+42aOHEGtsV8kgaYefuubLsK0/D+CW0nLuqC8BGPxSJD7gj2Kfd44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ck2/PCFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ck2/PCFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760650793;
	bh=PAbp+2niWSrjXrAMkVY87O0j+Oa2/FHbUiwiZDgWgLA=;
	h=To:Subject:From:Date:From;
	b=Ck2/PCFiRvUg4H0mQ7v6NzcVGVkp35qMLSj+7cI48YGiS1F0ZCfrgrC/xxetWsUF6
	 LHUhBN63nMBzV7Q30yje8wNJccO3G9+C4GveVjSomeI7pH+R+8Jg2lyQu56DGx0ZbC
	 DBrXnAlUAKTZQfSGnPX6KJLA3FqdvtOMmNeFHOgEEr788KgGpHQYkzuRmWRT0SZHd2
	 0fLtlkAop+VLul3vQuKxE/O4mFeZGjVjThQ34DFb/POW83szL4V4KkDBabylh4Rt/G
	 QUr3FSNBAtrHjvNsFBEowXhT6IjaIt1/Ti2Tw6NaOpA9/4yWnylOyyULeJV8HrzPzX
	 MMf8kLEQ7GEFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9535DCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065079357.25237.13367951088842162282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4068e9caea204d8279d1f8561de2827cf20a8ec1f154bf6592cc4535e548b3
Date: Thu, 16 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760650793
