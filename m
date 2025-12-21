Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BEC21CC43
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766302434; cv=none; b=oEuwNpQ567z1r0St2/PVB1ue+IJfk47iP7zYaeXOrra+Mu6ar1KqnQKvNMjMlA9YZbLTLGmxPX7A5H+ZUwbk99ghQkgIgrGfcLY6QENKW7r7fWh4oCIfnkfGSHMfytezYkxpsE1xnB7lgGD2eeGhvjxf2yqHol17DfBADjhKwZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766302434; c=relaxed/simple;
	bh=GoSfDPrKPqgSiSPs6sgAaN1fu1wMqdUPeq5upv28r+E=;
	h=To:Subject:From:Message-Id:Date; b=Yb454wmnMxrbxOptcOgL98dOk1YtYyIL5Cc6z+Ee9Dghaxy/oftStqP0SCSm/jc9R1Jw7t5KaQ++ZhnhCi+w5qv9E2JYEbZF4zCCq/GOHyOIph1A+fXEmgBwJir1Zs4ksbZ6Exdjj5vYWFaJTXr235zfoWdinYh4+oJ60H7rnsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXI/qBvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXI/qBvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CB2C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766302433;
	bh=GoSfDPrKPqgSiSPs6sgAaN1fu1wMqdUPeq5upv28r+E=;
	h=To:Subject:From:Date:From;
	b=aXI/qBvjkloESHese8whK1Z7efN7CbdZSrQPrvTtpaChumYiYVpNNn6f+IgesKoG5
	 NzlJGj/hxL+JM+LVTyyHYNt5Sye0ElpKYb6Jirbr3GzNOGKCBod0daxLKdV+1NCLig
	 TabYp1I4t4g934Tb9sPoM2dRYckMzP+4IxIQuuQgbRofjiK5j+2EOz775+gheCVom+
	 iylr1OmROU5oKWR8bEk9pLTIW2bHseozkLbYMgkCwyrzvvTM8GmdPpv9tBg3NcRQpa
	 VbHuvBZ8iV1DRvbXsTIXOa4F2eTEz9vtHZlcOaJlko72moLOFIGN16aZxOmtaFpTxE
	 +AImj2+2Ab4YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91583D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630243358.27385.13917822105982297247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6395bf9e93947627e7fc329b82330edaa9a29843568092f2209df66ef109a2da
Date: Sun, 21 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766302433
