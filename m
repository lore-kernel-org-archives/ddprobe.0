Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4312A471CE6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789039234; cv=none; b=H801khIwQfZHHR+YfYeFZaofJafmt/erdGWGm8dRXteK8Hj4FFVFvxiWchuZeDOg17mhMp8j1bnCB2iWihGWaWbArrjMoZpb5xE8xSu3R4X2RAzBKanJtS1uynewD0Xjh6VXFD6Wo7GVoTaQYX33grrjVyY1QxFhk14FnTwkV0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789039234; c=relaxed/simple;
	bh=icj48lO2XrRyKymj+F7VxiB8Trsm2BD3Drov7v/g2mg=;
	h=To:Subject:From:Message-Id:Date; b=RpiOFjoyXcf6wPLA4Q3wGnGfMWxO+GOGMSATYYLx5fNFg0VXd+4eBS5OK4gTZz5Jay2PmMApwTyMZMgvFhR9SII8lGKq4JieDpV+Z/8uYtAL54/t1FRmKrzdlvze0GDmjlhtr66qLrujQeRCUBc3cSy6a26S312n94sgKEslcbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0U8+mRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0U8+mRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF79C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789039233;
	bh=icj48lO2XrRyKymj+F7VxiB8Trsm2BD3Drov7v/g2mg=;
	h=To:Subject:From:Date:From;
	b=i0U8+mRl5GS8TIFoxqPEqB/0uG/6Q50rhPDBhVjFaM54oa3fu/3bnFSQWAiEaETHo
	 KX61+5psOflN0lAC9v0Krf3CVRC4w9/Xku+Lmds6joRkkPS1mhb+I9GeoVpyQwfKKR
	 Zo0UZkVCcBu2PfvI8HwSHD3j+xGRNpdaw8s1eTg0ZJ1F4N5LRe8LfUNQg0yVLR2jb6
	 t5oR3z8tt5BEnoSGsdPwB6yuCjczCZoqwxj9fs6ja7vY6LxG4dDbjZZQLKyb8uJsce
	 mNamGJLzb6dP31NFqLIzPeCUVWdHIGbRNfu/OqhPC2Ew/9x7yPdx+t8VPeHXLKfExc
	 mIhkxAMcQTrYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9681C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903923368.21539.3039289061455672091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853d5cfd865230a352503b6079969eac71930ec59efa8e4c6e0672f495bd9885
Date: Thu, 10 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789039233
