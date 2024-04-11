Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E752913F45C
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712822897; cv=none; b=ZkOWDC+6aql/oGwPIOqZL1FMDojHBVejuwlu3jWjRFrOufAnHlpwUDIY1YStvEFs+MwsZZraXqHB5kzRbACuaGQS3zG4lTyavAbV+f5d+t+uNYbdnbv/e6BD3UYD3Nr1Lb1AMVDCjIpai+r+7gtZDiqwMcdpVQWyYQwu95vJY2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712822897; c=relaxed/simple;
	bh=uo7qTfsdspiaS7LBYkVFKbfToGcKF+Ogz+c38pyXwPs=;
	h=To:Subject:From:Message-Id:Date; b=Msz7kquoVo8YwTmbqkb3VnWL4/Da0V1bo/8EppKcQaj1QoLHjaMpSyjxapOyCUer1Cf6vw2iDXAfLqd+ESGhnRXrU7NFVmdqtukh/SRABmf0zW1yIMG5Crx27+sqABHEOqdPPpwiXRdNu6seTo5otqiIwnG+UJA5OYKhBCvib3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhQ3ARNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhQ3ARNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7138AC433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712822896;
	bh=uo7qTfsdspiaS7LBYkVFKbfToGcKF+Ogz+c38pyXwPs=;
	h=To:Subject:From:Date:From;
	b=rhQ3ARNexmrvvqgVNnElgP7BzlZ1QxbWEKOyoZXGvbhOwd2YX2nBh2SSe2aDYvVcM
	 EsDNiexwzVwlwSY+qwV74bJCTihRhd0fzI2Ywg8jAeD4Vx1dEniFYOkGurzqoWOqiu
	 27Gv0UgLhLc2JWva8blwPuEzjHRKGR1aYxh0Jvd9s1GJuedlG7308uidMKdUrAorlp
	 8KC0TBymxXbX/xdqsG6orc2srjpGhu5ug4jjJfAV614EnAQQNdjQYs6/9Huinsj+Rw
	 HxPRwVTs4hBL0ZaXQRncuLGxajnBb+patRrCpx78oZr/C/K3UjzZT26Qtsi2nQgPhT
	 9Xnb/dRO3/Srw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD5ACD128A
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171282289638.16234.3265980268662949038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1913a5c788fa5a70758a7e72a440aa8fa80741f31eaa0a6c1e3b9b5a7d899814
Date: Thu, 11 Apr 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712822896
