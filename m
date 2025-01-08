Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E376204F8C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736379954; cv=none; b=nRJXDWmG0ryS6aHZPvpCDLRePBUyVeGLDv3BUP/n2HdMo96pkugDz141Y1FhYZEybpnWmum4I/95Ijtgf+AuJiKf7AyP2OQa+QjGabgFnppGO1aOFw9s7XyGonJ6BdbV+KLKeWzmWPq6szm0H4RxtE6gMsEJA8bi8P19BR08Wr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736379954; c=relaxed/simple;
	bh=lcRt3LMToilgi8i1/qN2fD54tgAenbTaPXxQPhHqL70=;
	h=To:Subject:From:Message-Id:Date; b=h9R66wxv10U1tB4rJuUiEDiqZGtv3/c2pNhoQmX0LkRWcvumaZD43JuL8eft1EafRz1uFAGltic2iNH5POGoC56c3FJCDrV4BpzmyEFZbgU7PvpevnS+rhnAFCPWfW79FZO7uOj+lf4RHs7VIG5vEJLmr/P8xRxMX62qbeAKgYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvfPTPzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvfPTPzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7AEC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736379953;
	bh=lcRt3LMToilgi8i1/qN2fD54tgAenbTaPXxQPhHqL70=;
	h=To:Subject:From:Date:From;
	b=EvfPTPzM3xqlLeHFl4HCzs6TgPCsTOXz44khR2afBpHYmBjcMI6YmAW8m8JFk8r0/
	 nUIGtY+7iVR8CRJiMrqAHubWUrzCeNxzO3mlfWAHvuWhBC6Ez2EMItlo54cHhIqm0w
	 Pnq8Wk1gGg9HtWdGZGffO3MH1oH7v0Awew1A4CWivAtBnAvfc/CMFwwbBFJ5f6CWDn
	 fbeUNFBamAI06+CZhKJv/SG/217dAgwNBZ/MZnpVCmhd5/Z3nIYgkc0LKjPw79vfLH
	 LhdHFXR23OFyGWeeJLwlpdzklRVYeitm+qjKf7NWi5JMeg5WT336m2b+7tYUkUlref
	 YP6ToXcVA/h6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971A6E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637995360.28912.6084274142438040487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1aac6895d943c870fa51304a340dc6531ce4a8ced4f57fc9d5a12722a93a262
Date: Wed, 08 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736379953
