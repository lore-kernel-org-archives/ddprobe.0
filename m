Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6FC2E371A
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751784594; cv=none; b=N1KH1oRuGm3cByq9N7UNDEStvmerx/JGlc5rIMfccSQbxFyvbsUk1GoTxU+PJTauWLzVKQ5uLPVPi7kW+3CLXZoPrNisQPj0YullorMhTEZRXPDPMSCD8hC6hYna/Gy+r4c9JKzjsqKRGt74iEFxoRa74U8DjGhVjRpna9e2HVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751784594; c=relaxed/simple;
	bh=ofopm9tLAbRnPpjtvzgIzvKy31Mo+ahfpdlqJN241GA=;
	h=To:Subject:From:Message-Id:Date; b=fUrGCPkFuPUgwbIZNjfd0ORcKGU+thPSJ6OO4aveGKMqzLPGZAVKmagmX397xRBUSnIZkiwmpwzGLAGqtmr04rLnnbSd8H0EAGaFzmtDrdRE/+HXGigDFonIlQttqUutZiQa67CLgjCSyRM6PoQ8jEhXx4MYNV5W11swn8F4DOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLbMJGK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLbMJGK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D7C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751784593;
	bh=ofopm9tLAbRnPpjtvzgIzvKy31Mo+ahfpdlqJN241GA=;
	h=To:Subject:From:Date:From;
	b=NLbMJGK7NuSj8ju0XOIsKKM23N33iDtU8g6g6qHXMXAgDNq2rsrCj0+5F0MnkZIoc
	 w9CVAVndUnuwaqGDJjkGzfP/hY1Tul9KyDsm02fy3wvlqYyhNaf7jAOifaiEFs7dPq
	 0NsJGBepLKr6NQtKOts2A3F/JUiZKuZLphxA0U4FipHgI6SEISguqFsfky0y68qZMh
	 S7jxOFCNGl9KYy67eo2V9hJAtULK/QsHy5Rlo1RHmu/L++vLlTlGPxlsZfjEu3g1iH
	 e+94cULGY/PcelNJyidWAKFdL3MK6nX8Zq4JtRVsgNKnmPStLqAuPQoq0ydQgMJkoY
	 dR9co8LT+2dOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B6C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178459357.21261.7065169715654125271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017871088fb11d4b9dc6498a92273528f4957614d76292b3437b60421da4b682
Date: Sun, 06 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751784593
