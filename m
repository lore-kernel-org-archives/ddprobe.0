Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCBEDDBE
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718435903; cv=none; b=Z4SuB7X/fsxDbVBUWX+5yaSQeILLkmed29Ei74vzgbl4a+9BakVohwgpWtOqrUmLNk3enAY+jNsTSB3a/iychSPfugRYCfR4J1nb3FODWDeAqZVRkMNZ2blZ4eRuNNK7hUqa/GjJ96hlNbbeOBlZlrw55heee1YkZ1zv//5KBgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718435903; c=relaxed/simple;
	bh=GQOrznXPRsvpQzftAYbnvttkRAtTwBGS7voCj1SUgB0=;
	h=To:Subject:From:Message-Id:Date; b=jyee9NB180gFmVNBqykuewXWNTlG+38Fbx5Yrt5xwF7TKnkDy9us5Csi53FgyLLc/iOFCX6JxFU1wXnl90c4T2CT+ud5BguxM8vYeKPIQnmyAXifeliNCBYIUwdb0/3Gmx7HQPRv7+8wCEXJgWNPowKpT88YMpFrViZe7y/VksE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9uZ4AiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9uZ4AiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E84C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718435902;
	bh=GQOrznXPRsvpQzftAYbnvttkRAtTwBGS7voCj1SUgB0=;
	h=To:Subject:From:Date:From;
	b=e9uZ4AiZKHZJrZPRJKLeZHOI3NDfXdyKPxeB6fLHpmoTakRBNomygBEhTOHPOb5n3
	 v5vrgQJB5l10116P7Ros99Q6JgkGXRQG/ufihUzslU1Eh3DCu3Ps4bHaMbMBk9z7Cf
	 /ZCG4WE23uM0RYucBdsfQgDovez22bo5seSvnj2BOJkH1LqGce8sJHFu0MFsN6izOT
	 4yRBPMWEdOxsysNBrozuie2Vm+3Wb/n7NGS8UPfbdZ9qzx8fVbZMbLaseo12lmcG9D
	 ULBotPhqjbSIyPdb+/hH0o7MtfU8yn27cCfI5aHJ1feSEW6XRuwqI2TFxL1PDbyNEi
	 OuKUFAJn9Ui+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA4BC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843590281.27912.4080817599183463495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d73be066a1592c62df263a6d3caa0e86f84b98372c58ccb4dd8de416084c5bb
Date: Sat, 15 Jun 2024 07:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718435902
