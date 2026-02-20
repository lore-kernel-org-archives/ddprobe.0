Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8053242A4
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771587894; cv=none; b=pX/BU0Q5k7Tx24ywYO8Gs6xTY1DF6El6QyTQnajzqoLG7bc3TPYYPUOeZyLZPambqaNUU9m5aLdWyed/rttve2FGLCRwmBj9kGemwlCmZOJFNFidLZLQkkXLnofTHndMV7kRldVY8eRcdpdZ7SzeJgnLnplR3hHaREUX7b9aK9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771587894; c=relaxed/simple;
	bh=eNT8BxeCrACkfweNa19/MHjcO+hj84C+EsYA6Q7Es2A=;
	h=To:Subject:From:Message-Id:Date; b=YJ363zWo+K4lOSGJUQcoD0T78r4feD+pYwCam6aSXS/ROJhoSm+xd1/FBGgB5WuQKnO9+d0NPUUWhDzH5Ja8kJZXf0HZb5+tIo2ItHjoZ8Kz2tMMVc+Tys+iFyc2hxb+aAKfAN+QeDr9cVXPw90wl65XEo2cOvXWZJ0CVQXa460=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQ37RbUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQ37RbUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE956C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771587893;
	bh=eNT8BxeCrACkfweNa19/MHjcO+hj84C+EsYA6Q7Es2A=;
	h=To:Subject:From:Date:From;
	b=AQ37RbUWEz7elTyhlmpkdS1UgfL9APvPBBvYxPLBc8jZP3ERRfsFz75FSsGCxqE/x
	 FtfXJXRd3YcezfJ/KEQh3rEnpXd/v7ZRuMyOASAlZln47Pu4/odxXmfEHfuO234piu
	 8XW5ybm3veAVU0kt+IVqdtCS5+z9NeWWkI4RCQGjHI/789z6RlC8Lo9d5mVjC1IfOt
	 O0dZAzKi63HqZPYn6Oo/yYGbC2wqNPo4iHd9bvoIrDW1zvH4BwpoLwAdDT6nAFakun
	 OYYIPoxAMIWLRjAvrLYm+SydV7+RhEGfNZSy/EIJ7DpsWtnxA0suJ60fonfHbUZ+J+
	 noox0KJrIKijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F18C5518F
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158789361.19322.15476549864389209709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923228e90b09758b897beffd5ae6bd0b7d79dcf5fbc1b492ba2aa2387b6d80a3
Date: Fri, 20 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771587893
