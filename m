Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED9B23FC4C
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757414994; cv=none; b=exkhm28aXQ8MBelI4R+pOcAHPkReaFalEzAjkr4xS+od1sRkXPzjNxuycoa6x/KMxp45HX9NkWa38Bcm3PElmZIicUwvqocIAHzriC2RdLnDvUaOsIf4+wYnctVm57qI4Khgl8bihW4jhr0j2slA5YDgkbFWkcl3ou/GVLhnsdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757414994; c=relaxed/simple;
	bh=gqabqeWz0cGzT43sIDvu6yJ2N2J8AEeNuw7n00IJv44=;
	h=To:Subject:From:Message-Id:Date; b=ASg2tldjRq5bG3gmOs6d+3WlQIKKes3d3VIVKkRX0UPOnKTQJqEys979boI/FY+tzRj4BK8kaHFaC9+/QjSnT1cnzs3A/PXJGQjnh0nUAl7Gn2rF9R6sMI0GkYJOs3syq0Qh1BQRsSaClGVxPmKjVSRVnsqapTz3K1C/NKSDYrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIQk5hKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIQk5hKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A227CC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757414993;
	bh=gqabqeWz0cGzT43sIDvu6yJ2N2J8AEeNuw7n00IJv44=;
	h=To:Subject:From:Date:From;
	b=gIQk5hKW5ijfrZglgJAyg8FhQr82WofFOdqMPYTtVBjK0wEr1kQg7QppxsiDhL2Pf
	 Oeoudg/5SZc1RPnql6L5VzxZF7ngzmERVNwwbfKB5ST0IxIEzqBBayW6f1yQds3PxA
	 oHdCKmDp6UqY3CZO1Pd4kIsZ1rpV3edo86798nFZ0x7YCYmdUUDIbXSmuPIFD0mMRt
	 fHsJDaHeh/UAo3MSOxW9NQn6OizhXov+qBajlSqicnJ91Z2/V19lXzcAX5rk73mGMO
	 vC8gH15nji1TEfYyMzhiEcVmOEViJ7LxfEHBCYbBtAhPNU6+sMY+231POTrVWaBzA8
	 0Kd2jhSgeJyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E3CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741499358.16266.8754511859907367779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e246032076cd556f04b7dbe19a1e78a7065bc5a8fd00bb63847f85e622ac36a
Date: Tue, 09 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757414993
