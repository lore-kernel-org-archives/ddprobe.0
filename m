Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B4820C48E
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739450334; cv=none; b=Yi93sD6Avc9O+7fDvDP0DA/2u1Hjg4o7yGB0+HYwG3ysHlCHPc4cnBpwroetBx4EvzkLSFzIHQP6E2pBHwffJ9BMytWwum3o3uPznK98RIAuRKKFxXSoR/AMEICggfJ51IxPeWnIYGxT8fjOQ24SohcqMt8o5ZgkJc4Jrn892/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739450334; c=relaxed/simple;
	bh=Kaz7MyJ6M3f+uFCICfiBMP9CYxIj3Spe1dBhH4uhKuk=;
	h=To:Subject:From:Message-Id:Date; b=PHp/gkjxYRHSnA863aEBjUuzdbAjBnOTphVcpHtqnKRIBiKioBPbtka9D+FrxYl5KFlxSkwnLBpF8BwfevAGwhySYK3yyglQb46ivnDeEnECDVmHQTU9O/EHX9sRJjJuu7aj8WL5kTnAk1wBSu+k+XT8oMI+PRq+Y6tUoZI7OeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWVoro22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWVoro22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDDFC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739450333;
	bh=Kaz7MyJ6M3f+uFCICfiBMP9CYxIj3Spe1dBhH4uhKuk=;
	h=To:Subject:From:Date:From;
	b=LWVoro22hhwORjtkT6uL0LPzEgLKaB9tkwvvnF1gKcNRg9ulvD+DzqRxCdlMamUV8
	 s7QsE3P8QRc1YxgIIrdiU38r6SElH3vMDttE9TFIG/rJU+4nJBZSvkPTHmiXxv2l+5
	 bcQSfePPCJ03LAsdnsYFoFLgfR6bAeMdhL/I/dF21GPSqf/QiX0a89BsXOp5zRdheJ
	 YFWlGfOoKyfj/eCOGr1Jeo7x80vqsb1MdvifucDS0Wnz//7Mgi2IykguLp3wYoW6hA
	 GbSFKUT7MWSdLNAk4NopYyuQKV7A8S+n7zrULGVHS2Dyhb69Yx/hjs4Cp9ZeCXySZV
	 2EVUo5a5f9U+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ED5C0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173945033360.1283.12593211292197989236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd3afbf87ba342991d8c04fff6dfaf38fae1411671f2221cfa8358d5bbce8362
Date: Thu, 13 Feb 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739450333
