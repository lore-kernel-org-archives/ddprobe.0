Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A67813B7A9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720518383; cv=none; b=DmC3ww2HMkD4pTghAcB1u9eEyI/Qh5bepVAJqZWPmAd0+ZiGEdka2GRXduTRYV3yRcy3qF2UawQHkDqvDYszVZN0J/9ujp0wtzGHK5hyOprRN95lMOKFZKLu9y63aIf+QZeuDtGhKNAsYUAsZDEmAuuRpIem47+1+oRiaX8qLWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720518383; c=relaxed/simple;
	bh=QHyJeUjU25ZifyXB01uWOJ4WAt5gvfCzgCyn4Q6LuTI=;
	h=To:Subject:From:Message-Id:Date; b=V8SBqJ6fYBtapaL6nXroiRPrHUn2KOYrWNGk7/VPxLL8nt8vDFd6jh3aBQPrvpB+G7odRmNilTGeMHYfVKm3yt9RSv9O0/JQu0jj8d7U1fmRhnO1GqK5xnzJeJ3bIUbXz3wOFRv1A0uWHNIMa2GFex5hHSejFeu+zhV+QaCt/2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSn7kvbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSn7kvbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68E3C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720518382;
	bh=QHyJeUjU25ZifyXB01uWOJ4WAt5gvfCzgCyn4Q6LuTI=;
	h=To:Subject:From:Date:From;
	b=XSn7kvbrOfq2Ss7cxD+uqXj5nPWEtgMM68I/eI/9sBbcnnsM44r6VCR61M+eIrduV
	 AFfVetW3hyf4bvWKyhXtKqLqurcUqzmwT+MlZEjWiPBtiDRM4H1KokohDsAKoUrh96
	 cvAYL+efyP48DJetmWqL489IAmwoUagg2wvBrDEQ9XQ0A4FhfZJ989hq2ZSlu+BEl4
	 m2tB9VlUw+7zBQW7BvDIY8kdFVj4MU2YZfRSZVPpHavmYgyt9BPmWm7c5R7OJVtiSI
	 4FVMM54mvkZNepIVx4r7LjevERF7a4vBcLPrN/57lfjMqF05HUilx26MpSJyyejUGy
	 SRKDarkY7bgcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56E7C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051838279.6467.18175710052601468104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 439302eb6d30aa5083af5c5639fab4cd072418fbaac3a8bacfc0c4cb021f1ae3
Date: Tue, 09 Jul 2024 09:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720518382
