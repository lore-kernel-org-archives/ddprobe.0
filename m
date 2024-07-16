Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3A021350
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721170523; cv=none; b=niU1Wjh7zjG63Ur58hAU6HpL72ITQrMgg7Y/RkfadiDQUijDPTqGpkSrbet8ERLv9eEntoN45s4enKUllptaSsGvnjCJQSyqT/gL5VunyukuQHdGqcshDFTZa84N2YStktvUtjaJ9KhJ6WQETGEpBWt5oXQCQ+a1QB8Iz8bcHq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721170523; c=relaxed/simple;
	bh=nom/JDsiteQKIV1jMSvRAEc2Bd6pJKlM4GdWUKewCiU=;
	h=To:Subject:From:Message-Id:Date; b=qUa9t/htxSSjvgaY57U9FSFHtClSsvstrkEJBdwBxNVqxD1/iYrxisrbk7nSByUQ7lw2e75uCfPNFRhNsfeKSkAYsr+hcSVwIb+m6pILIps1q2Wm2hIEyzaLWP/0R1ui+wAdwsBF9HkSn1vx7IEx1FwHBh6p3+wDpt8exlgzQoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r108pTE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r108pTE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0336C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721170522;
	bh=nom/JDsiteQKIV1jMSvRAEc2Bd6pJKlM4GdWUKewCiU=;
	h=To:Subject:From:Date:From;
	b=r108pTE8psemuFlpeuVJ4+5wG5WGElpqlGT3kaey/V9w59EyuFFuuzLR8tXtVTLR8
	 7UhAPrODZJn7bCTUjfBuKvhfgwdv44c74+DrF9w4NtS85cR0GuAGC3t8ybFG7y8cuS
	 Mu/JaqvMichhq+ixmTBBzPLxoVzv5HxrT7GGSdJbPU7/xrgHHSZGzNE/a99/QbtxPA
	 6vqG2xlWGpHofA2ptpjJdSoRMqwrvtqiOhpWMLVQrKNNhhgMoiue+Bp6J18ku6w3cG
	 V4bL1VFwVl8LQHARsnvL+HZeuUNOZqARWrk+gm1eaJ6k2sCAwFUTXWQfL6FSmtvIh3
	 19MK9j1jsNbMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9E4C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172117052276.14414.3073227246630378871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebf2e2f6d2a30f4c0c4ab3769e510a1b9885848aad51302f675b5e817e379ee
Date: Tue, 16 Jul 2024 22:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721170522
