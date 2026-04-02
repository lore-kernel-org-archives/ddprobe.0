Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28963C873C
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775124334; cv=none; b=eJY5o88Qk4qoH6iohwW/wTIJBG/ehsPjUElHqRDrmuuq9yTOi8+M6Y/QHHXBw71P7opZMa99kkFM9WT2Q1P6X0EYi54erDt55nV9bjORuRKtYgfqp3i2yRns6rQCmiY+B/T0e35xyWXVCcEULJNrrOmSWrzrXRHBV4svONdoc+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775124334; c=relaxed/simple;
	bh=olX5xITM0NxjeVcxpZsScW5wXaF4Tue74JymgSaDGGU=;
	h=To:Subject:From:Message-Id:Date; b=ZrQiV3m46dLxjh0OMlV9xN0Q0gUHriv8J9d6gbLRK1t28fn3USYXzj4nby8VvTvAsxxSTJYf4TkQbTa42AbyExc650yntQXtll6/VqySgGebXEB9afxfxdamxh30hSJhntKK3UH0Zk3tx9x6uEzexNT0w80WwXR8JW3UOnDftHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICyIN9Tu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICyIN9Tu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1221C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775124333;
	bh=olX5xITM0NxjeVcxpZsScW5wXaF4Tue74JymgSaDGGU=;
	h=To:Subject:From:Date:From;
	b=ICyIN9TuA8yO3z0n46aIl8We7uHeRLaSF966zgKa4sWUR1PkggQoOJhi1HiEi6WoC
	 KxcBKzDIcUBLEWShE8qqYd1A42efbO/WFlwRsXaI0YrWAWRHw28wzSrq18eD+NLATs
	 bZXtiRzih0hMm5/ULaWXXNJpl+b4uuFMsLcQoBQGIKKny8ZYuQd/b2y2FFFzzmgDcK
	 6rlILfBbKt4MM2p5Unl9GOtksnye8FCblYrZH1lXwMjS+LkQEjaIjOVO200XYMaupN
	 OzjfcePFCOmdYpdyT3qZnH/cxoyKMohJKbwj45gGNoFWRMZY7ROa+ph8JJf+N7m3o0
	 JyWTAHHmeGPFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE7FD3940B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512433369.1686.215492602016008562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b166dc3cf54116ea8f791c44923e62641a9fd8c4a41677ccbab50851aec0e427
Date: Thu, 02 Apr 2026 10:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775124333
