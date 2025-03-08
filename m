Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDF8184540
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741416534; cv=none; b=f+yHNthPpF2rpqUX18Zd6onVg6ehvfWTKQKHAnCWtuh5faxe5aGei+EcPO16BvH5waplrzzchWXvTwksmugf1qmka7UXZzt7oEleG2z7civb5aO9ZiVTbNVzOgVbKjCHY0s0R75i2vkYAmyx9AsRDLw6ciKpbSlsSowH8hklPdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741416534; c=relaxed/simple;
	bh=l73HSyS5Qa80n/9HX98QeD9qenPTRXCQjG28RaN44AA=;
	h=To:Subject:From:Message-Id:Date; b=RiOoS+vuia2ia+oYOtQJGJ1Y8T+nGUbaGnGw6HU0Q4qiso7OZBfglZe+mxbREgSCPepuUOEhMBv60EufwO0km1mH/qKafgfZtK7H9DodIhKpX5xbcYV3kwKCoghsYxs9PhMZ6tIpPNXri4DMniY4cRHMun8odkWD+Ce6wfs40qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwBCZhqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwBCZhqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67B8C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741416533;
	bh=l73HSyS5Qa80n/9HX98QeD9qenPTRXCQjG28RaN44AA=;
	h=To:Subject:From:Date:From;
	b=KwBCZhqeyhsdKdQOkb17u8JhCCrv9cd5Nnwf7TAwCVvihRMmSThf+/PTajiURJNLK
	 s6vAtokGhM/rsUFbeKl6ViIjVBGWAJ0IJX/Zw6mJ5q943rp+JrUy+WlYLc1KQQnowu
	 81XiS1Uk5wavwuHc3Tcn3QPUPmLnMa2ORCOy71tNpb22FlGd478Bp8VAZgGN7epcc2
	 Rf/FtA00B+cEtsUvE9Dr6i1Ql08Yl3fMu6aGHD0ugiFDdJPBSJEZPmUz4C7WnlpLRi
	 +E2xzDO5nrlSj8e+YDbLhT5ekVqU5pYPImbOM8nmTGBnq6lEwqhy+4l/kBdup1ZVog
	 LQ76yxHnSH2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B720C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174141653362.3382.6870602520890507064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f804e5cb806afaadcfe7ca7cdc5d8ae795bcc8be7138f685f0d927140fc5879a
Date: Sat, 08 Mar 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741416533
