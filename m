Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1409939B96B
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777376254; cv=none; b=pcLxBBkFZys1ZBv24qSHO4vmMH5wXVTOWGSE3Z83JDCXvepA36MlSB24c5ZgktPDTZ0ekKZ3ivpslpB5PvCjtS/E00IK5RQBcAzZC7xXRRs4GEUZj7CoQOMl45+5G1kF64v+xCMmBrMyaBg/tmEzaEHC64qim29IioZlTvV8v44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777376254; c=relaxed/simple;
	bh=5Gn1rk9oR/j/01dW5EcRqcSabIMjSV8pYzgGpHH8NAY=;
	h=To:Subject:From:Message-Id:Date; b=HqMeQKrEMrQzCIaEwNdsECWDMxKS6A/FGRx4GXmjFkcWWEqjlVu1HwqT8sYrnn7Nvyjf+zy/GjtDGGzHtoczWQXNfcuOA2pRN58l9bW7km4MT6mU8OkyAyn64X7fUPeRurHC/czaZP5RhMBHYPVR9OVYuNQHJ01mFxQvVKn90Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmNYpW7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmNYpW7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA202C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777376253;
	bh=5Gn1rk9oR/j/01dW5EcRqcSabIMjSV8pYzgGpHH8NAY=;
	h=To:Subject:From:Date:From;
	b=pmNYpW7uQ7U8Jq8A14OkLRMREx6rmfxq5BrHJD1kP7fPVGNDuqyobR+kPo7MSvcCr
	 8/plcANo/jFVIbsjMrr6C42mX5T3HIaMxwcf/X/IKmP/SHNGoj46lYNYahVCINAZ/V
	 05v2VADHIzFfaTHGoxJCJegdSBzArRyUIJ0ViGoLSCu/YplUNr/dEO0S3G6PDhMC2a
	 0yYwFM0VU9A+ZAMvRYlr/CFFIi/8FBUUVKp/cV3jYexaf4ksi4FGQ9wlAZK5I993Ra
	 fCP25nuWka8SYamGAbDXw1BPPHIza70ntzpEzZV5qr8xA/mU3okk2T6gYbb9wOLVcI
	 TQ6YFoN4MYjqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA322FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737625368.10678.8183620658468697542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a8d0b6f22414abfcefa36e46f74fff48aa9d018f10e320b179bc875d2331c28
Date: Tue, 28 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777376253
