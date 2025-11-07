Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D2B1482E8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762493994; cv=none; b=BvmaSlfiXXQxnlLrt3s9cuQ53CR3arv32LywqVQL0W50r05EzAJsxmof8uYIqIbQxAKN9YLMz3G5ymzW8SetpV0xf9f90KxKmG22LQhU4fBEbbhl+gaUjza/d/OO4s+yBx/Wx8DebqtxAoE5bIqYcKd8m5vYsraAh8rrnPxCTTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762493994; c=relaxed/simple;
	bh=CU7ACDEM8Mxnn8wrfyUbrZj1abtsx1n9Wdbbb+haVjA=;
	h=To:Subject:From:Message-Id:Date; b=NhRB+HDTm/vm/vxP8VuqkMuSQ+PWoq2tPIaNMsRtywhUYmUNmZIwxT1E2cH4nxVy4s8iYEVDizyVhvHVbhsI6DBDBf4I/LVSJXkK69ik5RB8kugBc+Yx6O6Roz3LEbTRRl0dxRj5OfQh9K5eVPCcqiNmFTsd35enY6/B6nnXQiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMD/nRtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMD/nRtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9D6C116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762493993;
	bh=CU7ACDEM8Mxnn8wrfyUbrZj1abtsx1n9Wdbbb+haVjA=;
	h=To:Subject:From:Date:From;
	b=mMD/nRtzEjam9DTDyKwqTKfipEnlBz269gy70lrO8crruO4/GIJJ+ITlJEXpP4cIU
	 +I9grXpgfzN3BiWYS9K/TwMQJIVkMcqVfiroa1AOpD3eL4fIhl6Lekpa7mA0l1SI8r
	 TUZPRPIugy7KqDMN1r5+OCDdwdgJLm+NNgMiR6eXB+9Cwnef4DRLPGaJX9iRTESGl1
	 Azx4JOSlWyhvUQ0ZbJJi/9a/TexFwoR1gfCsJKUJwfl/P1d9oPa1tkMm2kqkTTXBMn
	 C/2HpXVcW/7TPXwvewq6xXrO7vTfkOxF/joctBYTk4RTQ4xVuvgRRhwr9aXWdbim+g
	 twhjgUk8bp6cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B115ECCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249399371.3681.4524566025849480081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6edd966f61a99ae2454a9ec9984e93040cb6f26749801b2dd505ebb46e619af
Date: Fri, 07 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762493993
