Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A9126AF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742627394; cv=none; b=m0NsPproGsTQVnur1YkLOl9ilahhriREEyepCJjxb5Ahet6wMK54Cni9NnB596OlSL+FA2KI9H1CI/wtkug5C1qkLH/w6FK8df8g+HDifwTmNOF2GTCzowMniUObJYpQo5n86gf8/DXDX26ZY1oCiR6aPpPw8zdeIwVklEWbnmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742627394; c=relaxed/simple;
	bh=mHJWdqaegizknW/dqxDy49cC5LdNtuuczX1tfdPSadY=;
	h=To:Subject:From:Message-Id:Date; b=K/oA0TymtKo8yIAD52JtgY1CZRRWlVh7yyc0dJiPCgBS8MTkPoIRk2WH49MSIqW3N0FnQeGvLs0CMr3/DGzLOPLXwncCy7tUbhL4Fln9fj+WnSAfFPyEb4XxZuGaeJQOxwQjMEAduzA3WPg0iaaFDbjpGBA9LG+XH8I8GST2iEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGoOMEGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGoOMEGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89CBC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742627393;
	bh=mHJWdqaegizknW/dqxDy49cC5LdNtuuczX1tfdPSadY=;
	h=To:Subject:From:Date:From;
	b=AGoOMEGmhyGvAsg1PN1Y2AMdxCXRw0NMPymhijXi7pnPtnUQQJoqHiQnr79K+rdDw
	 3udGYGhMT1lEQyjxWiiTkTYn91DstnmqihDqubVLqSnVvx5ESfIblgUolX/NSgCItU
	 91lxuLBmQUhWxQr7vWnxyQ/My2ZfQXTxpgG+Ne9j2yVb9jGzNvUdWhVuSl1//5GdJJ
	 y6f+h2V5yj4XKNzkTLXKgSbj6cwGuoHUPSJVMT0Sq3ogbDZJX430lxSsdzUPqZoudq
	 B9ltjN1X0D6CUCbGbsvQRooN8t5h+ZOzsclzi1Buk5PnNuRnHPhIKu83Ml9tCuxh/L
	 eWcIDGEgCpkVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E74C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174262739358.29036.4430427973575335307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c782f8bc7830ae6a5a4a8e7fdec5453f40e0d655a673e5f9792eb48d1b90448
Date: Sat, 22 Mar 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742627393
