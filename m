Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86FCC38758D
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775606134; cv=none; b=Ok/bQrWq53bmK5/6PAacllerEdkAmDTdZMtxHKOYAvAoeMSYXkY/N8WON8raYidFwhMpeSoTxBBgwHOym1lOocqFYlIvvP7pX3Bo6oWq7rATmIQs2B2JS8MxoMUlM7F86mNpW/NLN+lTvNUZCpZ1+OUo2/0Cfnxyqf6M/n62SE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775606134; c=relaxed/simple;
	bh=6ApGpyGPewimeGMvIpHnu+srovS5Usxxfv2Mq6eoa7Q=;
	h=To:Subject:From:Message-Id:Date; b=UeSwIY8yKEfdR1gxs4gCm9QVDptk3NKZKsaWy73IwKxEaLJCP+dX+8tZ1LY9fX46Nr3hnRZsu+QjQBVgn/3n3bzY4baUjhYSZfGYb1pfOCv8I0+XOk3e2q24hy6KOl2k7WJDbAhP5NRDj/nnfJo9mqNJJyeHUyVjUHZtSggWNds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+XhGxJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+XhGxJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2A646C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775606134;
	bh=6ApGpyGPewimeGMvIpHnu+srovS5Usxxfv2Mq6eoa7Q=;
	h=To:Subject:From:Date:From;
	b=d+XhGxJ00/8j1IyVfKr00rTC0l1kpHhcJQMSXpNhVghXr6906NwYUplCEtHZVJyZx
	 TPU4MbOVzjB4Pv1107Cza0D1RTrii6CK8z/dWRyczUOAHjE/AKBuHwJGz6lWG+XouD
	 OXYxR0QcoGG4ZzSbAMfzGMWYMgTB4eBaxwMh4d7DRig/stGHZ7zTbSbrW5leXa3o4D
	 P1L4A+JIMiaPQPjjO1z2oQ5D6jcaFQP6HxYebI2lXAsH+FZr1lyHEnkT3uKQcQDbQD
	 TPve2MuS37/LrFkmuLqlUUOhsxtmCnjLAg4SBLPVNcqQkpFCPCJi13Xq0M3/0tl58T
	 Al8MhbfSNsOVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0666105D98A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560613387.2344.12406903906387107050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57e9a6d778a687d4761c54d13620a1a6dda464d6da673c80f5c11ce02a05900
Date: Tue, 07 Apr 2026 23:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775606133
