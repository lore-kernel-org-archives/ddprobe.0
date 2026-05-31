Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9708C1F
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780192474; cv=none; b=tBESk879TdCiwkBsxbE6biS64I7j/iqG6ZuW5jCOd8lug4N5lyXkFMCF32oozgcw8HXPd12xpdN6OXq3pilVgm2yQInmp6pITF9+62Ib3Aty5+zfGl5Nfept9Fk+BYSayr4hiCIZEk3ERRiVNbKa6GwA6Z5wxkmN24WRR7Layew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780192474; c=relaxed/simple;
	bh=dELsNRRGm+Bgi5Vmr+gjlzFmKzFj/19oatxBkQtYYtI=;
	h=To:Subject:From:Message-Id:Date; b=ZPX1FqAQrAw7MTsYMmxvtsCKDimVoL9lzFDWs+mm4WA/ItoQsXSWSAtoIvNFgsJq3pR96mnPXVU7mQUUrbJ9iXiL4Pr+brTzUjUF1qA01E+1g0YlH8NKYcYZD7kJjA3tsqK81Th0sxfGh1x9+DSH61XYA++t7Yv5oNxO62wWG7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQHIyhKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQHIyhKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C512EC19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780192473;
	bh=dELsNRRGm+Bgi5Vmr+gjlzFmKzFj/19oatxBkQtYYtI=;
	h=To:Subject:From:Date:From;
	b=DQHIyhKeJTOksWQ8xpDmoTa+NiWrRdUlDw3I0kjY/2BbvVoo7YbTchsRX+GLWwXOw
	 HuB+xIMNFWuUVk/+2EtBv8qOcfDmT+6kZFLkNHpCF3NOLJveNnk/tW5MAyNJuD3C8m
	 uzusezxtFZFQ10bwS+SgWpJyCGAhTJvijra4mhhbgYd6tzvDKpr4Ho6uc05PhT/NFO
	 QVKwqDvJweX0R8DYr41Wvxf+2kR2J/RdFhoCaiarR9/3ftLjYR71oz3bpP7sJ50dod
	 /LPhxPFCYqpGoAnzH7H+NcpHRxZAFMZBnBNkRFMg3Z/4Pw2IPVRJDq4DVCxbE8x5k9
	 GfRVrEN5mNWog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBE0CD6E4A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019247368.2476.6920899143273803740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc99a96d64ebde508f96cb8586d7aa88f97ff2b8bc2cde42541f0ccebb6e6ba
Date: Sun, 31 May 2026 01:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780192473
