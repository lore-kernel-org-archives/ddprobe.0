Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482721E87B
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736204154; cv=none; b=o/VikrT15ESU6ZV8O8Vzv8rnwslFCizSPrOUQ0WP1DEDBnd0zW++eJuBHZxsrip8zW12r59ur0fQGsqoH1yjaOovcb9WRdXn+BE3wrglqPOQb8y7vdXvthOOj2Ieso69fY7+YVgCwDO+zpe/j53hy5l7XGA/4wV7M6qLr7t1OFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736204154; c=relaxed/simple;
	bh=SBXwAbCMhcttGMXoapYZNzqSknMz3ggKKME+C0XXwfU=;
	h=To:Subject:From:Message-Id:Date; b=nHj8gsjivhuBnh+4PmCjo0HKL6W9ybuHrPxJoi2fngKO/vkmF0v+ycS8eMOlwYQkbIGA0E+oLF/Z0OriKac8DMw/+42+PiGfybQW/BNxO96TLmMvXR/9Q3XUL4QExYte7wInCdr/GB2hWpBRI1MLAHjssc8cs+YpL+aq6LgWtac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuqcHAl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuqcHAl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB140C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736204153;
	bh=SBXwAbCMhcttGMXoapYZNzqSknMz3ggKKME+C0XXwfU=;
	h=To:Subject:From:Date:From;
	b=JuqcHAl3nGNmkaY3V9UkSIxuECkG58eR6aluS2oHqzUh3XbV9r6XX1IcPNAz4EWaA
	 2KcXP/rWz7IMGS1ar/vMsBdQk5nZmoxeOtpVH4l0yUl8feBAoFUG7vfexdSjNSJ/wh
	 qdtXRril9hZ+KH8ilkNaph4yvIi7c4fRnBiGqe0U5HLPHY9KVTandDskLDHXrAEN68
	 9NMsz67GXDakUEOhwbAY/pjaViwCSAULg2efAqRutv0dJ7xx6razyJ3z9quxCDVbN2
	 UUkMh0icw32f7GwZbFiD0FYH2jB5aCdn7hxMkVjHZl/L6niqHi/E1HPBRuyKiFHyBc
	 3HqyKq+ApDkGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F2DE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620415364.29849.11661178915254325614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0ba966b7ff2c8020ba9243619f6779104e3c6d0e5a98019e8a59fadcfeef0f
Date: Mon, 06 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736204153
