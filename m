Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B85A94B
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717239863; cv=none; b=LizOFvdw3Gc00d0bo/CwvnRoZiBvK/VlrwpdDjGwe+JovH3l+8KOo82G43ukCX8F/zV8EaBQqtkfDo9Eai1HZ/zk/hY/XNYaHn5pM6xFv8rwlRgg0Uio+pV2R+T5ZZX9uCX9I/7P7x4QEWA8cgWE5I0FRA+WBrNCEuWHLUUieQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717239863; c=relaxed/simple;
	bh=GxFdgAe09C+xS4qMCGwc/fWnOjMNmRPFvP5tUaMxZp8=;
	h=To:Subject:From:Message-Id:Date; b=GPhyCuVoGMxXWSS8TjQOkAU+Ihn4GzfrjTne+jmf/DPfzv6CopVksYflYhF7A2Fq1XLCtGlRfUAfHXwmveyaF+OKNmyiEg5xWaUPxreskEXFMJInTsBpK8WtQI/d9sc1CcXXWXL08EsGM87LQd3i7PcXkgxOaqCCJqSSza2chRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMTlenHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMTlenHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED5F4C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717239863;
	bh=GxFdgAe09C+xS4qMCGwc/fWnOjMNmRPFvP5tUaMxZp8=;
	h=To:Subject:From:Date:From;
	b=iMTlenHZ2OQvmzH1Ldz6+HBKYx2eLGNrtDxJSlbbAskGG70tvscXiu8I4beOOwyJa
	 R3vYtCEtWNw+rLn18+/FlAT6rKefUyvHRAaLDw0RIH9b3tFdDBFGPPaM1PvD1f2+Gs
	 N0zqHhGoVgmkME+qfza9CKVgZHO12nS8g1ih79516QkLzvFTmWzaqTGazPhfNSnWzj
	 r67bDxhoMEV7PTVpQa5BEjWDhs1+UZa8u1CPs/DauBFKAcenmb6L5Mqqgbieq9UIN0
	 OimhjhW5PJbnopwo9IpUo0pEsy34dRmbGILOOEf4gFtAJv2QWVmflEQ8d67/Y4WvUy
	 iy2TK2yCFwhSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D43B2C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723986284.13943.1992154097643614607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1afcffb50046683c1e8295f6dd943e0492e17bf2dfbf1f9943920cfcbd533aad
Date: Sat, 01 Jun 2024 11:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717239862
