Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417F420D519
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742388596; cv=none; b=CeFCfTA1Q/UAEJ9NZ6BtxsoeiFWTERFRY1/DYb4pEVxe8laR3AHGADqxWsLvJ1N38QibKdHLkcwKuidfzJXNNebXQunQ38OT3Bs247KKM/Hj847djsXr77cUtni7CjqxM0brlhMMRyMRtsiDbqDuLYk4XG2IfryTdGmZ3WdWx0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742388596; c=relaxed/simple;
	bh=Eo1bwph6fdZEaSR6iy3FixZDAIyUkj5bEk60QEF1p7A=;
	h=To:Subject:From:Message-Id:Date; b=grAivXkKX0ZnZH2D7W27L7Pto2W6RTdO1JQ6CRZ/G6y5qcJPGgmlNmn3Gfo+nvSTGIgDko8xlBh5+h8BnMO9x+lehIDDUnu4bkp0i0RPI90f0Gds140SocT0FvpBQPWCKvxxQNRHhBe1+zlyMe9MJdc3h3dkWl2cwa4GD/ygEk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QneffOty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QneffOty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE37C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742388593;
	bh=Eo1bwph6fdZEaSR6iy3FixZDAIyUkj5bEk60QEF1p7A=;
	h=To:Subject:From:Date:From;
	b=QneffOty22ON9WGlCE9VuN0qk0rFe1059QZeF85bwsuC7GPAWA9LhQWCoucm9E/sj
	 oZhp9V+JYnUpnSO/Yd4aF11xJHvPemNetuwGu8ktNqpHhtIVytn8rqunMlseF9WOqG
	 VKDDVE5htJoaQyglfzmCW1saUIVhbObLIJv8rkCNHSpYOWHNz58vbrY8uvIcq35phK
	 iymNbNE7ibSDD4wlRYKGhGErsoRA6DiXfV2V9FlZqZ0Yi8FQkKG0LOLy+a9d4NtiJR
	 p8i34lY20KH3lrAosulEMtYVUzwXGu6FkGG8zX/ZV1HXyQ8DUsrX5350LHfzmlQpdH
	 sCKoSbEghPqwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBF0C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238859362.14347.18009166436231326069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a654662a7bb680f1df0ae974667bdd792d523741c478199e3e750b91149136f7
Date: Wed, 19 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742388593
