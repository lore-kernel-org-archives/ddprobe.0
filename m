Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A85222581
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760332194; cv=none; b=eMGiMHtBHYtUQIkRoqhPh4CkxMdz+0KFc6sbN4qbrawJscIoCXXmOeyCV0b1UUvGCQTw1Eh2YAWyiZtTA7mbDOiMM9roxbp2BWYmZqAArGEnBQ1sKcFVgU9wp+BO+fe9gvUAPPeSoQpZLk1odWnsZUAXjlsZWHOv317vdTt9EIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760332194; c=relaxed/simple;
	bh=LvYkVqhsfnylslIHS0Hn5bRARlmhOkmCYUAhtGPSRyc=;
	h=To:Subject:From:Message-Id:Date; b=XJMuCdqNL8Vb1pBtjjKTYF/IujxUvebYkrLC2DZ6GOTpfo0p0+FcGlJuXMYCTXAj34I1cZRXwAEP/bsHL5iXoS+AZGLkYO1cRQt4yZEPbtjmT9AZvK6VfKRTDcUO3r4MSFSAeNH3Hm6IcwSehwXpVsrr55Yg4GwWEMqoH4Pz3cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyJDUs9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyJDUs9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B5CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760332193;
	bh=LvYkVqhsfnylslIHS0Hn5bRARlmhOkmCYUAhtGPSRyc=;
	h=To:Subject:From:Date:From;
	b=DyJDUs9eKDz3vKVX6tjjCAavx3Q5kAXHdFSY/YT8JwYgCdoub7a2tiJueDkqGxv3c
	 gY0smfHhWE+7ldmBirTPGVhjitT/6nFtOz8ncK9grGwdzCmk/WBG6oMClk7FVcqveO
	 Fl/xivp2a5+6raQZEYDpl03tFFBp0BvR9B9afMmt24ZA1K9CTKFuwUg1NO3jFsVkGN
	 G/s5U7Hpd3uNpnhNcTjElQ/Ok9kbu/r9MER14VLjVC/uXsbQ7KS6G9r3BANiqcBl8e
	 c64TQdF5hFrdnf8BAg9NM2zZ1IT96n7dtntC1DXZdS/jEtbpwSegWW7WZ0O8zNm6dL
	 2XZlt7+tCQQsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96039CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033219358.21668.2129448795894599500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6140a9ab4e04d6ea22589c368486628cd9bccf49311b4e469f78b0a42b9f0d21
Date: Mon, 13 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760332193
