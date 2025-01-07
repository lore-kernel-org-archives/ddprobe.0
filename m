Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4F03596C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736220354; cv=none; b=WIO/MbC9J0OqbZuAUdFVOYdBSFbRiuUtELZLUlwb/ymR4M4IYBGG/svuur+NLfuwpJl8pZrKPmI1ZTkOMlLzL14ZEe7xLomclTdCUE+3GUrh0z06gn4zP45zYrGJcO1dC70Qj6tuf/LEMA6XNWtzY3EKMo/AWi16Z4Js2evIOW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736220354; c=relaxed/simple;
	bh=ifo9lpu3aQyeId5qk+PuGzbGEioOp8qouDXZ81F/P2w=;
	h=To:Subject:From:Message-Id:Date; b=tFhhxvGMqBxBnY6yckf3ARQXBv15hukr+/OLSOgGBG1NyF2jprUh5DcR2ziQOriSSPMTThcr+DOap0OGqPeIHJM0ERVrH6klG9C5kc568Vxi4X+jxd7x/yvfqekd9tZ3Gu4CLfYVUbX4Zbc4e/t4idnTX8l6MHLncoAdatFGGmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOJ+7tda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOJ+7tda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9392C4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736220353;
	bh=ifo9lpu3aQyeId5qk+PuGzbGEioOp8qouDXZ81F/P2w=;
	h=To:Subject:From:Date:From;
	b=XOJ+7tdawPZIkxHqChQiTIebKICKT7HbnBg20Az3lCc+A47Ud6qixK7K3zzmqUW/o
	 cEDsRvb5gekFbh61co4ftkAfoyYiM7kWPAc3EpbLZ046tNBkeot83M5qlO4GcKM3Mp
	 XCsByIObQ8cSyQ3sxpZcNyZkkksSRf1e25Ig7KIrKTh0Wn93Jbmm4p5hbEmdtfwKbL
	 YhrfsRHSbsrLpXk6SpoaGyXSsBVmG+OtXeeJTlK+SMoxO0Cr4NMYFDicaa6LoFjLgi
	 PBSWaDkjxhIApK+9UHl5Shha7t+K7RcSMRSsqPRAkuSU95ABF81gkh75D+l7Wk48An
	 kbJ5BTnUyGDaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64FAE77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622035367.15574.5299288042904739523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7974034faf025398dacd4e4b99296c486306e1935d741d6e5858da775a8f23c8
Date: Tue, 07 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736220353
