Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3A71429D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783819114; cv=none; b=KdF6fFVhv1oQYXH4UqCr5etmcYOvgjV1LZRhyMB1RN7FSOP/V9l96VK0a+B8XX7BF55eFQNOxsF7dwuiRboPDZSUkUywwnegHEUaulhhxbcaf9Z8wZ8OEzmXq9Bo47Ik2LeW9EXVtRpCweWeY9ocAbnLRRJgu6zZhAMRjef9Yg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783819114; c=relaxed/simple;
	bh=4w3eRLsv0+45bBSR27Yua8NG38A7ksxmxqyVGIk8ysM=;
	h=To:Subject:From:Message-Id:Date; b=D2jvRluzWp9KI4TfJAc34usR5/hvpNpx+h+twje5iATobx8JX0mLZ3Zu8iDfoNcu8uY3qGZ0b7+8lPcLGyXU2y2sWHMN+D2aVPKlblJX8W6GNz2T9DDS+gXfmDeXm/vINkddKIIdDNk/fCdQ+CRT7IT33ORbn8U5RF8hzn+Su80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5bQhcZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5bQhcZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31EDC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783819113;
	bh=4w3eRLsv0+45bBSR27Yua8NG38A7ksxmxqyVGIk8ysM=;
	h=To:Subject:From:Date:From;
	b=C5bQhcZxAH37wYn1YUeTXTptzdM8apvBIvc+CD7QpoUWfbxOmHfNHWBVMaNeRAkUE
	 6ctcKvh5GorslrtHRP0wOJ/pS4o/HDgvjvjvrnXRhhgpM4f4UkP4fSWUFMgpJQrtAu
	 eysa560zMCBeqDPX9VVmNpPfpefrsjrO1qIA4sD5w5RuJAuEcoTfA7vrjMe33wYqfn
	 PQKhv4EzIvSvisKLSxVsmCORzhZyITiEnvzO3ykxyGBzqorpkFTgLt+fgGytdVS7Ng
	 tSnX15dN6G+LV5CkJQR/uXX66sqkZLyNl02/P2p5jkOldznL9+gpT0hApeQpl62k9U
	 hzv89SvH5t11w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABF4C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381911368.2229.8648119205712961557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91219d60aa7be590fe6c8d59f6cf6a8f163df269b1e4f786ce8dd8c11153dbd
Date: Sun, 12 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783819113
