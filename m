Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A15169397
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740949134; cv=none; b=dS6kZMxPTeNlqOI85M6hkNvRl7r0pIyMqERH11tqNKZsOiWyySvFx9A1tE/QbBuZlycbm22fR9An2Z0WERQ2+SY+/icOfGNbIaK8FsYRLeYVXqCIAOOK48KFP7I6UTLTbpbqv2+S+FqbW0Sgu2YtMIXny0xc1TFPzcgQ+/r/K7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740949134; c=relaxed/simple;
	bh=aQ/xGU45U55Ki7qgaDL+rr6MhtIqfqxrwip7hpQbymQ=;
	h=To:Subject:From:Message-Id:Date; b=hZcp/4u5STMzi+V+/X9lfkPCEs/tgnkLupBFTRto+kUBSQC7CY+8B3vHmr6yrC5GmDDs5ZbDZSeBVM3DNKlTaE/zdGPtzxbE90saT2+PArqnG8GzQ9KnGcgRO4tTkPwaRnoEsea2FAJjspKvYYWXNbP5ZzmzhpnRZNgi/vGhEAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baIG+Jtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baIG+Jtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FC9C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740949133;
	bh=aQ/xGU45U55Ki7qgaDL+rr6MhtIqfqxrwip7hpQbymQ=;
	h=To:Subject:From:Date:From;
	b=baIG+JtwEQouALLaCTA3Xhl79YryPxOMphQOTa2TOYMEg0W3RbdVVn0J6i1jw3+9B
	 QO754gTXGSwJ7qxWvAY06qtWdjS4zF8lx1Fpc0fLyR6BbUSl4b3Rq369BH/48hYM83
	 5y4yRpAsCKSPnnoOQOj3jxUOuEl3bIsNzOkP9NBZ05Cfo7DEQgw2L9CSzIMcefhWzB
	 V80oTIeinaFbxvq32wJpwLE3V2pbdxMNOIVqQHgx0Rv2WQ9EVY+Pl0QROVUtUmQOF0
	 sNmu9U4hAPEbKT6DbTtQ73NDz0Ce/cGnSmZAYMd63L0C7ehZFbaZl6ZMofnsuBIzOk
	 ZN5O6Yn3m11dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90998C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094913358.19086.10739157451200957776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b9902c217ccf52e80d9640589a8037b71ff770a74c05ff8dcd89c06dcba025
Date: Sun, 02 Mar 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740949133
