Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3090C1DF25F
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760709595; cv=none; b=o93k9m781GvQ2fvWnbUfBPDBDpeFkQruXaK6yzbn+JCDBekOK/aWUTHmE+ehoL0XhFrdarVV5CAGHsqYbUd6LeXSoLr9L/SwBhaAjJmvIp+bQRzh3kSyVhZxsb0hBPA5XusNTdfSb5wPZJlG2GOIc8PsBqOnW4xCZgMDPJU6pHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760709595; c=relaxed/simple;
	bh=C8IzGO2UJoBnH3y/YT7sFBdh4vFCmrwNKA3wPq+VKrA=;
	h=To:Subject:From:Message-Id:Date; b=JscXdwsQTosBIDwgcKLXBf5XEVcBBsy0zzpkwYB3bMJwAj26BchSigYob05BeFRTVUDpXjpYSIC0oLmieuKcVPqCW6zWIUecCYhwrSZRjR40W4D30wrYiaULLX83Kq39r4vFs82E71kYX+vabDmecrRdqCgd4qljgD2cFFP8UL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcCC/CCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcCC/CCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05B0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760709593;
	bh=C8IzGO2UJoBnH3y/YT7sFBdh4vFCmrwNKA3wPq+VKrA=;
	h=To:Subject:From:Date:From;
	b=FcCC/CCac+rGRcPMgimT2sosPVKZgB51Y2q/90XBzo0ng/Gf0z+LkYQHlfsEIHTPn
	 VPUOn6K7mHXR7Zn5iynBitxBgHQEEL6pLzPsVQMQkV7fIBEDXZAgZRlxp04fmspq+X
	 ZSvenGy3mbZ1r2RWNRbnnDO6nRiPmYwlEyd5Qa9J4Rz6G90qkIeAP5eawQK2h+vEBa
	 faPf31NRiZMtcdLE6muUdJuD337EFjXJjPUKJ0/2RMp5ezusECtKT+1FzEkP9EVgQp
	 ZS2RL05Vw41DUnc3NsQacr53+KV4D4DJ1D1niEi1ChgHoNw3i4Qz8kKZOWlOhLxSjT
	 iCikqrHXXuGGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A84CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070959358.1449.1755342346771245477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a9bef514035f0fd6fcb6b7fbe4d976c91b78c595fc2dd5923fef27369ccdda
Date: Fri, 17 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760709593
