Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CB15380F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719218543; cv=none; b=tDT6nZM7u/1dZ5s4/zlUkyCQaUJMgTbun6rFWOD01ziwPkL/bTnTPwTpz9EBG5ZWRZv/NcK6ixRQ7VjytS8/n9kBgm5cfvw4LYzrECOcLPltEX2Hu2qbqWspRPp1HicK88soKwNvr65jo5GZJ1915zJMrzdEheBoCjp/GteNqyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719218543; c=relaxed/simple;
	bh=+2lvfAzu5ZP1cdkqlZ6ovMYj0vYQBJ6J32PJ+ryvKgg=;
	h=To:Subject:From:Message-Id:Date; b=Al52ythHSUWa5QUyc2qRQ6MHwj+D3XGbWPp3FYcrr6pp46yEar7svlD4v+qJadP0/0/jYYrmpMK2t7rf+QsY1+j88J9GN3F5Z9+WmupldXoRsPvpA5xHcROBfp6J27QoTsKM7RVtQQiSzY5xZKBoxshEsx8fdmukVPGMWnRt8OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfoUMLmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfoUMLmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA691C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719218542;
	bh=+2lvfAzu5ZP1cdkqlZ6ovMYj0vYQBJ6J32PJ+ryvKgg=;
	h=To:Subject:From:Date:From;
	b=KfoUMLmpU0OCE6dNpzYRvHsJ4TLw2urAz/yu/4jQBoBJ3Pu6qQE4ArrXlR3b6mMJN
	 ixuSFg1lliIDWvF2Bb004Zt0Pyp9dicef9R8D7fplAHag/7W3S/3soEvXJncTRs3tZ
	 /m4TM02GDm/bgvbdGnchHPDICC8fMS0SzqOj8V4NgOksnh5qVQQcTMBXT/617dGLLB
	 Vd2mfgzGyUbT/QmsB7XeviOxrFtKoMtbn1Z0Mb2Cj65qOiyCAFgJWfzS0RB3dl4IxL
	 F/Q1ozorM1HsPO3PjJAX2GxrVq3dYEpvBqcZSdAfoXNe0BOx4V0DF3vrnSTerrfU3V
	 wOVx4vrUWNVYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F02C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171921854280.31713.11808420231260903560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e001a5883eed74fcb0252ef9c8a109f4d634055c48111cb49086400150f51822
Date: Mon, 24 Jun 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719218542
