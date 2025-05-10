Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3633038385
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746884394; cv=none; b=oatdT7OmTkIaBDjBxZHM6RsSFchX/xDU9U3xVRPx+HzViALSLsYDC3BNT0JIzf0cCSIub0RynL+156aI+8mlYeFQMNIlNlLGL+/yy/8CrtSpfr0sqz2xr2bp+CIcwdL/QhwQasvsK0jSGVxpmdXNhn8EbonkXE8QVTaOfWKiqV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746884394; c=relaxed/simple;
	bh=EJisPTBjQj7xh/7nKET7GRj0OKGEA2CjeKiRVoM4Fzc=;
	h=To:Subject:From:Message-Id:Date; b=Eh0Ij/E9EDQs3cVJXg5FDyJU94YALMK42j36ktLRJv/Un6xRQKsN+H9ylQDB0zNTwmK/5LC/3tPORFmQCTxF3QqS5F9JoCoZByXdq8DeWtIdkUviZXMuu7jNao68vaqFd8Jx2u8cfE18uzLHpr2dJsEgog+gRSdlv2VSz404NBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssOGLGkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssOGLGkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C75C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746884393;
	bh=EJisPTBjQj7xh/7nKET7GRj0OKGEA2CjeKiRVoM4Fzc=;
	h=To:Subject:From:Date:From;
	b=ssOGLGkjagfgY6opWxTMO1s8R7XiYeinoFV2HgL5vi1uCr6Em1yF5tvmn3l3ZeVpG
	 zk68Wwfcf8JTEhbAw+JkMmRuxIa7IaTg+rJkGyiATMVsk1jADBLDMXgNpvpYTgNSfh
	 vopwOiY8ACAkOojhq7PqJB3/5AYz3U7DY9wWg+emTEermswtZbfFDh/bAcWZSE1jig
	 B2l/HliWTTh3p8U8jhQB4JVAnJU3FltG6Ni2Doewi0TWJte0U4TZjBBZh+WU/KAQgV
	 gaVIqxE08HhbnjKyV9nJMxOEzSTYJDBPT/MQiVvMrWc4PTXtIU1+No16mQy1Ceo+xa
	 VlX8XfjDU9ogg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB0CC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688439358.17513.17614249329967601052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a171527d02d6974e88be4c7619a176f8d6460858decd313a3a5693167e51c40a
Date: Sat, 10 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746884393
