Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B57B3921CD
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790377834; cv=none; b=TG4d4Vu6XnO3WdSYKzmiYDjmUxz9VQv3Au51fP5+iBKy3kx2sYt5ukMNimvw3e58p2afPD1efxtjxp5WUENAzFeEggsFaZpewSPBC7vlMdmXLurdIdrN1X92o2KOLd2abD8OO4+0/fNLjoFQY7Y3ZKhMUqsaDYZ50EOe8ha/44w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790377834; c=relaxed/simple;
	bh=fhvBk36sKEpVNBiiAQ++XBB/UQEsurhA+ZjmMu6uBqU=;
	h=To:Subject:From:Message-Id:Date; b=fn29l6R3RmYpj9UYyy5yMa57Ebp1+G+XN5VZFc4xVfrXDosgDIOqANMltVpJuLRpg0E+6yxSgWo0DYV580iGZEWCqi0AgVfKJMwrT2kK3Gkb/RQCKaKCeZd60Eg56yY0I/u1bfG3wIu4VymCE/h5/iEXC6eVvEUPUCkHcsFuEgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P43929HY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P43929HY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3ACEC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790377833;
	bh=fhvBk36sKEpVNBiiAQ++XBB/UQEsurhA+ZjmMu6uBqU=;
	h=To:Subject:From:Date:From;
	b=P43929HY2593MKusVl9bK5bohks0bSUDsFdHUV6khmogfrIpIcvE66V0RA/9hmyFa
	 WyUgwXpwefnK6bNO4ITBwOB+Aw3b9wTmIa/B/5qXojGKZn18Jjzyd147z64/ySFunZ
	 NQ818/PPqxGyVnHqIN4FfoxHZ8/Z07jwMyRUB2nhyRNdBottEFSXuA9610mXLs7jGK
	 EpAaSvqEylyc50BL2SOLjlnQHDLJDqt5AEmKuVbKbdgILz0RtuzD3hog+Ho4UfToPn
	 GYUkvq0+Oa4sDnXY79Y0w/pjfwcTE6XitcWkTEDZaLygE3HMU3vA7ohnIfsEiqGaVC
	 M/hNaxzZrBQeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6C8C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037783368.22245.12959502633790321751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d21bf8697c0e9edb163ca1d8405898ea662165cdf266a9b12f7724a2422a28f
Date: Fri, 25 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790377833
