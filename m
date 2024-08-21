Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C77137745
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724270154; cv=none; b=LpiqLObst89dnIBYlIqq9nydE1RKTF5crd7u6KlbzuVaRECPtsS2IBF16eQu46ulBnrsPTQG04Tw9gZ9snL3MgS7xBhkUnK9X9gcrCsyOAV1K9DQ6tr6h2Wg3ByiY1RT8scCXP0hYWMqtDbL/x/yjWs8J5a34AYc+VgtzFvBvBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724270154; c=relaxed/simple;
	bh=G3S0CB0Vw4VWJ6EZtXAdiY4p6Zza5lk7aRnDTwxTirA=;
	h=To:Subject:From:Message-Id:Date; b=sCGJYY7NW84iRazJ5H1NbxyKn3js78cO8aLJJBzZHGZX2oSoRZLzfim1pvhOEdcl4xr3R4DMnsz5l9ya6T/aGOlJwObqTMZaLCW+JXpjtEF7hoC5ZIfHITZyRIIsZjy3ocGgSp/rTJ2a9hXa6wlUEKyPJF77QWCQ4ZLXJPPSYYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewc6HO6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewc6HO6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C81C32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724270153;
	bh=G3S0CB0Vw4VWJ6EZtXAdiY4p6Zza5lk7aRnDTwxTirA=;
	h=To:Subject:From:Date:From;
	b=ewc6HO6+q1rs2qVcYzxMqHkWlJWqF0zUn4Kbr1fOzNmNeGHzJMXsg8iVK9K+6xeqk
	 o1v5NtdFcCMEux65ZVvtXYF1d5pG1b7bweC+nUgUEm7Fw3zjF4Ihbd950u0yg6c3Cu
	 H2pt0oSGzAEuWjyHJJphI+4ezmRUNFUS2AHEUGJKrQXJV737JaQL9iZrc5BWF01ifL
	 seo+Ew/DNn6Y/gOeIqM8UMCTkCRPsdHWDo+ccMJnEZeQIPJHaURP58HFqOTq1CmDY1
	 Fl48ADKoEhmH2bwi13ztOXoujSUDVoy5QsDKkQ2HrSTqRPQHg0e1d49HhSTkUy8yeT
	 6wmslmnP2mm1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9129CC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172427015358.15805.6880967787207129044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e4b723219e22110fa49e9866d4c93f25bd18ca1bb899d063bd71704a072658
Date: Wed, 21 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724270153
