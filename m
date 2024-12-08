Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001043E47B
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733699154; cv=none; b=qC/rUu4ayRM/cplygHdmPnqM351ye2j0wGEXCEdsF+FKw4a18tk80/AmCHN7kwshH7DdnroILPSq3pFF188KK93yqnvrVx/Dq9501dH6qH6M0tDKplDIOB09dnYZCVDMc7tD3t5ZkbZggI92TgUp75HxfeoMOYaf7g0ICnzRaZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733699154; c=relaxed/simple;
	bh=IHE+5kvLrjT0HgkHV6eLuNeT/XzZod+34GnYsrCQBvg=;
	h=To:Subject:From:Message-Id:Date; b=BX28ozFzvq69g0yanalr7VjBTlKChoDNE5QSbdA/KMewjJ7LgJ8s+5W7g976Rp0wFmSSBjJv2hu2KYHtwRUiEBUxGoZNbV+iJ0NHa0ov9KS+t8HKOVl+On4ld4lTIx0GcB2XrXxYZzjTlsCACwLYFIyoO1QGqhx+nli+UanSa7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtYSOE19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtYSOE19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A92C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733699153;
	bh=IHE+5kvLrjT0HgkHV6eLuNeT/XzZod+34GnYsrCQBvg=;
	h=To:Subject:From:Date:From;
	b=BtYSOE19YeBhRpfJoWTe0PwAwJanSOCrFrSSBdvLfyL5AMUaBbxcB2DyaQD9hX/hf
	 64dkXY90nC9NoJgfRGBiBlNx/Ol61EbE6xF9HHM+QqnYBtVaqZJvjiE95Y6jMw+WYZ
	 JEDQylF8IFwFJ/yq3UDC6bzXgYuyn8hUoXLtLJvFFLYSVtRZSzdDz1ylyCLrdtbl8C
	 yhYCntYyaxUD69suT5mjFP/hUDpk1spoDl6DgX1MSj5HR/oDJQ4OtC5sJ5NdafHx53
	 e/98AOOqj5CgfQ9TvvFPnsR00wRVDEKA0V+lFHEOUDE08yphk4bAbAmIyCahcKIU7a
	 GYp3LDtaB3sCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF55E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173369915364.17252.2790202029998466560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3177bdf71bc3d4c94db9cf8a7c7b48becfa3b790a1ef9db4ae1ecb38395b74d3
Date: Sun, 08 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733699153
