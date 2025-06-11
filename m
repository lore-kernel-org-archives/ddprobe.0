Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4E8241136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749676795; cv=none; b=R6TtzYeEH8DNCtvqRJM4cHrS04VTTd/lA2NKgSDRILttuXbcnPBPquUBgRVJq2t2IYdYheOp/4+dhg0SNvAkZ2rRD9tFKYZVPBNDs6BVeo5WqnDMbbrqrzM/T/lx9m+1QtK+eOjuWXi+bGq7J40djjCXspr9PwvElDW2NL5U9Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749676795; c=relaxed/simple;
	bh=BnOWYWDDUUgf16ctEKv3D7GhLfBFkxEfPA+kAFXp5AA=;
	h=To:Subject:From:Message-Id:Date; b=TyQoPBkf0+o14QPGari34RyKadL4h4zK+dr9YzlnnlMxjCfs/7QwpIO8vrA3y6109oVIV/CIoxhjq4gKJgMnZeA1M4v4chb/ZnOzgJE8oBjQYzfR3rnfz/uyg5dv2RgyQ48N6qZOIjjbmtlHtie+D+MFqdh6dg1h2y6gHxzVhss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6nJYNCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6nJYNCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F2C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749676793;
	bh=BnOWYWDDUUgf16ctEKv3D7GhLfBFkxEfPA+kAFXp5AA=;
	h=To:Subject:From:Date:From;
	b=j6nJYNCI7Nqs33rHuJepjGM0lgBjT4IK23AqLczjjV6zuLmdtSGwnU/0mMzjiBQBA
	 WFWilVcJRI+pidqsIGxBs4X95z34ezTDM8fYsp+J09ike+Hdx6F0Csaz64+QKlv8Ga
	 RnDSpCVralm1I6SQb313mQA3FxQmKhBL1kiTqtxnkEO/vJ8OCY9JlSL1S0Gp4kungs
	 WFOSzzkxBH+vnmMLxJmAb1Bv1Mfq9AMoBKtVhw/ax/bETQAmRlCG0bYW7zJ0YWQHoZ
	 BQh2A32GH5oMp6pp2/urvP725Ia6ezN5cJzGKwa4qxbL5pN6QpjfQgatzs8u5eHezN
	 gWyw9AlzbFQYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C99C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967679358.1899.12650558614354925899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161ac4a3d3c5be7ac207a6866922e9d83ea840b5ee17c41a7444386b04d43b58
Date: Wed, 11 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749676793
