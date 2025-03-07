Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB93217703
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741345734; cv=none; b=qg4GR9unr0fcIpUttxp0pLjhfxmuP7d64btRN+vnlzolsMzat/VdZfEW7P/WCqtIus3XsL85HoXPzPm3JTuM9GIphnx75v21h6xtw7okbgoZ8qz1CZnUo18NqkvGKwYSG3JgxQZehoXpDcPdBfVAEus6CDKroGHzCvDS79Zqbf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741345734; c=relaxed/simple;
	bh=EJVbAe1xrJJoABOvhulYGd5I+BPYytys5+Mgk9x+CNQ=;
	h=To:Subject:From:Message-Id:Date; b=f2a4EI8OjGkin1nHdm4Op8ANCqz0Wv0wwcwJiNA3qUgSqkLQ4c6n3ASQFjAK5LtVvCa4zY266u322dVN34prGxW2dlmlbiHy/9zwRQ4V852UmX5Vxg+vquke7EHoe+IrnTI3A2FNxcYj8MK3ImhMglm05NDqJiQHQBHizZhhKgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPx/7P2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPx/7P2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E1FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741345733;
	bh=EJVbAe1xrJJoABOvhulYGd5I+BPYytys5+Mgk9x+CNQ=;
	h=To:Subject:From:Date:From;
	b=KPx/7P2ltOHM+tYrdETWaeV6gPapYig3t3SxqrAeWrrRWBwzNIoRtziMSAIWeO7mz
	 xQ87K1XDnk6lG43J8zpVVVPQB20cecU7wdVCAA2699vffcCX27UdcbfjYJs/bdLfbc
	 +C+l7zM+TJvkaTTh75KCJeQnkiSorckv1bu5Fi2+bh8FVm0NAo+Iab++PpGnCm2HOY
	 aRlKjviEL4E/DULEPylYa7hiNKXkiFzMtCz/pDxz+M+NtAWEqrXZUs49APB1JCdL+L
	 rzWugn8EwXgJIrOsdRikCfOnAv7xIu0uq5YsxtB4vAjiXdKkfmPjQSVnSQLzNjJVsY
	 WQMVUDyYp4upQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9373BC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174134573359.28328.10222842255892673690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 370c30ab781c36097c4478de81c8e183d37aace04525ae939c84237ce97c0ad9
Date: Fri, 07 Mar 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741345733
