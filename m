Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0571B423C
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757877594; cv=none; b=NR/YjXEKz1NMq94utN/ZMfez9PHwtKCf+85Ur+aWNRJox/+SGmtnlS0z21QPaVLgqBVJ7S0ZDHuit2A0iZrRF83e4MdD89znThbP64rP7tpoF0aS5IK3uPS9+qVHz4Nn/RVsnTcNyPoLSkc652RFm8fYr3D19jC2418t6Ol7mTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757877594; c=relaxed/simple;
	bh=S0pYjZMUjn5Exft5Cgn+9lCBJClnQngYUjfm2xbqHNk=;
	h=To:Subject:From:Message-Id:Date; b=kkQx7EMKMUNVORERy5YHm7HGxUZAb8chp0OXhotOsiCLYtV8R+zB4x+sNE+QBvE9xReZ/vJztFORQKvSCZEC1d9VFkoqQrqIbQhjMm3LMk52pzU2KGHfTjfO8XuRnF6cdwjSsPJMV0XjkXPdEsjrHpxmxZ9LOhyXvLsSBC/HQNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unFiROQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unFiROQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A563FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757877593;
	bh=S0pYjZMUjn5Exft5Cgn+9lCBJClnQngYUjfm2xbqHNk=;
	h=To:Subject:From:Date:From;
	b=unFiROQVWm0gfsbQ5DLmWhW1OyYyFCIZmbIjQJ/vI7+AolRCyWfK8LV+5IvkU42VH
	 AOe9gRWitjEUZMtLAzaBT9R57vZT3bt6Hkw5x/PomS0Eo8T1fyfj3PIl9sEAK7hYVr
	 ylCvwTq3kEHErWw6H8wVEb3XeWSn/rPHJJK8F3NWNUE/i6Xhil248OrIOV4Sk7RScp
	 SXCsxv8CWr0MlkVQEI8wk0Ati4h5wNSIG97vRYmpsQIu23D6F0uUgNNH/8wzVCjfwa
	 ohusPswsY7bJj/kVVaKmWox9IjSPib4yochRJDp/fmKr7FBnuplXWTinPHS5TghGA5
	 6NucncqIQEQMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9370DCA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787759357.20471.2274407216659815856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eda69ca8ab2b3182bcd2d85ea6392769e9eee99d915096543233335d7f4e462
Date: Sun, 14 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757877593
