Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483F476C61
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748150394; cv=none; b=kfK5Vpg4Bm8l7VlRyZw8PDFbBQJYI/+RNPDgHsWY2w8wuZogNhbI+C+fBMSnvD9rGal+qGaA/NFsrRgqhWCla6CeBgoRpESkpEm8v8E2vnKCpPpc4h4GpI+P8aZoqrljab5JHNaMXQc2nsArvB1oJA5Bkphi6cHE/awmPWjK0/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748150394; c=relaxed/simple;
	bh=/tvRhosIR7R1qfpj1FO0ib6pOrm9jFf8LGEpXlguikQ=;
	h=To:Subject:From:Message-Id:Date; b=R+PguD1RW6YUs+6VuoFdIVaWaWy02YwM7GRXUOW5QoqQMqX7kU+1FuE414q/hYm1NOGMzWKUOmNXjTjAcSFkZXjdpLynLGdP8VKwCPb1OxAR7WjtvR+xZ/aIbKhqqDA22lvfvZMAEGorwD1hD2NNKqLdI2MjLM681ZD8lTJpeQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAvR91NB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAvR91NB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1982C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748150393;
	bh=/tvRhosIR7R1qfpj1FO0ib6pOrm9jFf8LGEpXlguikQ=;
	h=To:Subject:From:Date:From;
	b=fAvR91NBeQJnAO12EWazn9VW+PpYx1S9FJC6CZhjYZnu6zREEztFk/esfvkuqhzW4
	 3uAZfK4sjTqXEy1Hw699AG32/lplhysxgmpAGHxF4MHuKhqTtFBVOvxphOtv6ec/uh
	 dV020Z822z8RfpIVMCTRDzbNfFCW/Jbei88qHDRERkNwDvGkc1PUmcJ4NAhUgK4uXq
	 VZq8z23iEpy6+q+yp/ST7fiTu5qXjrcG39cnVlMzZofhRTwDGxWsO9GjFTnFPxdojB
	 El+SXlo8j2fRBcftnRGS3AKxIb0S4nklReUEeRdjGjQbtxoXuLLY8pOn52MZnrzW70
	 14xRwaIYW3x6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90731C54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815039358.21894.6428321887209146176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233335680643cc63ee0ef3b80f74bd597ed7e10dbcd882235a0636b7d438be66
Date: Sun, 25 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748150393
