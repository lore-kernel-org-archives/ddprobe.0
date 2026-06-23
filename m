Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8503672AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782207994; cv=none; b=iQUtmJk99BIoeNqOvFrcT5LCIIUygj+wCLaV2Oe9wMF8up2iAsvZG0Gemx0xijiqNC7OXTh/phphcT1215ZVv35HMIlaafHPYcPbzO/PgXB/GcDkDLq/87tFIY+Do3POFKLhMi7jhbBKWeWhoX6HU7NbukJXcCU9P0N7TgfK6ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782207994; c=relaxed/simple;
	bh=Q8LyvfhSs/jfHEVOSWLjZsaBTM66iRZSm8pec/TaTVE=;
	h=To:Subject:From:Message-Id:Date; b=OIv4FOnFYa+ee2plZYOvffP4Hz3FjYTQkStGP9smQCLdxVpZDvrNMJ5XuILXDpya8KWMEoKFEHPhjAb6gPCFUSc3tLPcXDx1fr92kx1GcCEsPhiX+VNDS6JJbO2rV2RQM97oGLcl575h3Nw63+KW0gfD/zmRZ3jeRX4ByXY3iI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mt03TYzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mt03TYzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DE3C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782207993;
	bh=Q8LyvfhSs/jfHEVOSWLjZsaBTM66iRZSm8pec/TaTVE=;
	h=To:Subject:From:Date:From;
	b=mt03TYzhoe0qQG5Jb568Qviq71RbXd9ytpasOIdl8tvcpbRh0T0/yhSZdI5wTklSW
	 kuacoxvJQ8X8orgzt3GUFQN5fybNxOVa0tRNfzV9kVOujIS/w6uE2x2p7wSP/4HcT5
	 zM0mnxGXcuHGLOaQff+aRCdRp92gsjhjLYGFT7Htu9iiwNj0WZ5DUM0ho+hTEkpBDV
	 2ShnEt/a8S35kiXMYwsqgan8FXyjM/6+m1Q0ZL6iQQio0JuY1ne8f3p6gBa3FhAWVO
	 u8LDJUahDsJANOpOzPJs3Kh1c+C2MpRmyY748MIb0Cq0L0WWx+XF7KfVvRmptheDgM
	 w3ImMYRr4aHYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD56DCDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220799369.8405.14084458300995426729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d773cb99e406572f3bf525c01ec4d4720d910da3743e7f5026c9fa1efd7b858
Date: Tue, 23 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782207993
