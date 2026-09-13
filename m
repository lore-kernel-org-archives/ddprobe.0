Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CB6375F95
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789335034; cv=none; b=a+cpD6ppAPWZpQFNdE2kIagjKCPTNESUxtfsX1/yMfcJWw8L/Wqb0qyGYuvcg9wFepci9g8ro18gEmvFq9VT4TIZIs9pfwlDhDsHEq3sOFxh7fcktQCfJUcy1tJmQWZbcFclsQ3+hLLUIZQF9PWzNbwHb3Kd7qdAMrgmJUld0PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789335034; c=relaxed/simple;
	bh=Vh8ynypmTVLaJZWHbKKPuqoCRDLpJdeNqnrYogNwuWM=;
	h=To:Subject:From:Message-Id:Date; b=FeP0VuFlXMNGhhbqO+AFYrDI8kFX9+yeLzLXf8Ic9zXtjCep7IzJquAvBrOAUJ0DLiH+EY9Nf5xqICpuOnZJtcfYzyQPXupn76g2gAx3dxwizvUdVImZhk27y96SuGuhJ1ilMPwKFCC+9OknI2ct/aANA6QqxMOrFaC2whYWca0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUG0/qlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUG0/qlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A88C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789335033;
	bh=Vh8ynypmTVLaJZWHbKKPuqoCRDLpJdeNqnrYogNwuWM=;
	h=To:Subject:From:Date:From;
	b=MUG0/qlOG32UxCBMZ/RtDSYnkzXJTg7M95E5JCVYq+Xr7RC0xoT0yTXU2QmRavfT9
	 we7o0dFSZywiALYAyLCQzO6P89L0gWUdfPSbCTgRkBT+Vly4aUYDb9Zy2tSgbT/wUd
	 XhX0xK7vhi/DWOJGyhwC9DH3jCFW8f11+YEQv99eoCbNte87WupGo04ZYLBI5ztqmY
	 geYMphi035ibpdMqjlA1JgHPou3UR0QhIaBUcrqWsSCdFuhBXhZxTAM7IJSbmHxAH0
	 LVzw3QhRpE3GQT5PtbG3b0kjlK68C0CSvkOWIp2p/jcHo+QhWGZICQTPT5WHKiMNku
	 lA42lX5nLRQeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3587C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933503369.28903.14895402771299668939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9a24d630fd73c8b3f5f4084fd1b88a1315ae20227c48915accecbe4fa26025
Date: Sun, 13 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789335033
