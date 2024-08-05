Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B5017C64
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722866754; cv=none; b=S1iThto9xoU8GkST4WraWryCvxPdEDlF6bEVRcr+SWILyubk8sVblVOzrrPza8IZkBN1hIZBK6ksQEqgHVdc2dnBhwBfOWE6gZTSg7120XYRhFBNrvQ5MZEMdSm0/4+aUCLnlV/A7Go5Vy0P+L5q4PYt8Aq83MOFNFsg1BVxcAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722866754; c=relaxed/simple;
	bh=D27j62nBNJ/OnVmIONJF8JeuSK0GggOTK2RZKStW/iQ=;
	h=To:Subject:From:Message-Id:Date; b=WfMN6doCOPfmIz4numXUpyU1T1eehhFjEILqO1hUtQJJ0vTIuKzJD12ow3eil+zU9auKIBWNpxFcdAUeNO2KvxPLOrqs2d/kbz4Tut9DXOg2370pOmueNXNvaCGylKTW/rnvNuEebR2zNDmiEuK2hjKLa/ksmBNctoUvdnGl7TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RohxqMf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RohxqMf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D3C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722866753;
	bh=D27j62nBNJ/OnVmIONJF8JeuSK0GggOTK2RZKStW/iQ=;
	h=To:Subject:From:Date:From;
	b=RohxqMf3LA2IXewTIAx8bNZwpPTIC7ztGwc6C7qg+GVHwV+HBxWXX918KVyITyP5f
	 5u8KpRkvhol1raYaQycJ3UtihM7cpkpuhww/AFKXkqsuLcDGueXw1ATaW3PXTdVNFQ
	 CC4KHBzTKr2jVrWwUcG4ov9zoqTl+GLt4IT+UTBpTxyL7dadIwrV6nSIhl3dLzj0Gh
	 QBBdU0ZqKEwPJbS/7VNO0ugP9I+qTMo/tmIarO5TTRYenP8uoMhAyS6HuvIwLRTuD/
	 B+Y7e47Aj7lWjeZkRh6AIbo5YHK22KpnxzAg+DEKlw55Jm6GLgMXlNJNjpSaA9b6JL
	 SBl4ZaQn+z2ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B2EC3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172286675358.4684.10634867620756622352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff975678be4a9330c5927646061e931ae4412e6f9b6a0d4b0c6d56b917444da3
Date: Mon, 05 Aug 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722866753
