Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F81429803
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785514234; cv=none; b=hsMBi3A1zmle0Uo+0pVHXhGQlKHq1M/xKvha4U/U06CVEWy37Yb1LVJSA/2ro2dDSv2WpMOpQVbRjPO1k45CA/6w9rlCrMmddDIWjk2ztOhbJc15qyarAGhOd7IwgzCL0Ir3dM8UpfrGWcIOAugbORcUDCzAnzZb1yMLUM0SGdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785514234; c=relaxed/simple;
	bh=dqLUGvr2BO4RJduELZNZoOmter84bszn3xEeMz5NrLs=;
	h=To:Subject:From:Message-Id:Date; b=ow8jEw1PAyBzZEx8Irvhf4tymcpptWjy5E7f6MMK0raSd/AXd359J3sUdjtoTtvGpk4wvbG4u2P05LyAC935298pzY8zh6uxaK2IJHcj0p5KXvdZgVpIWUiCFuZIzs/C+Tzd63kISJy7UlcPfK5KuGY5/Ppwm2kSuPA8b49TrPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tc1uUvTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tc1uUvTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35F3C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785514233;
	bh=dqLUGvr2BO4RJduELZNZoOmter84bszn3xEeMz5NrLs=;
	h=To:Subject:From:Date:From;
	b=Tc1uUvTy9Sg1H9dE2pMfTTert66ZxoEOvZZQtXEACmBgRDfPsi8w+srr6SM/hm/XI
	 Md93B3PPbzq8vPliac4rje/kc/ytZT5uqoo1WDS7BlPkpajgbzEKnuuve9Mtt9eCl3
	 ahBct5GfBGefuwXBB85yiXzO4PCjLGH1BjMveu7xHXFzqxMV9soLMrOAzRxjeD+4EZ
	 rJo1Q1NLzVTN3PQ5wNI/j6ReuX7fOz9VIwLRjhIyGdK9vmerRoeW2fnWwbuw2y2bTy
	 /JFhfxVumUxjrrlDQsHy1DjQX3z5nt+W7YBIYCYTVvp7N1Tbi3685CKIPkX6c/JZXR
	 8UgYTyfwKFEYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB191C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551423369.4854.9158864194035632179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33170c7f37d144eea50034acadb2d0eee9355c60df6ed43f305cf168cc70a152
Date: Fri, 31 Jul 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785514233
