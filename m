Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8164366ED
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767864235; cv=none; b=gBxAUpxMgEAD9egjznftnnmZdyh4ubaGZlMhH4PtO2xIwgklukvi/8abr9tTX0kKoYj7dBfBemQbiP3uK6Uuvc4usRQe3eJr0QNX6vlL5NplYs4cOE80SA+fbPEi6KGkRMAondp06B7e3BTTZiUBqdTve+C30CWFyi6OM/SXsA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767864235; c=relaxed/simple;
	bh=1pr+nC+oclg1njkyugLi8KAUB9e7msTyfDII3uSgjMY=;
	h=To:Subject:From:Message-Id:Date; b=N+nOHgxEaOh/J4ldtyC+D1Rgbk7p2j/3Oe5jULQ5NzbjuaVY74XgLMyGF1/vNrYEPBly3tQDu6bFshtSCTLBhmc4KFnlQoiZJ/lTg7O+cxFAfXuH6825JPG47HdBlIO5NVw1CT7WoggG4VuGiAEG8edIxTTEUWNWD/+NrR5eP/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAHbHRdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAHbHRdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC82C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767864233;
	bh=1pr+nC+oclg1njkyugLi8KAUB9e7msTyfDII3uSgjMY=;
	h=To:Subject:From:Date:From;
	b=EAHbHRdiJwsrvyUKi5Wk0BW5PluQjK5Un9A6uMzFOSkoBtFfcHfXE1toerX4TCZmf
	 BHRS1Ji1ME4QZEnbd0Vjzvw4c/AdUcB+Zs8jFUAZcaqZPdoFtmjMgkkxq8Se7N2VsG
	 GJM2gp0I3shUNGn8IX6bAZipCJGSE5IpWdfAx/Yu1YbK2lfH52uHsbE/euqOUibcSQ
	 2uCAtjhvcz565/Vehb3v3jiCpkqJqazKx3ST2URiaIKam+P+3fbQEx4GovbmZLZEM7
	 VnE/y/XBS7WiSdWcnV/+EYUv4xYFRthh27/Yg4i3XKoWbUrKz1T0c/lW/6MYpK3d+l
	 NeOJD8q6t3HhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11FCF6A8B
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786423357.4657.17541408079429309406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5a49145b159a40f81963189c5e447f58dc5dcc01036eff872a9a45324b59f8
Date: Thu, 08 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767864233
