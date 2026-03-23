Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0995C379991
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774254894; cv=none; b=j8MJA0DVM2MkXONMXAltVua4Ei/aNufGUFcc2Yupec3cMELch7BgE/xe8K5TWwal/8NXwpHtJ5MGbDVKhtAKnweiygHsld9yVFPEsgOa2bZnJo33pjSRM/82Ko0CYz1f/YlwFLFwuPOuuRP0vWb6wMpPGmngu07vszP2YHCFOWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774254894; c=relaxed/simple;
	bh=lehKvN0fewcUsCTUrgYunDRyMQrbQmBVbgTaybIg8aI=;
	h=To:Subject:From:Message-Id:Date; b=pOn36M9V0UI6oc/FZLmN16jqkH9zItUY/jOZwmF9xK3+xVqDvQPZJKTZ1ipKT0G2vMj4ux5B3gctUW0qvbs8JEebVy79m+CKFozuokF2j0wyeADvS7y/WuSOOdUN+vKccNNSdpouVNObysQO9L1gQk7HEoLbOFZDUcEShRHGpf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvIyK+3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvIyK+3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A802CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774254893;
	bh=lehKvN0fewcUsCTUrgYunDRyMQrbQmBVbgTaybIg8aI=;
	h=To:Subject:From:Date:From;
	b=uvIyK+3YXSNgqKC+i6alTvtlbRPNXIvsirOWCXxXwY3+16Dp+n5siaQKEKaL19hME
	 SOoJRtXfD+BMsgPeSbpYw43gCgrj1Vhw1Aab0mHTWCW79MZ/391zfdgQRqsW1J/o27
	 lagqcGIOtyVf+ywHps+fo/tQVpW/diIhz4/XpIGEWqaNQfwSH3Gqp4Qug4r2sN3605
	 ao7GhShyEzwB9vNWPyfZ+1Nr9MAZh/+1Aq8wR2gtPMmVpeE5onS7lWT4Lk0GOttTzU
	 Oht6wulX09bgZFGDQflKJnsdrcUilWUyMgvCXQsh1B9QV5somMer4PTxV9QvEyTZfh
	 LAcMytfMmO1tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932A7EC01A2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425489358.31134.7323676692356123537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47081e6ca8a415c66308ad18cf8513cd11e332c80f3d3cd217cf67be9fe7c2aa
Date: Mon, 23 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774254893
