Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C4243AA1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751090994; cv=none; b=WzF/Y79JaKg+7g37aj5WW+bFdAzA8gdLn6eI5h/fMrHLsjI3KmbDlMBkF7WEJ1TCEiNvn/T8f3hmnAKAutJDyhiuN9W5SbQ+kdRQCpPkCFZBJnfBI3JqHHoqWBsyAbvXayE/mReHCd9FjWr7Z0r2/wX0//6tgOX+XWu4Xd0lYcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751090994; c=relaxed/simple;
	bh=As+nlou2mLqKSAogCV1JTVmPBdgkvcWg8IRBK6eZ25s=;
	h=To:Subject:From:Message-Id:Date; b=sQwdaSwnejBwZQi+U3vmPj54WODElWXnPACQPwyT0EODAivy2FNfu1TC6GHLdqrBqGq6yxjbWr3Ntsn+CdkgFPVOofJMU81sBMc+9Qwkrm8OxFVe6SelUjnikJjDF/cinVKspkmsV4bDzec09vBay9892wYwIAHGY+9b1rSgLyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6m3OJZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6m3OJZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3EAC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751090993;
	bh=As+nlou2mLqKSAogCV1JTVmPBdgkvcWg8IRBK6eZ25s=;
	h=To:Subject:From:Date:From;
	b=b6m3OJZvG37yhH9w4/6NV5/5IEEarSMjkqUb864FbpAuxiFab/H0PmTFvkQ4pNJWU
	 pKSc4jdBz+159WPoNl5tDYP5bAN/lyBgbel/Guk3Hl/qH50H+fgwD88PCPqNbI4zLK
	 csJ6kfjQBrIN/cAJ/EINL2bpiJVg3qSRVJDW0eaaISwiOxbYG92QqI76ayRTHP+q4u
	 jZihnnwbKDPdzVCaBaI7awKA2wMWVdAE9lb8LpODhpKy/1TMyXsfIEat1Y7s3T9J22
	 Is0YGt2lu30G+bBYMq6mN7jeN1JwaOKZx6W/ZMZpwqbjXQSD/Er4q/LJroplV5X8kX
	 SPSo9C162B6qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97487C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109099359.12493.914764224155082572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095b639031c12c4cb2d8318d5eb4ee21f3c4d121e5c874f34d9b3404e5529af1
Date: Sat, 28 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751090993
