Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD493E6DE0
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773252294; cv=none; b=jQiZqoD1uFeBEc2VBckiyWbjUqdu3jn2hXD2VCBIODhwp9/on8FXhqK2cHq35SOt+3EJxs943E2dSPb1MWhvYGYbtn3J2jFWwbFvqTFK+EpGu+gAugxog8c7oa50TJitrUYyx1eReUZJJ9eah5TrWtlXJkyJCgkPwrQvZdT96Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773252294; c=relaxed/simple;
	bh=ZCInw8KGy1DFIHUKVTOSr6riLGRGLKeqzLtmDArafBk=;
	h=To:Subject:From:Message-Id:Date; b=Px/RSGh5JbaamQa1LnX5XN1j8VpDvk7Pwl0vISEbGwvY+akExjSpJpDHZ3duYimuE445I0Q0XCKAb54Q4X+U2IYDgMepu+ARiO2h5dDDPsvoZzzY2Dd9u/XI9uI866/e0c2Am7eg/dsfUzUOzqj/qLZI8XMtA/aoBQRVNI8s50I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3nrMLSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3nrMLSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49B3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773252293;
	bh=ZCInw8KGy1DFIHUKVTOSr6riLGRGLKeqzLtmDArafBk=;
	h=To:Subject:From:Date:From;
	b=r3nrMLSMQ4m+EMM3m1vGqlIoOfKLSUVjBu6YjkUhGS0oK4rMX9gTat8Zhy6ZSmrtM
	 +qmbwsPNb3YT1VJj9Za5HrEQc4708FVS7XvM74/A+YQOacZXwuA+ezyxERJ4+22Vxq
	 VC3tWGJoNBfesr1tIPVdkYr1RMqiCF5xw0VDhlWa1r2f+PIhnfSt02KrdfV9/BY1qq
	 xpa6vgRbkJCRE0NkfFfk/6b537SjsvChveb7d6mvaUjNI0w9q/9+TzMWMLk2Okv125
	 ZgWxZuqKqhBE4yMPp8WDASdNUDPrZ+DKn43/6mc5nM0+NYR8BmNQ6A/yU7nNzcEHKd
	 rmOoOAS2cG7hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BC51125863
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325229359.29266.1460972053523012132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2125e78ffe45b7cabdc87b3eb38be7c684432f329327fb9f979140999b0328be
Date: Wed, 11 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773252293
