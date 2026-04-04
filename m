Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F8E28CF6F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775323534; cv=none; b=c0g9v8DumGaq15lgqrDXENxhxL163dPa5c6PQFMEU3jTHuJdpsCjA2ZAqtSDOUQr2pJrx5tb10cXqjaQ97wMz1hCbVTSN/gDggLF0eFwDgS51/TcKJqdZk1scy84cloYLn6R+sM8GbyIlQYXOHc2ZEIMLX0ycJ6mqde97629qFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775323534; c=relaxed/simple;
	bh=hpcPI95pGOrMx/OUYKB9tSffZlIIoEf0/UfIdTZBovk=;
	h=To:Subject:From:Message-Id:Date; b=iTpdOAp/pMPu+GTMFkAHGo158Ft46D2JEqdaPuxHXcswJYpgONfRX4DxjwWjty/qjCeVHOs9mDe/OI65jX2o4149tzIBaSrPN9aBxaChJOmWxKL+zNf2tmZNmx7nMXLMDnOvyGsKCtxda5uFAgbUfFq2Y+D3Xftus+VWJlqnXZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQP6gHOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQP6gHOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6FFC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775323533;
	bh=hpcPI95pGOrMx/OUYKB9tSffZlIIoEf0/UfIdTZBovk=;
	h=To:Subject:From:Date:From;
	b=JQP6gHOwe2bc4EO8EclyEzzyEo5IcL3mKE/LMU4EBtLUTclAwshs9YxqLgD/OTeEm
	 NEZjdDWeodF9Ult1VxLChfc/lCIRD1JUIfHGM3w3NiLPn/Qhl+i2sGnIHEfD/uJZT2
	 k1FcqqAia9xc9aezq/ATMoNc8QFtbPEg1jVipKFWqX8+qaVpcXgjpr6mZkdOANvg+1
	 KGKPqpgQ9MPxBrp/5x5Xu79oW8iIIE+41sysRVLKgowEr8i08Lnsvrbnp57Fd7s0s1
	 EcK/Z2Y6+So81UdEUC/XtX2+5ptPiGEUJ1PV8i+a/ptaFFdllzyGYD2lbHhRVz9WfF
	 j5WmQXSV61Djw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABD6E63FE5
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532353369.28953.11388276548104987594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c391c190577bd8d903036d186917044f0200871047b99cb3d65e422dfad48b9
Date: Sat, 04 Apr 2026 17:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775323533
