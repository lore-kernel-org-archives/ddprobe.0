Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B58331223
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770980094; cv=none; b=THwxaqYPvH/MOX3229ngzKcOXpXvlxzOGx1Oc/QtyT9soh8ghhVJo5MqriYuprtEFIn7ZB7fXJGR7y1RyvixpvD6+xw/MyzijTpy976PYwk0CgaQ0GxCsUJxh84rqf5KTUPLmoNVxUo84LxtsOo9md7V2dyG+uPlWnh2FoiqFOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770980094; c=relaxed/simple;
	bh=xx5huPbhwob09u3HHpM9/wOhRX4LiHV6UOPLAQA0rtE=;
	h=To:Subject:From:Message-Id:Date; b=KHIDroFEj0aunaiEIUr/abld5urCt/GKy16UrXw/T3qA1s/M+7MvyU/PjfsFOcw3Fs59CG/qCVe7m9ErOlfF5IL1g/rWn0NrkWIl4LmPm3N9+fbTjMJGqnMWKQIAvpmoYR8JRGeMWTHfDypCpqWlZk/q13jVy8vsjJg0n4Cf/PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUWMVUuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUWMVUuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B350DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770980093;
	bh=xx5huPbhwob09u3HHpM9/wOhRX4LiHV6UOPLAQA0rtE=;
	h=To:Subject:From:Date:From;
	b=VUWMVUuHtBYOg4Qlg50JOWKnYw1J8vE6OoobMB9nUG4ImyVjQRwciE2WhHi8HkIsX
	 2oJvVI/UPSx6gmKgTHwsxeVzXqqzbFjku7AjVBwtf5Wpaffe6WQygk3weUr0h7zKHf
	 O+nJbKQuVohNYw7tHxkq22Xz4GJJWJw2mygp2J53tKYRjRIAJPjnwsPPM7SDzMQsyF
	 aqTqGNZM6JSGhUq11/gHYG0tw46TgfvXFohn/F0GuIPcGuvbLzJ85BrcvB40wbTefr
	 5BeGdCWwGr+Evq6s2TtgKejhPM81MeVk5Bs1G79ez+WO36L1knUetfK3lU2S2vsPh7
	 Tykzto5Hthv/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC3EEDF148
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098009362.25828.10601264561905136658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521d7fbd45df067f60d6480045988f7c9420b38e053f1e0e9fdf684e9355bf37
Date: Fri, 13 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770980093
