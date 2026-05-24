Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF123AB271
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779639754; cv=none; b=qz72f14axy3im+fATXr+xAxmqNmO54wqn35JLll+wRCkyqXuIKaFJRNEZ8f21U37bmns31j54cDh+JC6GqmWtYip0fP1XMgAvNP9jZjK1/D3jjHR5zNU8yLyraNEUDCRRNvE91MrYftrj0oxeZmOgEOwUkmF6FC9eq9Xc7ICeKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779639754; c=relaxed/simple;
	bh=FiDvNqDzWcItf6z4T07VURljOhbS31N0WN7jB7h0VaQ=;
	h=To:Subject:From:Message-Id:Date; b=WvkmW1tt2y/q3T6lxVukDc9JiJgVInKJzdV+p7It+U0KL0aWrEwM06yKsGbqXH6Zq2HYH+msvrIalWaLIMuWdj0hQkWl9gL5Tqoqxn9C8jhyfHtty0MG5zuZkqODNOQV21iZCeokHqQJOW3D61mGpZPzgSfZtAd0xZU22Sz8UJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKrA2Cdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKrA2Cdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0FAC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779639753;
	bh=FiDvNqDzWcItf6z4T07VURljOhbS31N0WN7jB7h0VaQ=;
	h=To:Subject:From:Date:From;
	b=ZKrA2CdvVDti7L7krJ/Erdx16kR4NoPCZZ8kf0lNioCMK1LCwDsF5raISUqNTV32J
	 jn3/dNfBXd6kPA828r45OGRlgb+z1AwSBy509t53UgtW0s2OQ1IpFUiABxTO2a4jn3
	 eVeQmfcdAZ50AOixr9QdFLC10+FOlIMvdYa8yclgczJ8Dn+aabMw5SYeoIP/1hn1Ew
	 UbEYYUg5gcinuHw1kXThJCjupLPRNu9wMPPg5Br0r0hK5GrDjbW962hSKFUVpv9gwR
	 B2bk+Zks+JFbTCLhPzvdNzx3C+pUVcAde2IHgPf264FRIsj4Sqim5mUVkeH/5GZdxO
	 W1whxHCSLD+dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86EACD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963975368.10829.1190586782347229150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9536c77484c00626e3973ae3cbaeed9d3b3420f2be228677f65a60661b5be6
Date: Sun, 24 May 2026 16:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779639753
