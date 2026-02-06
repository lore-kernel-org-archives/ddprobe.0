Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0334D2EC553
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770371034; cv=none; b=f0+oBfEZ7eKA5BOHJuKaOd+FYvTH2qlvTGPEEHX/QJPT43TmAhcM3CZlhomgfR1gO1Dy8PgUHGFpPA/Lci60yJhhoNVNzUTSA8JffmCMLhB0LnDyswXBQb6KeTaY0/w7Ob1LCbxDShMcJGlwb8H5/G0fahB6nxCQRq42FK6aklk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770371034; c=relaxed/simple;
	bh=zoZ3oxzhkWemEpaqJq85UIqLgRTUpNzkFEEiOx6gkwQ=;
	h=To:Subject:From:Message-Id:Date; b=C90wYmH80k8MB2jbW81eGFWH0WKrlIoaGe5PTqCeaexzwlOfgH7qCywOrnnbOEWnt+h/VAxyunRgI8Xpc+dzeU8ahFp8DdgB1NdTmZ8p6z5XdArtDtPH2ObJHueWHkueacVD6d9mDFrTjGL/QfXSHTZoGDx9LavnCT3N5sjifoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhZOgeGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhZOgeGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B324AC19421
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770371033;
	bh=zoZ3oxzhkWemEpaqJq85UIqLgRTUpNzkFEEiOx6gkwQ=;
	h=To:Subject:From:Date:From;
	b=OhZOgeGUG9dvw93KcEymCpFGXFHQpAgxzcLO9wk1KbzyG4+LEJUuJSyf/xnxnYajX
	 25fYGKqgKNWZpqOBADm2xS/QIPb/LJiWVyXG3dnvuJkKIL+BiZ7bnU6YTe2g05iMGx
	 873mGWT+Tc6ozc1i67Gv5qN7LWvtwei3auYUiKpQhp8b9CGKqHxHiuiFsT95akCFsk
	 VCwz/+o3bxbu/E8cQZRegvJH/OlPVAcJ3KVcsHBZVvqQZ5JcXs/vfyosGv/KoLmYeC
	 17WWFY/NYGGoNV/Bt9FayJSMXJxzyevTAv2g1+4CZNh9e+K8V2w+MbHADq88ZrbYNg
	 F6tDzy1LNKuDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA88EB28FE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037103363.7215.7570788463064312939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7df92e13075ac281352b9d7eb0de9c6082b615dce1e706c1e923092610e2105
Date: Fri, 06 Feb 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770371033
