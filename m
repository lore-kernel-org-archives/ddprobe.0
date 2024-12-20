Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3656FA50
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734654354; cv=none; b=Js/r/vSysYjA8exepx4W9bG3uodepwPcTFeKsclMDAJ5ZiJmocyJiDP1+jjWok/jqLiA/14VR1Jthk8/qsdv8RQTEQEqh0svfOoISNOHDGhb2zPrjNf0WeZwOdq32MKhV/p8+OVvKlvuZacYfuZxepccBTxACvQRVdILPhXYkS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734654354; c=relaxed/simple;
	bh=gBY5THDMIX8kvrjpPgZjl4ccxhpGteOuQ/BdnBxqMPc=;
	h=To:Subject:From:Message-Id:Date; b=aicJsrUEO5Lkmfu1CFUhX0Xxoo0QNk1adbvvTovg9mSdOL29uVk2p6IGUZVcsTybY2TkexrJ9cs/DuzxKydcvmOfrKuPo9z9UKA7wZOeqWrXQsdI5zgPEddEiuCH4vdgBBLqJCYEjU3rdFOSabKly9p3BnnfFDFeXkdTADgduWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNecQ2Re; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNecQ2Re"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED0CC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734654353;
	bh=gBY5THDMIX8kvrjpPgZjl4ccxhpGteOuQ/BdnBxqMPc=;
	h=To:Subject:From:Date:From;
	b=jNecQ2ResL8S6lR43lvK01kTmzd+LCLL7cd7qTiom/CHBQCJ+r/Lyszik2Mmudtoh
	 Cyz9bbqKpx83q++gP7FQch+jZdNHMC+ekU2sx8KhDngQTVds15nxdsR1E12arQhzZr
	 htdiXTU+1FnpOnfhTJ+kgeqOvuwK/a/TpXP+BMIvkJ8AhMarNCNofZSib0abp53edf
	 vw0AxyOSmSu4dn9o/43XbVc8KRrQeDMVhwQsIyEeihuwgzWUC9IDjZlLi4t/gqBQzk
	 kozQJSs1x/XVyhDw5LaOPXRtnpnn9qI8Ix+mPqA8XpYCUmO4i3T8SI0ii0qx48OPlj
	 cHGeDLDQH9eEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A074DE77184
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173465435364.13435.11657977772137952032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7a90ebc4d0cc30351570853d6aa7ad34fdcfc5a5b977594ad69adf5b9fca7d
Date: Fri, 20 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734654353
