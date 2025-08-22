Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D38E393DE0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755825594; cv=none; b=KCflAOHSM7wmfQmJCbFq+mnyUpmp1YyekNlOQXbJQ9/9D41BjF0mK+DqCLR8N/wBEIFzU6Qea6+SNjSfQwuzw7fMFmDnrt1IiF56o6rXnPVBKITD+5HpugqYGOqzjpC7COWsofNM8l+lmutpxADDRpLi8UEzQxrPmhJz2AbrKLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755825594; c=relaxed/simple;
	bh=HpaEl8AA12U4lKp7I1FkoGF20WyC5yRauoW3tQCML7s=;
	h=To:Subject:From:Message-Id:Date; b=LUVmwFrc0VFbyV2uPp5mvSraNMF6rQbJo+fJ7bV9niCOizrEVn6X/MRR5dJuNqhQuy9NW0rnqdlCt5ruBvbIUk7TpSC2WPlbhN8ROgdFjcA2R0BrQGByzVAOxsISyGSzZkt5C94Vhj1ZhWT7mqSL0uWwsYEgqnBxnanKOFbLfg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoX1h6XF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoX1h6XF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A39C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755825593;
	bh=HpaEl8AA12U4lKp7I1FkoGF20WyC5yRauoW3tQCML7s=;
	h=To:Subject:From:Date:From;
	b=hoX1h6XF5qftsyD1tG+ExKp0/V+Gai9WXsaAyibN35cHS5sEZlcTSij5A1ff6hm0z
	 uUFc5P5ioWQyhYyu2D8J3vtq5YLhLoNHFabDyUP9GExS5Fljyrss5nXPTAL9agU19k
	 1bTIm15KFUDpLalh6DDnbCNWdYavzFRluSq8u6tti5hG80NGMXUiq/bMzYaYYyQF3F
	 oWD03OBDSv+zIEkrB0RGjXY4WnxYhFiCaN0Kz07QIRSA88B/Ma5gZ/FdFMywWUzLQa
	 gu8QXdap90rr+l9CcO0fLYXVIuOxXc/xFxGjsuSnyPaP3X0sBH2TsDUPvq8UQvk8PF
	 80gLeoWfsWB2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B34CA0EFA
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582559358.8804.7925500034292133233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88833321c344718bc2e4e03004373d9477c563cb4d822fd3a3c5f05c5313ddc7
Date: Fri, 22 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755825593
