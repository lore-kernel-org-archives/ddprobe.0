Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DF82512C8
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758265795; cv=none; b=duWzN1MdlgwD95mwbOxkHwSS25DYmqxOHD8gJ1P7nlP1MhvMABSRbHVh42R9G93nVMWVsKiZNPTKday0E2SkJ4sDoPtxM+w7dXF3cNoMxCKIcjR+nEBJ0mEW33cbWry/hoRBsvp4BgrfDZnEoROvN8Hv55OTC2vxKVxRER4J6Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758265795; c=relaxed/simple;
	bh=WCfwubwdCrwfx9RWtmEulhnhkJIKBhPmwsUVxU5bUM0=;
	h=To:Subject:From:Message-Id:Date; b=egkOqag+E8wgk/RY+hZI0jHjTcxcWSdzvjaV3/ZYxxa04l/Dd3fZFwK8H2NZWt7xYNkzEqduCUsm8GxuMEtUi3bTcqXwZ+BghX4IGx8q6RZnhFVPd58JO1/qBu6LqIQd+r3+RKbjmurs/TBf6k3VzmQ/0utwksKp1uMSh3zWaAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EB1VDfmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EB1VDfmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758265793;
	bh=WCfwubwdCrwfx9RWtmEulhnhkJIKBhPmwsUVxU5bUM0=;
	h=To:Subject:From:Date:From;
	b=EB1VDfmrD5lGE0hXKjb8Ec23dPmGmkCOxiiiLL3HBVXkDQwAA0QYEXJI02k0Nmkes
	 3ngVdNE0DGk4xAlhdWBNlFVtGcVjS8b5y8phQzyLeO0v5KzxKvE4J2FPv0CPVgv0ZE
	 wCvqPME4xtwRaoRiMDEXmJt0lX4VzFLvJL7xwPs/RuRmdKLtMl2l8b3hMYm8q3paZr
	 xjDM2R6yUriWbb+9aNogWtO7/fbh2hRwRbWpV23mlHWew46loWNqeV9zAXqOdHyaBr
	 UXLkSjjRxMHsh8IpzWMdc88ss3mTQDGrtPCEgCAXx/u5drIMSpLorXMmcOzkjlvwFJ
	 y4y93qqZE5VsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90574CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826579358.9362.10283953563023871308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a65f74c2beff681a973356bc5464efab1c7c7140606354bd6f47ee6fff79332
Date: Fri, 19 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758265793
