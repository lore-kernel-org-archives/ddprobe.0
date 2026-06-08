Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411F92F872
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780884274; cv=none; b=XhrOJp8JXv+T/5WItdLGzdRIxtwB4UTkoYifF2L/mMI9ag10hEaUJAYy5OwmTqNk+ksdG0mtagwhOdwvx7kj0j44PEYLvJC3dkr7o+Plh1MhEY/DMjCtFcZqB6IOyz7cggKK1/DzTZXCAo/IJBRKfwM4WZoJS78F9CO/+DRM8cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780884274; c=relaxed/simple;
	bh=1DQinkRxWQnIP6ngyI4O0sqizCoCxwgcHVc5b3wU2xM=;
	h=To:Subject:From:Message-Id:Date; b=LFauIQHdjDGda/epWaNg8XPpjUxbryc37QUAgAKEq6oc0XjEr74f2piSHI+zBkWac0/YJTVMBIKi2ymwjmF7FGCO5For8GI8H6gIR8Kk/kuTSRhtLoTFZxL7GrI1t2MatyBcQQAg6NYW6lSoAwanBUcRXzlQSvPVgqRkDGR3kfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwcQDIyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwcQDIyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C968EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780884273;
	bh=1DQinkRxWQnIP6ngyI4O0sqizCoCxwgcHVc5b3wU2xM=;
	h=To:Subject:From:Date:From;
	b=MwcQDIytaZnluypCR2o4pEb5foIfQ39xQRq7INaGeTaNDc5ktGwbj3Cf6CmbXzGgn
	 ICM0+tH7rhko36wg8LJqd57kU/WJddtMCa/i3j9SbD597/9lvAzV1UzEJkyCV4CC0e
	 9TiksWsLGiApi0zUM9sHGCh7f9wh0Jq/JucwqJAXAEEXGMEjaNihQLY/ABYMq1pwcb
	 MOzZpsKWm3EuYhQdLZ1rn3aqWszHZQxoUhpeYCMB6ww1wyjU4tuAdAVzqnDKIKPWy+
	 SpT9Y3qdg+dAi7xNSyY/+Om9lvIG7pD3WnidEHDnVpJUKQYaN51+EKBKlJk9y18usa
	 WoVC1WZLtufjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF87CD8C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088427369.6273.5426821490858357340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a62e57bacc1fa327056ea10e36c27c4771ec5626c7d06ef38a93427ae12e1c4
Date: Mon, 08 Jun 2026 02:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780884273
