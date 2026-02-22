Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3471DEADC
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771740894; cv=none; b=Ky7yll1Led0nyaXMmyQYHY9D6e40LVvAEVF8SBWAfqOpMIEbckP167nYZ/nwAYty7kT1d6eNQwkoVfD1rrqY4Kx3OqhEtI1N5Pfa8HemSKn9HwcGA8O+dWH28scpfJIj7CMk9I2XAcedfFJah4NZA074xNyw15pvuLu/PIs7uLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771740894; c=relaxed/simple;
	bh=kmtYxoRCHhUG9t3x9B75vx5FnoF3p4vXDSo4IxHloio=;
	h=To:Subject:From:Message-Id:Date; b=NAWvAkhDyjU8vb7n/lJot4J5Zp/c7alwt+XF3bavqcF3ii0+ae26aXsCXw9RMW2jqbi7NfAaz/6TxQmpOC8kfmZn+MaLhmyzOmhss0lP7ISGXNPzmbAyLOsjBw+TAtqBmig7EzQHvuuoYaVwfSefooo7ycojt6FIgQnktoJPjU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugbUhBFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugbUhBFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6FDC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771740893;
	bh=kmtYxoRCHhUG9t3x9B75vx5FnoF3p4vXDSo4IxHloio=;
	h=To:Subject:From:Date:From;
	b=ugbUhBFnOEklpP0VKkZ5LR7O0BWY7HbBI5vySfjaxAbI/WtSPBMcfr/XAdyMiGNZS
	 hM7HMCKNKtOh3gxJons/SryLv4ir2AoYTK8+EU9Qgt+NuXHKN4+4oSirDDyjDt5FmS
	 Ui4YMCk3zovOXiifiqogtSLS/PLSHMikeJw182uWSQKoRmiu562Mo8n4jjo62ve8fJ
	 s3Y2TVJQss+MiZ3nDljKHRv1oR9fhJIkyGPUAWAlDhQUb4clUfpiBpfFuU6lGgQCRs
	 2zsGtHMDqvmPcPaaqIRTylBY7ONM9mmAFG3mRbDn/VBot/O4Jvwb/Oh3vxvkd9U9r6
	 AMqZIHc9AB/jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9647DC61DFF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174089359.13686.17013641174486453061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b9ff8b3481f680755cd57761ae20f5a6fa2db53b2cb58015a8581d784583de
Date: Sun, 22 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771740893
