Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC3FA95E
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746973194; cv=none; b=WEI2ozJwK9vHNqdPHglIfWsuLAooQM1VNE5s3vCUM8VQEEhOR7HHowoij3WfcB4KnXCH/wzC4M2c14ZJuCynzn/z3hutvrtI1uLTrEB64QTyiVtAqM7igFLsodGylSC8JrE3iVpj7xdJ5lX/YFm6thIqVTeETXVkrFcbBz4r4o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746973194; c=relaxed/simple;
	bh=BvHAK7Ruiz2ECITo4l2/A6n5rTU/ffiexKvjCDVBWes=;
	h=To:Subject:From:Message-Id:Date; b=uG7YnmPRfwohNbcr7IYA3zpqHtF6QIBcMd25pAdfLiVjfChAdk4BYT+I5fkQK0YET342x5iSCdQgVE0rrlsppNcLJIVsRSusFPU8J/EOEhzhVZtbzjBMUD7ByEXA9SbeTkQnjRfW0g1VnZrBuJ771C83/rtcfZTRoAvoI+8nxCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHH2VlqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHH2VlqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B5EC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746973193;
	bh=BvHAK7Ruiz2ECITo4l2/A6n5rTU/ffiexKvjCDVBWes=;
	h=To:Subject:From:Date:From;
	b=KHH2VlqQijoMPUTcc/xfe8FLKGtnrcPen3Tgo4qQkjJxQiZ+Dc2VNTRIiHtlPoaxH
	 3+FcsweALUhslRj1bPALi2buJVeKKaoI1SChY44XJnafhydk0foiKz/xyHO2a5t3lS
	 OaMFBGSKuMDmGA4IkDXJwDkPtoEYwAYQVQMsTafXXXWrSCU1fSNowGirTT6UsLkBTQ
	 gJFYbW1XSFwqAxK3rFMV0aSQdLoqslMfy6iNtX8qZJXYC2Uou3JzJYRhmU6lQXyfUT
	 aSSFyW4NLjk7TC7IqRfKfbeXHAfMyRFnUD4ujj8WdI1DagwAxyHwp2cJeXO/Eqds/J
	 szbSwQJcPqAkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95201C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697319360.7873.17938138185959024494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464fa5a9df17dcf72dd2b290c607559145f86cf0d56e1cf228a064d52d6d2693
Date: Sun, 11 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746973193
