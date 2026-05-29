Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5C137B40E
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780074754; cv=none; b=E2NHgOJiw/Xzyv7H2NlOLYNyNmegS5KjvDqCXa5uiDpqSNH5sFZxyUBa+N8yIaw/5khfftKTwomFGsIb2X6QlPPVzI34nb+LwpxljfpKT+z1/9QPyKVuNXPGywnHx7m2RzY00Ggc6J9VaMJ6Ppll7pF6SJsSp+Qlsc9YbV3b4S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780074754; c=relaxed/simple;
	bh=nUiBIgguw5f6UrbERdfeXoM5EO9z61Mes80o2FU7TvY=;
	h=To:Subject:From:Message-Id:Date; b=O+P2bR//ZHHwhvzH1zJD4xynD8HrhVUPLvNfWWbTGzcMA+UNjfpNqo1XvN37sEmftsSWra1iyDnn7emeOSxtxdLXaSryWnjznTs7W6UtjYr8A3ySQb4KjXdQjcnTnqy9jfPyob2zUrY059Xy0M6dHGb9+UwTyACG85vf37I9s8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ietH4uWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ietH4uWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3494C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780074753;
	bh=nUiBIgguw5f6UrbERdfeXoM5EO9z61Mes80o2FU7TvY=;
	h=To:Subject:From:Date:From;
	b=ietH4uWt3Hcp/d7veE1uHWalB/SbkSEjmJJYhz2E7ncFd7RsZR8nkwgItFGn8CTcW
	 5moDwwKUxK7GRil6tAFTvlT6L1rCAATjXsK7t4jVvJk5KQYW3atffvhPDKRyQeeEBb
	 yZx5JHf2VF9u7EA9vTnHcBidzFX5Iu2wmejpci7BL7MRkm7h0usd8MFQaCzoHasNoO
	 MExSAYl60nfg9g9ABBxW4bOB0j5btONPBahv6y8fiH69tXMlwvNhd3l1+MFGLu5gr9
	 bHzj2zVcVqMN6ZOdsC5ax8gBLiQI/xkx2ye4MAy5myVOhnQ04VFzJRb9CnrzHKafag
	 ewAZbX9qYJ5gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA9CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007475369.785.12457511904120184102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef07f08a909e88fb1eb5ac390116e64812e6d205958ff585e53fd26c6f15f7e
Date: Fri, 29 May 2026 17:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780074753
