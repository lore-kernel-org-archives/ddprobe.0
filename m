Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AE714B08C
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725198954; cv=none; b=dhOoMS2JQAfchuDiNArwbo6Bq5McLMf5OT/e/njJaM/nZDB1FuvLbCgnMVVSRieOEXO/4AlVsW0tyUbsf0T/8MRfsVg5ZrhqIDx3FpkXp50L6R6yRYQ6pzIWA/pIDhAPFsCGOGvGJigz11FFhkqaBrLiObJi/lXUdQrUWuJ5lks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725198954; c=relaxed/simple;
	bh=Y5Oj6+sDwBAR1t4mwRw8L0Dgtx26dtKWOvj4Q45+QcQ=;
	h=To:Subject:From:Message-Id:Date; b=FGTjeU/n1C87C/wIkkeNTGdiARq9z4hNWEbUUtY6nlOg3xBrtEYmInaln9IvpIiKWEJjPf0tAgJbCR1ntiYA35JM1G+hA9LHYFyaROcQ+1HwGDO50v9OAmZdkZflTain5ylmoK+mSin/iZz0pdARoYO6ddPo1MB+EE4S70Lqqis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oubZ20P1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oubZ20P1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4480C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725198953;
	bh=Y5Oj6+sDwBAR1t4mwRw8L0Dgtx26dtKWOvj4Q45+QcQ=;
	h=To:Subject:From:Date:From;
	b=oubZ20P1dbd/33sklbJ0kZa0/Vx5fKTL2u9mmmobQIQgxy9iLiTaYWu52nCdJ9Q7r
	 9NDR0bLB+7EbClV5fIo1/YnZ5zvZ8lXJhiqf+VgWR3MB/6LwPfUtJD0yu3btuA5z+C
	 1gt5N5RLOVqPqyqyER8ky32+9TwM+QVqxxPWNDZzX82SSE1g16FVnnm/bCTteWw1rP
	 7AR/9ZXv2dqrl2sUno0BIaTosI+MYj7sjvzQujupQYMbATcnwJai+qSzXyCmfxvxRs
	 /tDUMKjq/M0dJq3rlRQyrfbineK8G4nlOvkqfTIj0hO/VVC676FKN6yWbhPG/O1Fo0
	 6yYIxvULUaK2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF27C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172519895364.6613.12434657308948718870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b61590985eb4f9bc538ab92636d64d794d94849cc6fe87f4c909ad7430e91ef
Date: Sun, 01 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725198953
