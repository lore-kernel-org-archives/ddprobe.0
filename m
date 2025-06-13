Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C46158DA3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749820795; cv=none; b=b1SuiWzCfhL48VBCF6CSithy6Ym8hkZfdQ5Pti+prqJ/0Srf6/ZdLCxSJgdmFlPWv217ud3IpTJTddfAdJRP9va48v0gC+HWmIA10G4byNCuTdrGdl5zps+VX2d7rdRIIP2Plb7DweZdaiHT8FUbT3dDzlK9LLybi1pIAVsWDRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749820795; c=relaxed/simple;
	bh=QdT5B/o9L9C7WiUOHACCte7iQo400QyDyv6h42gLdYk=;
	h=To:Subject:From:Message-Id:Date; b=lju2xwnyu/nGUCXHKsFMYGO4yqT3OZOoxL83Yah4MTNajAJ1CFa08CNXdI8R+6LPMvH0z/lt1jKiaK/vO9jsBVNoQatzTshuv+u3dqGdzJn9pC20G8PLu26SafrLCcugJPy7Vx3LRZ8JoiXJn8K33wVwn5tw8CZymWFDh559BFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ld0Kx5Oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ld0Kx5Oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E3DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749820793;
	bh=QdT5B/o9L9C7WiUOHACCte7iQo400QyDyv6h42gLdYk=;
	h=To:Subject:From:Date:From;
	b=Ld0Kx5Oyn4fttNGPnOA0j5Sb3kVCVRzM2Pp/zKrvKYIANhcFSok1nYnBLDhBCDMr+
	 iFDljoZc85Nd/qbA7W8VvOWe4QwINKSMzL9NX+9IlXkmjatf+SWYM3ct0sxbjmJ5JA
	 1kuMvqDb8h0jsTXg9qXsRrjgYVzSVdHAUclYfPApMqy261bnhlnRovC4Gp7j1DAUzX
	 mnO5YT+8qZr1ja6bG79wCygvmZXUdeCU5Nw8f7i6QBlmVKX9EMhz33EHpGqUWseQ0i
	 DS0j7QyiTV1B0EzC6Zh3YoMcdFqU8+cvVL3gcWHWxwIeV93dLYy0ZtRvwPwwEzu9hz
	 cRGXKWQzSoj3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC6C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982079358.5103.17781559355092796673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286a0a5024b08311f75c64d5a8b93a5baf974203c1761b7d28c0e54d89c3e04c
Date: Fri, 13 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749820793
