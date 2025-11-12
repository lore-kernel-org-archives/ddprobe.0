Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F058E199949
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762916994; cv=none; b=Ucv+KFx5Rkr0QDuS0wDiih7CRwvNeXxCSlHdRsEZwbSpo3SJ9InYX60xxAivzWPaPDVz3OYQQpxgqJJ0f3NjB6ud14oNzNpOi2+zAm6fhxKEC7H1Tm7oFY+ptMFfUBTGy8p1+ztg6IgETqFIO0B0Mzn5a7jl03VfVU6Um2Bb8d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762916994; c=relaxed/simple;
	bh=39QUUWNb1y35ocoX/YnZdhduE0PP/FuOMnEVLcGA318=;
	h=To:Subject:From:Message-Id:Date; b=kSZZszOo1Xwz54qR3cIx6mcSBZ9aSQ8rNqtbatsTV/X0gYZMbSg8CniAzjE98h5fhT4EdJhCZKHXdw60K2avXnr/37NMGwSvBvLlKpgDLGZYlgCfI9DL7GpnGS3fvyYjCwVbpgtH8LWpeQrvR6S5X4PImnanB7bCRKMSoKMo0Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVbapk61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVbapk61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B13C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762916993;
	bh=39QUUWNb1y35ocoX/YnZdhduE0PP/FuOMnEVLcGA318=;
	h=To:Subject:From:Date:From;
	b=hVbapk61sRCmkw7gYsxgwRP5Zd8itdkEyhGSwGSSWpn443oXzVf7X/kx8PNk/Puzj
	 jKyrBzLblL/gzvki9Npeml/wSAOB2qCShDEM6b5N2u3+7uW4T/q2e4SD4C4Cp3ZZfk
	 gx8yelPoySEr+snow9jGmeT6Knu8s4QpzwIPPe0IxMZq83E7NL2fPTfbDr+mEQGMSN
	 Pc911ZoikI7aR9dB4TV5GpAZeLd0QFZy+ibd5PSd3KLeuoibcXWY5EKLJdsdZmRu92
	 2x3ZqGrCkoWDxUdf7kfcPuBS/nQjUjcMudXn8NXasP6Cr4iRT0n0DvaH3dVRbK+smE
	 6pJPfUYpvloNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DACCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291699358.31333.2095471741568634302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2125e1de5b89f70c2b71321c63ab7ce59458f8810100f24d1bddbdd201d8e3
Date: Wed, 12 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762916993
