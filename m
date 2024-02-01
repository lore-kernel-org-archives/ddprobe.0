Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150AE157E80
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706771897; cv=none; b=WPusXOo35zDmXqA5Iapp0fdMaAqO8FHK131g1HRFArDsR5QDezzPBsoulaFsnKVluU/a7jyCVITV979S1JslDOxbkp4S2u7DP7GR0ZT0r2aduWpDAZLQrwxW6hEpXD+L5ZK9/iEt8Vp/thfmbJlVQIOHyZ3Xidksig3mOgeEFxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706771897; c=relaxed/simple;
	bh=MQz7ny/e8LykmF2cSBcur66FcrX2PbHFY7NHpZAfDTU=;
	h=To:Subject:From:Message-Id:Date; b=O4NOk8AjRHyOd/u0Z3O7LXb+oVnSXys1jwz217+CUTdsREmoDF/WdAIZFSajyBgRIQZRZZRU7tTVBzf+0J73jlMZA6JWxjBIWCbn57FsvvHruSLEldjGExopxH3dp/igvAaoMTIRh8pvM0A4egJxV374oXqGr+vQFF1KFVgBBK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwdHDyPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwdHDyPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D01FC433F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706771896;
	bh=MQz7ny/e8LykmF2cSBcur66FcrX2PbHFY7NHpZAfDTU=;
	h=To:Subject:From:Date:From;
	b=BwdHDyPSIOM8Uf3GKwYSMsEs7j2BcwZXfuxrwdtFSb5bU2tWJ0o10L8Q1cg24Vlsy
	 C7uG7ezVud4lWDz1yPeeR8CQHSSUGdANDizQ/0/8yUqQcGZiCOv5iACYifSXnItNKu
	 05kIL9895g5ttWIQY+LTNbILzHWQZ/AMF+oHBneAuyag4qk/8bHfPCBXHNKvxG3gxs
	 zXLAmLzD/VFRIYg0NUP473V9TQbb9PumImNDsOxbZHBVQl05jd4+jGVRC6DT+F5T1i
	 en2fNiC3de7OKw83sfTFNPxz6IYVei7E7SHN86ZL//RYTIQvMjGAYur/zP1utJtDJX
	 7kP4To9XBFArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62487C47DDF
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170677189636.8940.7325596758128067427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a0b8aee31e753ec12bb2165259cda8549cd4245393e916e2d960fc4948be70
Date: Thu, 01 Feb 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706771896
