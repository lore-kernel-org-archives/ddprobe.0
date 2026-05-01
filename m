Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C855175A6A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777644454; cv=none; b=dwF58egZunAuPcf/Wg/hIKYpTTQf/TqOWY2OgX4I4qkXyug82dOZwQltAFN1hWrlkzLKLZejWP1S4CVe7HwGLcFvismfUkYbSnW3ry0mvfUJ5xKlYrAgVoOljr9Y8ycVwN7ku+Q/4pOUpOQxLw0UsFQ92APMcWYUzUzEL5uviIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777644454; c=relaxed/simple;
	bh=jy6A1NoC63YGXyVxme8EK4KpFZqNLR//A15ByoRjOg4=;
	h=To:Subject:From:Message-Id:Date; b=uwJUNHgXsSbcFobE7ouauKpCg8wlghbD4AqRO6a2Vqvwob3qbmYpFB1S4pr3mtWhl/rah1OmWlyvl+Vw6eDkrub5YFaGiMB7LaeuhfuasYT6M7McNtHFFznkEzjKLLFh1JPJqgb/NGsXCskHKlvy1kPOS9nfy5wxBQSWbQbSkdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHUSJ3nk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHUSJ3nk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8C9C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777644453;
	bh=jy6A1NoC63YGXyVxme8EK4KpFZqNLR//A15ByoRjOg4=;
	h=To:Subject:From:Date:From;
	b=cHUSJ3nk3o5UPNyqYYmCzxLzN51QktE/IKaXw+NLVZXW5oaxBUqnBqYzNuud7nMcC
	 O1UmHNuxfuPevGITuHXvympMAWJh1dm7lTMzLHPs/43Yomw//6EU2ugPFKPigS3rKt
	 iZQ9WiRTebARej/uk8wGun/ryrXuRJI7N3NM/hqUfRIlkRrVXujtQBrbQTQL+GOFwW
	 /Y4NvsouY0SyzuVeaGkSLEaHSM2XBefnmAqXaYET6vTLzNYT2ajFuV6ZE55kDSoQK2
	 vxfSn1xO46TQESTzggd5FPZ6NsCJ5nc9zzZM5aNBtsswUZQb2hhtt0L3TDCWEc+TNV
	 U/mITQzQ/EzgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA17FCD3424
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764445368.2438.4374384831564147960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf06c6754724c477d9d9df948ab243d9e70d08f9d6353f05f611b6c81646377
Date: Fri, 01 May 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777644453
