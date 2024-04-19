Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5750D7D416
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713563423; cv=none; b=hBYHzh4OjWjE2YQexIpkReiyLiocNDTCGlzZu+WQ9cn55q6K8Csh1TcCz3EmwK55tqQL4TKKhxyCRyDiRjyynGfUN5EnwRzzQU05z/QPzEjqDVWBtgAvoNi4T17zLm3BKLwcev6HahuCui1WRcqLhO4YepRgFO+bModpPO4dO9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713563423; c=relaxed/simple;
	bh=Lx9D33BPG07evFlV+Idz5zWTzbTcnh76zNG7I9Qwims=;
	h=To:Subject:From:Message-Id:Date; b=nQ9v9Ury6xcuQh1YKHnDD1SQueXjcSqBePXU8BieB2U8/5GCdWikdIKJjNbkZWCpnEIfBw8C2VuVg/iMJT4PKsH1o2xgj+YywFf8GaS6T0S/gbUy/da9mghX9ut+En0cCc+3iS75Bhrpjbub8jdeQE8qKSBafz81DC+mIlNHtpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2fad1tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2fad1tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60B5C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713563422;
	bh=Lx9D33BPG07evFlV+Idz5zWTzbTcnh76zNG7I9Qwims=;
	h=To:Subject:From:Date:From;
	b=p2fad1tn4qmhxwnWjLl31xAbkDWmospGXJ7u27+0cF6gl2dJ5IzNGshpSBhv9eqmP
	 YXpp0mKzUuD99R19RwgDfFR9GTDqMA9iLArSuZ+M4oQimG9eDOHJcJYSJICsSvd7aw
	 +qZwC3gaYPmViCCpNwcky64WGxm0Kd/5+dLghK/7EmaN/XPt/PbMI90O+fTshuN42q
	 kOo+agBFTDgCvdSlFAm6NQAKfW3E88BYMv4iyxP4Zp+4+s/SaxXo410a5YmN6dTqQI
	 0ng/WGxg62WWmPOAJzRyegpNWC8LtWiFKSSfLsMNB1ORnZcPKt/m2nT1KajeH4m+UZ
	 BvB66LzepAnZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA948C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171356342281.22342.12349060418203250821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328ba7e6491fc7890d3e5a12810402c4776d987f59aa91a73d52bf69d9097934
Date: Fri, 19 Apr 2024 21:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713563422
