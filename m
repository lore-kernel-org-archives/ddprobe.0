Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5031E25F4
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736486754; cv=none; b=buzo3mCKIknn9y0f8df3vdX402yXi+sn+wubJ8v4Zglzi6SSPuc2NpxT7/h9R7e89c4aVCej5p3PVH6022c3xB5WZk9uXrf2luRF4NQhvFw/LpLE/juHQXnTKY/PUQT0RVWrukjsh3OwQ3Eujn1S5Z4Mi8ZWMHTjtnfPKvRo7yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736486754; c=relaxed/simple;
	bh=rx2StMP155fdtHAMOeW+ceLt/fOSNdAiFs02PbS3fWk=;
	h=To:Subject:From:Message-Id:Date; b=u/zHxn7TEasKAEVktKMSglqefWB/bFHw1wild5UOZ1AVjTX0Sm7hxOtQyQ3DKLiI4svtSu9kD6VsQlg6JCw4fT3BJ4WbyFhJHVnDO6j2n2oTge3tiZp/wpIV7IKfR4rVPHjGR2RkYkSiizaS/3Bf9scQX1NF8is4OxET/AENfZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzneiuL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzneiuL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B804CC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736486753;
	bh=rx2StMP155fdtHAMOeW+ceLt/fOSNdAiFs02PbS3fWk=;
	h=To:Subject:From:Date:From;
	b=DzneiuL13Qqds7p4pgJvU+SBYNXmAWkJRqSwbHB5K4+NyQDCU7AkyiaZ95fuDVWrO
	 rBttXGHW02DW9LvFeqAQQRe970zm2Bl+AvrUOg98LBwCUH1cfDqihHb8RlfKSIGjOk
	 YK0zWwwIOx1/a8ECyIJkTSiRcGdkvGuaHSrLWWBGS+884XY60utVmnkjSo11SQrox2
	 hN4DWpie5NdSY2GecoiQ1ViDuQ3gLeVndUZTpMX8nzszGEK+19kYQvboILiqZHNDST
	 ekZGIl5VymLJ93lNK1BZBm7pfhjVW5SU9yH4UDtv/t3XH6d3ap0Bl7Ca2BLhKEc3gQ
	 HOGvNl+1JFGig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC8E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648675360.31473.7244625207240330576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d69ed87bfc7380fb7e3d39f3257cc6d0030cd63c34996172368567b374bd56
Date: Fri, 10 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736486753
