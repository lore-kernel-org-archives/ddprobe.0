Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0981D1B599
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707041297; cv=none; b=vEFoJeW6i7JVM7+V1tVHePJ8NKQAF/VdTwFCqNm9sFZNLw31BONOuaOoxMqxyOBtJGD1G1nkfOmM5Z2lUGF3jI5eJLuHV+EWqwE1vwI2zLHRtf4yuGbg1YIYewuuk7/cma3N1M8xvbuIbenmk6pH2nsIyVIbcIwovpHS5oZBH5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707041297; c=relaxed/simple;
	bh=EfljgeNuOBc+TYGSiQ6O73CbNbPEbJ+vRH2c7LLA4rQ=;
	h=To:Subject:From:Message-Id:Date; b=mdU3uUvFaPeizZjGaOUiZnvIXQiWWRV0jNOXjAvqV0+Fj9oSwYUU/u+iCvO8tbbnk7R9h5hS/K0Vt8WycKRwftkU446h/cdhUdNkJgTOu97mLMLFVZN9P++Q48C00UPWC9asW4pDIH/mIwmAj/MKkjjJE1A4phhPtUUrUYLmzRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMFbeXGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMFbeXGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A463C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707041296;
	bh=EfljgeNuOBc+TYGSiQ6O73CbNbPEbJ+vRH2c7LLA4rQ=;
	h=To:Subject:From:Date:From;
	b=jMFbeXGZiHII7h/Qv0pvdEvVlz1M08CxXu+WV7fhYU+cfzN00VRc6wbMKWCmUlisL
	 CntQGO0vp8QyUGCMDDVOw5Eb5WA93503Vnlw4f5AiSdlkKZlSvW2yQKgDAGdA7ljqw
	 6Y2b5ZhEoH9DjKO+GMQqUdldmBCEkjwrn/OLdisyTB3c0OyDkaeZbNOy0ITpOyuq/I
	 YSyDhbU7qxJyhMjGJGrL/ORI65Qex68j4lAF40w+G2tX50MO0NuhWLoOYb5y6U79YD
	 MYVgj1L/FtUZZ7v0AhMjXJHuYQ+B5ejUcDIympxnhPTIKA4SMrWqlThcYVhW/ggo6W
	 59Es5qmNo5nmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71321C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170704129645.23416.16623488147547711582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9feb897d10d1941a03cc816937efb4203bd007d2c35dc4d1cc45763dd46d7bd
Date: Sun, 04 Feb 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707041296
