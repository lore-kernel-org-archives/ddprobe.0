Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBA628B519
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752233395; cv=none; b=HuN5YzGhBC/XH4SLV0tS5ZvaGkJpj7xthQAW6IKSQNMXrVy+cWNB0BfTmkikcOC/qILJnHx3yfAcD3LgzMouXNzpbJpQ9NTeLOe2+5okXtFFqZmNqVsEu6N6z2LMpW//5/KcvVaZsNwT5a02Z4iCva9N260Rw+2ofWk7fFpJfP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752233395; c=relaxed/simple;
	bh=zYauaS+nUbr9fs9KdyFIpG2He639Yc5P269PN8r1lFc=;
	h=To:Subject:From:Message-Id:Date; b=LJTZ4ljg/zbZouV+vLbRITGYFvgP9j4QLyyM2FmGus4ux3OhcoDEEXwueYXmsxVT6hioxC8u9y9sfyCvuwj+uI0Jp/KM7bx3ey6OXPkIME+AN2TsIVQVMTh7eg4gunKEpSCxc/K5XCRzRq7cDXdrPT6eXw1pcQjevnXCrHUAp0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqC/p4DB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqC/p4DB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07A7C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752233393;
	bh=zYauaS+nUbr9fs9KdyFIpG2He639Yc5P269PN8r1lFc=;
	h=To:Subject:From:Date:From;
	b=ZqC/p4DBqfB02jSr9Fd513rVtJ2bbPeQE05hBERa2t77+dlvLBPEXt7OOsiOIcAlZ
	 pNS5Vow6PcCChHO1bE3sYQnrutVb/Dof3uhLPvkTb7Gx0KXt1ZpPg2uh1FECEuXpBi
	 qE+DAydQXPtEbaVCPKJG9e/xLUU6cXUeOiDNX95M5bbWQ0JJYgU+1Fu1KvCFNc9wBI
	 xd3G4fcDP2jtrYrZRO307hYIfdBcSKf8xeyzAsQqpyf2l5ZIoRf4jxH25JBeVnVbKj
	 6vGcvtM7IYMk9nS08keeCkcEI1M4RcRhQGSszCz3uLLU2f7pvINNQVaXWjf73q/sMM
	 Ns0UhcYDTQ4GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C7C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223339357.12794.10370775656292892371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e39b326e05ef82e58559ac68f78f5aab62c4849d1ad7f41d2bedad3fc9cd39
Date: Fri, 11 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752233393
