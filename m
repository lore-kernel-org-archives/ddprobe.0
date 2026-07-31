Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF25345EB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785467434; cv=none; b=szqT8BLO1/QCK6MZ1Qhi0XQbPVQUkOSH474Jbo86mQZeRxdtc2FcqJRqC+ftNSLelK0isdDHTXM6ivhV+Zn5OTF4Ugq9RJVcs+YgFyYxKbsDW5RyfJvaJjSn6aix1ixTJuf+UC4K/krlbvxlu69AFRQ32s/VNp0MuDNSsdlOv0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785467434; c=relaxed/simple;
	bh=VLPXz15A0N5fLwVxrOk/3jSUQ0Yu0BMFP7vMzGhK5ac=;
	h=To:Subject:From:Message-Id:Date; b=Gd1L8Ew+0JdBkZWWCjbNw08fwYX/Bvaq13LtmR4+USRh0jRVC9qao6YXnW0HTr4kx9euNNwqZZ77RcFpohxss86iZPwncWLSnWd1UX7484ofAPro0mBo66+WTPMt4I0ktIS7SxZvKoUXsEr55PDzjgkNCJjtGRU0BNUY8ZaKckI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nupB7qEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nupB7qEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC101C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785467433;
	bh=VLPXz15A0N5fLwVxrOk/3jSUQ0Yu0BMFP7vMzGhK5ac=;
	h=To:Subject:From:Date:From;
	b=nupB7qENHiMZQjJ2Ix90ftgAn6yESEX6R+HB/xOe4dcVN5JulpQ/763/QBziH/je8
	 pOhAn16amskLN5WWNm+A4l7+WYRi1XeP04HSJf+mwTi0jIG5ybhG5014gEf/Jnj06g
	 FbcHeDDzWkt7D/EgsO9wAeA1HVmZzFMSPWHqzx2mpPfjrraQT7j10XXsFj/IKZwm3h
	 8PYpWe6n4NXtkG5rYltPBk26Xm+EhPFtIJreaNuGgUhrPykO4hEJgQoYfqHrmErZxn
	 nIlc7ixcA6lMoZRO7T70Bia8RW5H1Mq7Hv2cxDxb4OPLLSd4yZ78ZvsAaUT74aq20P
	 C8E4jKH8ubMXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9274C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546743368.24008.12295033842793807095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867e0725ae9fb86597c6aeefe4ae3d28a08b648bb113c2241f9e94b26ca625ab
Date: Fri, 31 Jul 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785467433
