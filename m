Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4261B1C3302
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732015554; cv=none; b=P96F8Gm+f+2Sjf82uthB8dB6L16+eZPEgpV6TMlEjsNAsYjFjxk2Zn6p7G41q2n6d74NS9/Id4I/xz75L94PeG5HAz+wePp0gMLD8YGAsa9EnUoCL1qc+CwtB93rpsK2UxfsY0bHcdO8xl83DO00wh8iO7/d7TnJi9SA4iXPAKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732015554; c=relaxed/simple;
	bh=2dHPprF5IndTW+SSOJ4Ih8ym7OlOpGo9eVqID3Dh2iU=;
	h=To:Subject:From:Message-Id:Date; b=a2RD4hTu+gxIvjj7Mn3pEztPNFwLF4AZ7wd0AJZ7OaG/6z2Ai0nwWsMfoZ6i5Pjrdss7HLw2nAhxQSnoVc6CMzs1jzS4RiSau72R6/DyG4Py1Le79aX5wu2skR5d4TNbM1NEp8y8kuVqYI+JdGz0N+fX838z+c+989zXfrAaqIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPoF+0P0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPoF+0P0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3033C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732015553;
	bh=2dHPprF5IndTW+SSOJ4Ih8ym7OlOpGo9eVqID3Dh2iU=;
	h=To:Subject:From:Date:From;
	b=BPoF+0P0c3eIKLAjpu9T7sUtR5cCebIXdvBjOeuepOAUkFIstrVQY6cnHFUfMgCSP
	 qD1zulTh5eAKZjQjnJlteLevoNmbYhsq0eyZmFHooHvgBCd7DShBarbkjWBH7FXmkF
	 wuXU/BU+fpoCVIB/vm9PVKxtqqWwEb+j7y8ewSossqt7rbN8BQ1HgGOkTEgkVJPN11
	 ng50b6KVVVxl0MGviV4AbDYJ7+k+EgwARNVDDsLzWMzqwXckVC7AvqVRoodCNON6rd
	 Y7X6DqApwFw+pT2SGkIiF2/2GA4ba4IY5kJ78nUrv7lMcLH7Gbi7DKsXH0gVQVCBuC
	 /ga2YAdZw3/jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A912D44146
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173201555361.12142.12739105803791757877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf72d163e51780b3c5572c28a0fff2ae5fd7661cbccbd6bfd788ec7f224bc7b
Date: Tue, 19 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732015553
