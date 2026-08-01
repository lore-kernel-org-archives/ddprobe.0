Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7710175A86
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785543034; cv=none; b=l0Dqy22fV+fuacQveDvW4FiE+pCEClMb4t63HgHrm7cbErRDYz8BcH0hYkVowz7W08pxbH+JXRfySh/D3IpZuExpXE59hLvlvtKbIn10avqddQOICEZyWtR2NQv9zyN2seLib8OuxcgvBQRI+6NzAmW3rcqcf1OBFXaNeeuGEIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785543034; c=relaxed/simple;
	bh=gp6XiHBDfbaNLwSbSXriTVefn+jtuUClwhwztfyLvFU=;
	h=To:Subject:From:Message-Id:Date; b=UL/xg+YwMT68KLuSynJp9Gq/4T/Qtp7Kzb+PS7nBO6X0UHxB/Uw/KSFxxs/4bRccJ1N0VVDs981pBq+3yQdSaDlpTyP72kr2lK+AP9lcE0tcypL4ygybhV53z/sU84qKvzarx7+UOcq35WJA38g9SNYKsfW2VVPdrn7rTtAykGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAeX0ZZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAeX0ZZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA28C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785543033;
	bh=gp6XiHBDfbaNLwSbSXriTVefn+jtuUClwhwztfyLvFU=;
	h=To:Subject:From:Date:From;
	b=eAeX0ZZG+b4BwJ6yt5d+ARILrE+/ZzoSWEL6VcpHYzN8U4fw/0sAQT3jUvUYPquer
	 5VYZDs4yFvgApb3sPVnVdUeX2MC+uLswNlV4SEgmhIWgp7xMamcaqGRxPzeXV5ivUu
	 V8d06ed9CiivNTipOaYsf2pxH+v1F/7ueiLMrMpvhRr8Lx/wU2buInWkwAaJ7+w8iL
	 7Fjep6uzXHtF2GQXf5SfZn/XYmIClwn5TCyqMSCntSDgPVzPoRGh6TGMPPkHkHs0F7
	 hiF9+5PSBwFGhhyU/eJMl35x/LbB/YgKQfivFzbK5UkY4Y4hv8vQXX594jclQoTuOY
	 w/ysULXX2QNZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A909CC55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554303368.32231.6130331339006205897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df3a8195b8c15e8f7b4c4ed4a30692fe850c693eecd14912f1578f7bf9c3af6
Date: Sat, 01 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785543033
