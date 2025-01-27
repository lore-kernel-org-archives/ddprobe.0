Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC2F2907
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737949554; cv=none; b=lJyfuFjnsZkwDKUx1YU6b369miU4HrOivbP5dkk1v/ZzgT67i8V2a7R5VL25yUhWLTcBBgehlyLsUK6PE3Lbq5lHSX+m+DmX0VPUf03P9IC7n7Nx1W+/nUX6egHnF2Q7YtESRidET4LLkq5E2EzhMBgAE2l1Wcl0/1R18p7anrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737949554; c=relaxed/simple;
	bh=j0aCTmTr5qNzA5dsbIL+4S50XOnYN+h+0uyHMj8OMyM=;
	h=To:Subject:From:Message-Id:Date; b=AaMBqTZOd63A4y1IxutxBbDN+WIt9j7nVEWzNljE4WQuT/BGel+G0582/X9bXbs/WK/qgz4lunSOFPBQDx9dGRndEMEgdrfuwJvrI6GPrHXCrtKKUHJQah4jhUQy/WNojGovXl5Db99W+jCW6PKCYEkScUecVu4RjQP1mkt5Hw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBSh5zcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBSh5zcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB65DC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737949553;
	bh=j0aCTmTr5qNzA5dsbIL+4S50XOnYN+h+0uyHMj8OMyM=;
	h=To:Subject:From:Date:From;
	b=TBSh5zcCdCGkHLu/CusLuh2DOUtUysRmZtsCc5n77RhOOPWkolwArtNMwpSXf0LlA
	 lFd67rdalN6SssTFcAJ/aw3pi8pvXvokJOzCH3kcfI/FTMI4Js4YV4c6+Mnwr0zZQs
	 77BzhkuR/sLEx6cdHoA8vk2ulHkqsfs5re5kSNZy3EpIA39oLEURVp1ytDY4k7yD/N
	 uxWCNUL5zUM1VXPTc22Iz6RHU6mI+OWUjbgf7bBxR4gQSMGfBj2nJnf66JQ4uNs5xa
	 IALsyvlSoftmUFN47gNhhvAzBAOhZqz4BLPRQnoc5+XytkIBLf2Oo661E5vJHHguL0
	 QzaC3QueTeKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97246C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173794955358.32543.16709539537091796987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18be332f8acd21a1e800a23f1696992ce9c99fe25a7aad25377fd598981ca6e4
Date: Mon, 27 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737949553
