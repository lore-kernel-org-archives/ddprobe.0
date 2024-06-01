Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3932B9D4
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717245863; cv=none; b=RgApigIVs1sZd9RGqfVSZ7xVCrKBoeJLGiv3xfQJ1PnH/Ru6B6w9LRcfMI/yK1dxw5PMK/WO3x2qp7CKJA4By83xhSC3US4GpPQZ/FkeIUqE7/HlHMD97CVcjfi/OAUh+EHgOG+CfMcrV3AoVJ+yIvjV3m5DEYpOxvJk/VPsJ5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717245863; c=relaxed/simple;
	bh=jdvbBOBYgKRZ6TvipA0BDhFffolnH+/gCuUmcs5Zsew=;
	h=To:Subject:From:Message-Id:Date; b=bhyDNBZ9qpxpF8MNqNBjCF0+CjMIP400BBBNOPkcNpEZDGWIyIIWYa/AYcAD5fbiqeDATfJgdR9GYtMDedHiEZhESDf8eEqLCBnDXSaRlmsPztKoC4VXp6VM6kV76CG3AAM0zd4UbHQUsnptN8oFHvC6Kik8QYox73QoGWVFdgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/L0VkB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/L0VkB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20FEC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717245862;
	bh=jdvbBOBYgKRZ6TvipA0BDhFffolnH+/gCuUmcs5Zsew=;
	h=To:Subject:From:Date:From;
	b=f/L0VkB+0mEX85jAVCbMYLMpeCoAxIdhDSJeIFsON7nm3jqmVwOy9xpnh0cE9uXBZ
	 P+TzzEO5+ZAkP4Zijt3bovGNvNVVVQQ04F19A+0VG6jywOS/WUGCRlaK9wsxd7uMJV
	 JgsdrwU3foYRoVaxdDGUpBMtyPqIe2BGK8rTT8vvNSYv2xjP290Bwb1urrTgfILYRX
	 EVTw+AojNEUmZk/9eonWqoTDqtJ4UWAK/22OAADakR6OeZNigF8MI6dUm8BeW02qu8
	 gc0uViQxf8o2n2jiqZipTfPf0T/qy43HexjTKUexYuI6PJoJMv6i9QMLz/ZMDDpfAn
	 maFH0Pjr7Yx9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD06AC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724586276.23236.6902063358519584748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3aeafbd6010de5c75b3d9cd345c3715af4941e55a741ad226781fd54d4844e
Date: Sat, 01 Jun 2024 12:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717245862
