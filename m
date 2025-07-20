Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261D9A937
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752989995; cv=none; b=Ngp0fI4ebccmrZDaNLHxqTlXNIk4WrVopsypSdRaAmnovpdfDT9ByvtTzW5Tl9xNtL1EF23TpAQewSJpZ34WWOWjyOajX4NWwV3Wlw313wE7CySEzha9+yzDpDjigUhfFsciWtV8x2BmEFQyc1SOfREnb7N/H+HpQEkhyEE1Gok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752989995; c=relaxed/simple;
	bh=4j8mdY2rcHu06jAvXH73ch+g1uvaf+uj7u0u+iwmaSU=;
	h=To:Subject:From:Message-Id:Date; b=JnfgDeysrH7vIgfvBG169sHqVBHAQZ0Xb6pRc/VDHyUvwjdFyfv4Mbjgh0LYah1Eqlv3PulNdHVfVeBGbPJQKPJWVWc2Ubd+amU4TPOjUvuedFe0mGNaDyGzZ1EMyudCX0oHUf+yh8kCLrlCAGXizcriD+1PTOeSsIcN4jsehaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uo1EzIhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uo1EzIhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3821C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752989993;
	bh=4j8mdY2rcHu06jAvXH73ch+g1uvaf+uj7u0u+iwmaSU=;
	h=To:Subject:From:Date:From;
	b=Uo1EzIhs89MZ8InAVvD15NvwyYuu4If0UVFvesvgfejBMDGjUnUwYJN4XbihhpoJv
	 hxyZN8dAIKlaoNVIyrNEnsvvD4GrWS/F1zXz8WJQHVj3QFa7+K0ukqxwYI2CqSTZ/k
	 fBEMcQR7TofSVT1Gwhu9cl93brycKQMxDQAWpxeE6Rm80hv/Un73FctN5mIZn8epO3
	 nIKfE+Ijc06V/ilL5OKiRzuhP1DhagQ2Ki4bgOVrBj6RLzIVpopn5IfOHFeaiDamOr
	 LO/bMUoaHklAohztGw/ea0CFl6Xfiaw/tUr1QKBBApKDWARLaC+TEFW8Dx6+v/7kol
	 Pd4A7kfij4oIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91612C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298999357.26115.1535269351497545255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9755eb675d740d9ecf93a09ed0ef6a3227320746203af5808ccb459fc0e4c90
Date: Sun, 20 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752989993
