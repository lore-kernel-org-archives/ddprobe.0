Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D33427AC31
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781127994; cv=none; b=Z1ltE95S5dHHUZj/r5iIQraHp7c7FkBjVUdSRZxqJqhTTw7EW6lLXCBp9v2hB/49Bm/kanxJf8ke9f0ptYPwLMVv3rkqy0j49D6bE/ZqGs2gvxApSVCMAl5hertpnNIspDmr2a/HbeUJW+g5w+MnHtlOej6L57XRV+JtJPOAD+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781127994; c=relaxed/simple;
	bh=SrRXyIwZyh2fGMg1B68ZKWIN73N/cXNOmSVYVnaQX84=;
	h=To:Subject:From:Message-Id:Date; b=ZrKpxW39tJZ4V/Ibv//DejA4u/c9Mh4HT6vEvY7Aw35D+2lEeJ+6M7GrRcMZO7psRqnGHe3c+/2Lh3wP71WWwG+p0EX7k3DOc9M1Y6jH6PcrnO311nN3dhqohDw/RRKiekYKEvoJNuAGnRyOrrDEwZP0hqnIA/JVEPU7ILzMO4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uorkHF/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uorkHF/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7490C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781127993;
	bh=SrRXyIwZyh2fGMg1B68ZKWIN73N/cXNOmSVYVnaQX84=;
	h=To:Subject:From:Date:From;
	b=uorkHF/jYxQuj8lCDT47LBG9GgftzqfsBinSppxCrPOjsiaE3xnnsKz+qBSF5rrMC
	 lDdGYZN6K/ipHKaXabFHFgbeDFh6taxHE/HWMQi/C7v6QzCn0nBEenZCYn4mSsFQU/
	 pgkOwLUToRcel3bNm/z2gSt5loRkE70t6cfZQKv4IB8ApF+TlMPpdUPudKeGZPo3yO
	 CBrnHa3hrPDPpRAx9Njy8C1CryuXF1ytWu4AfvmmosY2hdfZTOR7NAnkR7KKRc0LC1
	 RzF8APMr+Mna37JBI0UHGJFy7rrXmunpjmB7gVkKTjaN9geFJbis8MOXAOQhSydRtH
	 qPxct3m8IKCJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD250CD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112799368.16724.7961251779486641254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a6e9a6ab97054739855967c1257c268e8b1ff9e399bf910be892b676fe60c6
Date: Wed, 10 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781127993
