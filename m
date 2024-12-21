Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A631DF26B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734765354; cv=none; b=orgZbKOSlDNBeK21f+Fq3KsbnIK9fHcihgMQ3Opx99keyw8EUKIyR4oGd7qLxetxc7S79PKvdywQQnXwK0MEwu77cTs6y2XB0D+Z45ajGCp+cM4T1n2ivCDY/hcWqw/fExFshg/+yzfiNIHnlqirIWMCOETLUzRGljY4SRt6B/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734765354; c=relaxed/simple;
	bh=GcGPuDZYnrwfr0DLpSysH5jYXriRXv7iPNg2Weq+AFk=;
	h=To:Subject:From:Message-Id:Date; b=X9YTCru54EMr9butYP8eqOmpZsJ3WFYPk9oVRYQEUtP0QShrEHMiKDdy7VxAFVBdE9+gWXmHKpJh6FVx1FDnNf4/0C/IPKgqXHOiZLlV5DPbR15A90q8LnbpW0dM798SFgqs3CRttFmLbtL4GS1vJjHHqo+xs+d4ALnJ+5w2tDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8tJ2LR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8tJ2LR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEF3C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734765353;
	bh=GcGPuDZYnrwfr0DLpSysH5jYXriRXv7iPNg2Weq+AFk=;
	h=To:Subject:From:Date:From;
	b=E8tJ2LR9OmJ+CmCrkt8o9tFI0PD64rvZcKknkwO4PqicWwRmbGNE8kF0ixUV5ne0L
	 ogZznOn2LiU40HO41YVOOa+Vk4WMl2lGTfskW4nMcvkD0mVmxlp8ZvH6TzwgI1RG3V
	 eRGsiR/NWQT1eFox7qEyP7++N0MRmTcthxqa7OvXhHF5hVTxDTg4R8hpDs9Z4ZrrAB
	 TPYSC942Jh1vcuD02mlkgcC6eqFP6V1gTfxRIMqIMFn3lnmClOfcE5KMLYR3IRzF7d
	 /VOug/p70yHizGBXPtmPiC2Vh/nuOC6OM5Nm3CaBXTtYUq4S+azRMeI9Q9A+oaZ9Og
	 04memi8HEW7Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A274E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173476535362.3159.7951431343987408861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aefc071bb2113fcab5d3641221ec9a046b7c8c9fecb0c5fbbfd3c3a6dc4bd65a
Date: Sat, 21 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734765353
