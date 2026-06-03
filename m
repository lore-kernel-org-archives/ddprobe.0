Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3018B3E171F
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780506274; cv=none; b=QeM0bXyuXhv6r/Azx6sCFwH1+x0R4aLI16WlWJHq7iumf6DREFK9h8YBEDyPgnKuQwwFvhg/f06/54YkHjPHuoOvD40PcBFuvtT3c/bLcQUOHxrMjFudigAfbThyIw8t9eL+OyDJWHEGNNo4ImBaUR4XY+27aOAatUcxXP0tcP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780506274; c=relaxed/simple;
	bh=Tec77/TxnV17Jqs7aYTHk+veHK+tZbxT44jte6E/bHE=;
	h=To:Subject:From:Message-Id:Date; b=a8VZRqr9fi+7Hq1FlGt4r+pBbonZwWedI3FfMDCwQ2mrrOxKJsQzw2im4Mf56DEM2vpEyNGta09MohpfVV5vNwQW6sjKR3zfgLcUXRCIQo9irDY6n4fdyLrjlbcG8IpLMMuHEZZSS31LJokbtAolyCfHlixK5QxICY8gLzNAawQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpLXwIMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpLXwIMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C947DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780506273;
	bh=Tec77/TxnV17Jqs7aYTHk+veHK+tZbxT44jte6E/bHE=;
	h=To:Subject:From:Date:From;
	b=LpLXwIMkOVQDq7u6eUcoAFxojicFvAFtog3yrkwl2gP4l2n5wbVjwQ1yOklfU5Zju
	 ZumKNlfinK9oNKdcHzPsnPypMjfuSKtC15gKf1mr4s4ayIpoWtqECGPbL/TFepR9vX
	 RAwQZ+c0zG8ObB5pBdEhiUOdOFmXqFoxjs6EQntXbpJoXF6CChTOPV+hcx2lsvscsG
	 S+6d8BUsKp7/7P5R0OJPyvx6mPYQwLvODJuOFFuZmIqA3a8J9+QN/YxtQSDZ6SAzig
	 0kv1GLNwYp+M3lDVQet+zh1AfaM+CvMLAjBBu+J+lCBVd6mGSvsHnK5JN2SBLV0QU2
	 NspDtbfdgbc9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD290CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050627368.26178.9841570382098694841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e96d2ac8d8f4afda7d823300450ea53947f0b97ae032924adeadf1710f588e7
Date: Wed, 03 Jun 2026 17:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780506273
