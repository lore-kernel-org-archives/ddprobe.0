Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D3479F2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754105994; cv=none; b=TXUxCXfgqgrPc/+7E6oqBYc9ftiInsEzRYoZk+g1Ax2W00HGPbKSYKjTBrbSvwEPV0XvVbwzX4+Nr81/F5pzO2yjAJ4j3tNEy7tbkeNbVhqbw6SCvXSMgGdnI4Wsxt14N8nFczQ38UEc6rhShr8j4e4Eewu3IoJKHn6fBWUpqGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754105994; c=relaxed/simple;
	bh=c/tD9WcC4TYHDO/W8SHl8Hm/itfAkJ+ry5NoENNNub0=;
	h=To:Subject:From:Message-Id:Date; b=EWRTjAfYa1Ci8wa+lHC3u01/b3lKfcJKkTcKHaPF4cbP5+i2OkqC3ffvaz5UEhx5wzggPA8VKIrEnI4JZwV48eaNe9P5Ob2rUwhj6IKcLcKPjL+mRu/Gy+zNVcpvNNxbPvq/BiCfBPvLTAufM0o0zSOoEiTmTNP4p8QN7Nxq/g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmMxyBC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmMxyBC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90E6C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754105993;
	bh=c/tD9WcC4TYHDO/W8SHl8Hm/itfAkJ+ry5NoENNNub0=;
	h=To:Subject:From:Date:From;
	b=FmMxyBC/A+wclviq3Vc3tfe9qoVL/qO2jnEUassqolCPQw8NE3yCULqrHjrFI+J8Q
	 lnz5bXbRTQ++9sGisFFpJ6KuwqNTmeTC2qiVeFTL/JpvmcJX+exIU9d2NTYPNlMIH1
	 9OiweIFUMVykyTQn9Vs5hVSEVDu5hfEJ9pNVlBIXsemjRDP8aFVk8AQdhd6gQZ5Y/U
	 5x2iyY+j8Sf5kubuHNhlsZSbVjXut4RjP4WTl+DUyEvWhFXPcT8o4vpwiCoemQF4L3
	 gkvj3+p8sUVvLAerAWNK3hMFpBJTpO1lpTln0N5lFb49f+PibnBCnkT6d1RfRmeaHR
	 q5ZsOsiNIRpKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CA6C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410599358.5067.5759319497896634474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e98302c66a8029bb5628603d8e0f6c74ae4e38b98bd150a91ce765eb3aabb7
Date: Sat, 02 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754105993
