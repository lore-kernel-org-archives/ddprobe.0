Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E702146D57
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719153743; cv=none; b=XcNTU0Qw/Z86vN+frA6rO5qF7iBDidktulHyzYUoYqIMqI45nVJjkYayqa9aTjWeVvsiyIhc3WfZbKUdXD/Ko97zmv8cP5ik4mqiIxMM1Vi50rWNXCbepg5CClI4cvmKi+1yqci94d0PZMcYOoxu7nIgxFY/LmZSn2mp4BeXJpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719153743; c=relaxed/simple;
	bh=Y+/iW8wZVjzD9uN+zibz8Mi8wJ/C+0eFULx8KrGIxNk=;
	h=To:Subject:From:Message-Id:Date; b=soP0/4AAC+ux+eUncS04GxIsSXPHQ6PROsi24QWWOANG6SGmqSTzEGPVS2Spdrnq7kmMEtn2sgnejxRU9p8r8vl5nXY4whIXvbNOt0ALT82EA2HYtYmx0q1l5fyJpujO4v9sRA0WEnVp5o5a01hZdmcNlimPCv0lLblNMWjOMAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9lQfo5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9lQfo5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4BD8C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719153742;
	bh=Y+/iW8wZVjzD9uN+zibz8Mi8wJ/C+0eFULx8KrGIxNk=;
	h=To:Subject:From:Date:From;
	b=s9lQfo5NYi1I6jYa0I1RTvMMIUft5+g8i5Gj+sa8Y28TWLPMSAxk+fc0KYHE1z5NE
	 H4Lmr33BGfCmEBLBC0UWDK/ZZodDXLHkkC/dzZW+uFBSfekpAaPdj8pSHhhiLGn9Df
	 5vnTO24YISLQ6t2nxNT4NEhkYKZRgLynwwaF8odX5JX6JpGlAkWSDRUpsBsyh2wloJ
	 StvrB/DGDDHnfIPP+hh4luWnpDobV5umbdn9qBGsYZwg13lvu37rYNtytBYK3BLlKf
	 h0r/11N30sJ4Gsa2MMRTAqESMSMf3DOcBpNjHmQhglbJfQ+6EASgzgB0szaIJCL+9C
	 4XtVZdLtM44yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9B1C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915374280.7747.9668440832373229817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f76bb42f2686be42f7fe3aa69110c2472a9836f5dd533abd94d776ae31c055
Date: Sun, 23 Jun 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719153742
