Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A07FA3BB47
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 21:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722805555; cv=none; b=ZbavzHC5FSvq/rsiTKEvDTnQTRz9q442aazTbBOJjeXaNY/lHZTI+Jomyz/gU2k0xirnXpKT5zQUpoxtJaXdVaGdnStTApiwvadel/q2N7gHcgNFpz54AMhhsavm/cz0CbhK8XhXcKVI67k4elZVW7StW0Zv+IzzjOOXOsUevpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722805555; c=relaxed/simple;
	bh=DaUy1nCB2c+kOsisp9Y7Os20sNZy6qubpE6Zj/KNrY8=;
	h=To:Subject:From:Message-Id:Date; b=lEwi541YUKv45wU3S30xJavTan1SnSIQSY/jeWzU/cgpk8EKeFw9oQRfihjc98DvN4afsTqB0ID9ePxMVbH7bk2TDANwJg9/iO8QPHeWE7E3j7oZv/8OlqDBykZ0++st2HGTvow/o3vQ+xOQcom1sx784BW9sf98Y0B3CErd+mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j978IHCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j978IHCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB532C4AF12
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722805555;
	bh=DaUy1nCB2c+kOsisp9Y7Os20sNZy6qubpE6Zj/KNrY8=;
	h=To:Subject:From:Date:From;
	b=j978IHCNq9aLQ2w3om4YNl/3Jid1+3PF1mi7m3zBNWzZlRvPc/FyLirNhcgdXYQFA
	 2A3L44KjoNb/DC4b3xqrmu20tWibdlC/HfEGI6gz6kVZBLcXnQdbVaaI9woStIWjcA
	 9vW0FzRG2elic48Ufja23OuO+uc3tyOEVpUD4r8upUp31vR3eutiYeR1mlJFrgq4te
	 8uq3LJzW5q0hVwIRtuASTISEydLQ83WxRj1feoFkZgKwTDdjkIE9LFAl3q14NzxhSl
	 swRAfsUEXVPFRrZ3pxf5XsQp36N/LFVOBPAT5f4u90FFohBK5NTWh+Nvk7Y/YN+dO5
	 Sz2sF4ziyT9oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3E2C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172280555368.13606.13611550700595715992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b8f2331242f31f5ec21f296723a3545ea40a4e9a492bb4c47c5a16e42e8098
Date: Sun, 04 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722805553
