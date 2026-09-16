Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A641126C02
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789593036; cv=none; b=oWBASoTJUAJo3ZlK1kj2+pjXaQAT0rl3wWTCks1trOL8zBEEz75bgnTrnhZOtRjADeyfpRL5ZYlJDKl31cq7bkCZK241wVqxZoTBJ9a/XW4gdqmtnZj6gxRErzfWK9CJFqFWZRNq/NeEXkBCGJNwGcdeqKrg2ee0Pi8sTyaL+qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789593036; c=relaxed/simple;
	bh=u/bdDCG90WEmE5H37lhWPg1u7/EwP04tGK4XmFTGxt0=;
	h=To:Subject:From:Message-Id:Date; b=WcZ9aQCOV9Vc9lCQ5NZDtDRbcEjISDJNnbBlf+HR3dqv7cqIA1F2YXkJ2HwcB+zwMMV+3MsVrvi/tj33apBnjqG6Q/NlUNKJfAo6y8uaOi/Bbt5paQjMCbHr6AMOSiRMzqhTBFihcM7i5K/D5oBl6rK/Y9XRc543B1WLLGfWLVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/xLzVmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/xLzVmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D332EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789593033;
	bh=u/bdDCG90WEmE5H37lhWPg1u7/EwP04tGK4XmFTGxt0=;
	h=To:Subject:From:Date:From;
	b=b/xLzVmcVWEezFSHdWt7XbCxsGlkt8jbgM9+A7wBTMJDwcvvMqO30Lk3fQBrTye7C
	 MZw6VR6EFZU5Pt6MNtm8IgKIv7rzO8SrBQAB+rEYoz3urgttO9rSrOsb1DZTeWW+fT
	 o7R7aJVXzzPynXVm0JVqZNLw4RB089T+RuWkC6GOowJLXlnCw/IOUUBFd+jxH89uzI
	 23Rf/hkfDb9KxnLHokT+9dxlgWVdrZMXrPNJSd7JfuFga/Xh4Oy7ZmxF44B1YlWpfu
	 QUqVdofaGVf6P1gpYscp55DEZveAPtK5M2t94vgJBcw6YRqutpVaoNQnT5IUh+qNJy
	 FvfL+7V2GAZBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B099CC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959303369.7375.257235379213198825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b01797bd7ff02755adcabb33cb571ae549edf4c27ca1946313c76052734febc
Date: Wed, 16 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789593033
