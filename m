Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B365632
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769918634; cv=none; b=L6JMdvyrfCp79FddPoQnzzV3gGjsUFtd09x7SrqtzLBToZSdRlAdIrBRUI29bbglKwRtfc6RUqHCU6aQTzqFMwMiW2AKcTik9WWDqZBa1NfLb1MRADNDw/gMah/57qWr+7PvfL3K9JVuMEe8KIqBGZ6zWIAQQyVDTDUlkKMsRmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769918634; c=relaxed/simple;
	bh=wFJrGTOY5LPybQFubNppCOBDqMtzqptlWUGDIbuV35Q=;
	h=To:Subject:From:Message-Id:Date; b=Isz6/DpfmpIir64lfuAxUJRR5is2VxZ72IBlVU6dShRfogIxw/vDEHCmBgUAL3kIm0w5/B4D4suBWtWFH/g7BWnYC0CDsZpz7HVdY4Edw0YhBU1/Vm7D9VS5hvk0GP+phyE77vo4n+z4NzThFCYNM6+K4oUp2csyNMgDoPowGBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i15H1EgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i15H1EgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA820C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769918633;
	bh=wFJrGTOY5LPybQFubNppCOBDqMtzqptlWUGDIbuV35Q=;
	h=To:Subject:From:Date:From;
	b=i15H1EgVDrDAfV01RF5lEDKFxr4D2YOlSJ4ph+OL7Jb8Jgm1XLEwz7WWa2mmpbD0t
	 MLzGs3DlciGPn6KSwR2MebMx/7ftfWP7nC4MklOniZHW2RLI030K2qJhiEgzBTBRD/
	 Uz9eYYzZ+lydDhCprdFUVSoxEXZ03SA5xj11FVtq7B8U7fHvnWGPyQg5GYfAcpUm7o
	 WnlUrjH5RCJe1J9VRhX29LPixGb4rCEJd1xUiAsQO6eRrmeUVpi8rEEwSvD6vbHPx6
	 k7J6uQeXcDxZEGg2bHMxB7tkakkMUru0rb7e2Wtq7pb1QKZe2bu80d+2dMBDc5o1rL
	 KWRW0ZbSWyf9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9454FE7C70E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991863357.12462.1944851167593860041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be7bd2e26ae325895ee931902fe6e0d8c961d002e96ebfed38b3ff3a2b30152
Date: Sun, 01 Feb 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769918633
