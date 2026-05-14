Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B69366820
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778769634; cv=none; b=NxQoLOSYOOYTTeWmvTmkOUl7HbtG5bS15knxkVRj1sRp8z48r5f/c+6Ep1huVaRpUK2p5i0zvKA7FGeR/2lE7wYNdYrdrYOc6MdVbDPDIIRxXmB+Vwm+1oU0xoMuQHJmUbZ5Eh1iVchwXJzR+Dhmz/JioBIuaNMxnSt4G/AOgVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778769634; c=relaxed/simple;
	bh=F9gGUnZ0PjRLTTv5V0T6mJihkhwgVW1hTuTwlP/zTEM=;
	h=To:Subject:From:Message-Id:Date; b=KoBwY0HDEbENIEKDytESP3Zy/ZNqT91xIjRNWllhpVS51xlY46u7eXl0Yn0TCnozE7vhe/j9XIa9xtDHmRR8UcyDejL6Mtva78MX5zf+KcdEDFq/WXCkuIxiCLKrYZ8fbhfPjlGBuk/rM5y4cRrf/BIYFrRMIXf0Xt6Zv2VWSps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foqI4/gQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foqI4/gQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B3AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778769633;
	bh=F9gGUnZ0PjRLTTv5V0T6mJihkhwgVW1hTuTwlP/zTEM=;
	h=To:Subject:From:Date:From;
	b=foqI4/gQCSF3Uh9c3iS89NyyOFObXEbXpK8aCT/ir1NQAcq8S5bHZCMNbtXSaKPKS
	 ICZENQJEx1Zw9DCJBkaKYJTzDK6RhL4BQN/c0mXCU78qSxUPEChNKwaoNlPgImtR1J
	 /OZfmNO5PQUbToSNcoCHJFZ1+8WfWbATXfADrUl3F1h04k/UUkz6d+8AdFJH0NZ4zL
	 iFNin+1Kki2hcT1bpMtn6uH0nbAEJAVeumJf6wU74pJtbbIlZAqVFhaIBLEyNMFXFY
	 7abJKnT216BbMy2+7XRRv6N0BFTlXpR1B2SIvlKAGn6B5KZdqdSuSo6Eeog7fQzGrm
	 CcpyammzL6FNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE280CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876963370.11282.8890703775851111792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583bcb90a5e6bee0fb801296bab40b5e697cd131eba5d8f192d2b3b77ca172b2
Date: Thu, 14 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778769633
