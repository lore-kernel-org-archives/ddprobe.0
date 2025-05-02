Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43437185B73
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746213594; cv=none; b=j54hhC7wH3mvzE9lpElt6qhXBmhBuo6lIXj0eKCLxO6cy4dlwcNhjSV0FU6tBm/yWX9dhU2eyw7mKBTgZwLmTHrSQin6SEZySM5KgpmOWqk815lRHSVpuiypRbZJDFP6ctD0KQMEdywuKHrrcbxPoUmHEZe4rwttbESAyQG0PTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746213594; c=relaxed/simple;
	bh=dwb1O4QywwAKioITFuNSXVrktb0S/4IugKMRmS/yfgE=;
	h=To:Subject:From:Message-Id:Date; b=hhCaMXJFDnDihZQOm2MDM1IXyJd/8cGK0MIhQ3c9HlzbLS3+Le2l7LgWDdfJpHL0ncbe7OjVtPb0Bk1gxE4LWSn8dDYCbr15NhspeWG3FBqhfF7UTOS8MPaYPZukEWwdhZrvdCqwpIvSvaM0J33D7oRrwgqELtJ9jNPARnVctck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zbe2V42f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zbe2V42f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746213593;
	bh=dwb1O4QywwAKioITFuNSXVrktb0S/4IugKMRmS/yfgE=;
	h=To:Subject:From:Date:From;
	b=Zbe2V42fEGtxB5mJ62iAeYuHn/CynIOTW/IwMCul1LC0mffFrQIUZcfnwGKL637eg
	 iuvVLX/+LKqHlVy+KZvM7yEG7EPhZIBph7tXX+e7+BoIMEdN4R0BLBUfFDsmtWFRuU
	 PLF+foiIyMtke2jPl3x8MNCaBD9y0niNEGik5Kb2Vow59RKZt16sQVO8/mtargte4v
	 rZBpyz4b5DOwcaz/fKpUGgwRk+PCLSxlmyHYxgm1IVNFLipoWmgMo/gIEK7ubf5SYL
	 Roz731KM0HfLOpGPmTGNiDYaPzlFWfW23+tlj7GRr8zsFaFMRZwBAGDF2xmTuqPyj/
	 FPRayH7pDN3+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C18C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621359357.32467.5968130901336267388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0386719845ec4125059b2c2b94dd733329f6949f69a67a2078b34c219eb20cc9
Date: Fri, 02 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746213593
