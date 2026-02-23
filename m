Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1960D83A14
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771888494; cv=none; b=BgUlJr/N8v9wZKqMV53WQiqbPf7+/fsfsGrABFs2tf89nkraJHREISiSIe28UiXaE2qDYLFIDtjIk73lsx486FcwV5g0DQlQ99oaYSRJmOkQNeZW39kxvTYpPM4nxBLmu4zdyODa2PtThmYNFI2b8HnM1URBjBGbnn2Iwd8EIxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771888494; c=relaxed/simple;
	bh=hyOQyK4XxKvt/P7IA3XL28xiHJrqff4AuRz6tfBOW8M=;
	h=To:Subject:From:Message-Id:Date; b=Y9+znkTu25cecKEt7jOPIWmG+g+mNRhNfOzmRdtFKIOJjjzoyO3281NBbTgJYUD/gTZx+ALvCqAWo/iL046sbZNJK/tvHnFCC82xBwqUwRUCNEumtGMjdjxQO6XL2WrMJagj5vkyOUCfjcp+n0hZto+rbkjJPqyA26aC9J8DWxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiHvy79I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiHvy79I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39B8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771888493;
	bh=hyOQyK4XxKvt/P7IA3XL28xiHJrqff4AuRz6tfBOW8M=;
	h=To:Subject:From:Date:From;
	b=eiHvy79IjEitofHGFau2B7kT7AtEguQ3rtxEdahi2dYYfLFJMtSGtfrIHGZhLnT7b
	 jal6HKBgw/fgnS4P5eLIbIonlxcpNn+GuUVR4K6YT5lrTDD95dTuNV5IbjdBPAd6zK
	 zq982HCthjwdTWnMWTjZGbEcTSQtuMV/S/Hvl0UEJnljL+yvZTz91V86YJmZTTGpSm
	 VpeN79nMcDOvx9mhiaZCLtbGKsMPMb8SKSc923ud8BQkcWXuReWTkmI+svhXiVqxC+
	 IS82EbaDYaWm0P0xIrAoCjLjkWzY/mIQfrHQuTnDowtZMLdXGSdSmwglwgE9CZ6ZLP
	 2uYqKdap6L6Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2A6EEC2AD
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188849360.4419.5743761118194734227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af32be6af506ceae3ea32882ef62cd208470a68ba3949903d22e33f5cd5cc15d
Date: Mon, 23 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771888493
