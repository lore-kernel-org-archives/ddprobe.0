Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B532F9D85
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787391634; cv=none; b=AV+5DLA1mq0Wj5Zi42qddp+z0Bdn7VwGIhB8wsy6bp29fCit1F0vy6Q71q7j06hIny6r7QOSx1Qfo5Z1P4v7XJdQnJvE7JXw0FXKbRWKh814zJo5PdOHt+jTU9Dfl3YRxnmAbEg24KupklJDEHO7QvWo80A/Xf3RwGs9tkiuBDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787391634; c=relaxed/simple;
	bh=DS4YMpP0G4G5cwbhC7u0osQzzI06KoCBsEhT/OSB2C0=;
	h=To:Subject:From:Message-Id:Date; b=G46DbWsOd19L1TgBDBI3VvFTBBis8bNPCc59C4pHNQrcaaoB2/qCOijsaoIwo52Z2g9UWkQ4nv58vpaxI5pilD4YNbpUaivu401R5DnjQTNVO32bY52taO9LITuVLUepPi2Fo1LVOUWh8Lup4OLDDWsOog6BBiwVjlSRIEf8sqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HME0xdzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HME0xdzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8226C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787391633;
	bh=DS4YMpP0G4G5cwbhC7u0osQzzI06KoCBsEhT/OSB2C0=;
	h=To:Subject:From:Date:From;
	b=HME0xdzWU8cMQve/o+iU/rPvyk/MJRpmdtdqOmbHR4TmQqcRc9wufDaaPlguTVO4Y
	 yCpsYJnzJv/t9JPQ6WIKDB1S+FCab14yHIhmIIIAo4GKM7b4EtFzxO3NG7vC93Rz9K
	 C6DPkedoBhrEu0qWcX8agClBwWmym1HBwkyJ2MGjJjgNI5tvK+WTD/xuFs8vMBRvVX
	 xcrJViRAlzADovyWxiFPDUYayj6Lj9mLno5oJLvvZ98BsT1mPUTW0Hu91CCZYEpfKc
	 gEXkfa/qjXOUOP5f5mQh1Hjl2m62J2yPgavZGoXCdYIFs4IIdF8y+0tKcmuA7FWbjE
	 uEuExALz63ebA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA56C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739163370.31364.7397569976150945728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dae291901c61690380bb09649dc4445ee794b80f0c8a40f202385dfad229971
Date: Sat, 22 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787391633
