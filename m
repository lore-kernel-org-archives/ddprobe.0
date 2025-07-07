Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEA8186A
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751927394; cv=none; b=KxjynJpG9e6h7heYpLk42gHGfitumKjuumdOGoH7MLR2WnikmlTqs6u3SWgffLAhsRx+LaD4yVE2R2XIk7FR1gXnu5CQ2/kdRLeS3gsGZeK8QrCAQSfGsArP5DUZt0ctXcyoEgU+qOeR198wp5SVl2mRL3JMYiOQoMya7bc2HQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751927394; c=relaxed/simple;
	bh=rWaAKLxu5tQWS3X5DSAyDsHTyLiurHVWO4Ei1w2p2SM=;
	h=To:Subject:From:Message-Id:Date; b=QkJIhjO8wbmHUm8QvGUA9Le1SXh8vY2UOzD/gca9FwPZKjqY1SKk0FiD/E3b0RgBhApMGSchd6iS48vgbByrWkQ1EXP1RP3atJE5Ra9Vkl4ehbNdwBZpKcCcQ83SBOuanxyrW3rd0X/J6AcDxLWmyJ/5RpAQUlZTWUY95IFCIrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sv3JzQBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sv3JzQBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37E1C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751927393;
	bh=rWaAKLxu5tQWS3X5DSAyDsHTyLiurHVWO4Ei1w2p2SM=;
	h=To:Subject:From:Date:From;
	b=sv3JzQBH03yb8K+g2KLUqNZM/NdB9a6fiHugj3RYac/T4cSwz33vqAaDl9PS80B8B
	 SThF6n9kC3Qpr8K4wpMW3TAxG9ZXr1//7E4hkgciuBQmMdMZXyNjZV38ekTIVwjimS
	 qkXDu0bq6GGV0Nlo8s7M8I97O7Xfrb0tDJp+ynvQByGesg8+8ESi4F2MYyex5G9Mf/
	 mYmX2ulebpHS40P1KS5pkK8FXKh3PKonyRFYYCg8MQ0YtwbbgPDAcXG+JBSiRUtjM3
	 wG7l14Kcd1SVbIefXCVauGTKTMI1un8Zazez3m2pAeMpaFtn7fe3aQH3NSm97Oo7/+
	 TZgDkvKvR3YFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50BC83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192739357.24923.5676143198029716221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ba9bfc2fc355830cf80c2b194c3045aaca3e7cf62b884ef1b64b93febd24af
Date: Mon, 07 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751927393
