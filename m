Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F67415573F
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742162994; cv=none; b=sEBDTCjYJiBxvIMlO4Yzj/gUxutu0hPpmx6P+IVzTACZLrdJxk0dAEquJNcMFtnV/b0sZx7O+dOAOsKodQe6zYxMXY3MKUspeF/p8lk0PxJ3yD8cNBmPbSzWwhFRIZONN/zeo/Xoqn3VQmaV/Sp4fmJhuf/n4tYbZTaJ4MBKRTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742162994; c=relaxed/simple;
	bh=rIc/7oFycz4mGXBhuIps/UVDwHCIfAS5SXEs+2ZmRSg=;
	h=To:Subject:From:Message-Id:Date; b=EKKMpg1Pic6FemamR/kDboAcVfLRApm1p/FwM8kuGpHYn2YqCAyF8wcKrTDtLmKIYeDdtfDFyfumMXFc1C0gar32HD/IjPTXIH09K3usXw/3X6MkvggGpweHHOCezAFogZaTF4wi4gmQk4hVRjo3dv6WSR20OsublxLJIop9mpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMncyTaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMncyTaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC6FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742162993;
	bh=rIc/7oFycz4mGXBhuIps/UVDwHCIfAS5SXEs+2ZmRSg=;
	h=To:Subject:From:Date:From;
	b=iMncyTaLtUdY2LmT3Z7OPuSMx6shrv+RyiBDIH7S1QFrBpVyaqA0X3+xLkcqkcq1S
	 OPDXqYglvOPeCMiQiCO3CyZ4JZB73wvxbqF2Pmw+5VxXq1B/kjkl9xXd/AO/ZY7qO5
	 kAaSHKjELgJLwwuJnzxPi4eHoPuUY7cXJRyMr0T/7fTA/Xud+IkgUankaHVgEde9JM
	 4SUAhkW35ApQQeLV3FxUj3C3IXDWpOmh1c5DJSumQXaRVtpWEwVfodXjqNtMvedTGN
	 nhTOJXCcJq5Os8fknPHy5I3ADIwpt6uxQzRWGVW3dONgoNw45/faH4egaX0M/Fa53d
	 RkrCL5VCnRsbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961DFC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174216299360.22172.15377058134142406048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e55b72b479edd2366875e65c7f9342c8f15e69723f51e71f041770cb2fcb01cf
Date: Sun, 16 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742162993
