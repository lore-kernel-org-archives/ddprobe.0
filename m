Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D765440849
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728507353; cv=none; b=O+oq3x7xw4N5a2MTQr20z9VA2vPdeQjAbTEtKQXpQCj9GxLO0C6tYmZ2yP5Qod6kXNBkzHW89sVupkdTEujsKvUXPdzUDrQzMD0Fpcw9lgItbhlLA4hQsNe/4KeTs5+061PaLFBME/mw/N6wY5UxzI4UTd1ryaSax/7Ax/5Jhwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728507353; c=relaxed/simple;
	bh=JhmbejZDi+O+CwTUbC3OsXl3UlXcrbsA7wtqqyWt+50=;
	h=To:Subject:From:Message-Id:Date; b=JOoPlXuFrBnYkNojVEuH+k0dRUpqAqc4k0ZKcBC8n+BwEVfTaBnNvpncYnDtgDiElrEWaf1z14Vw95MCAoGmvwAHPQOfonyjkcUqQTcOzj22w/QAv3Pp6mOyFK/w9dWZ8UvMbfSs/MEdbHXsUqCUNFSNRue6xcb+2P/oBmMDxIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umD6sQym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umD6sQym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA9CC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728507353;
	bh=JhmbejZDi+O+CwTUbC3OsXl3UlXcrbsA7wtqqyWt+50=;
	h=To:Subject:From:Date:From;
	b=umD6sQymvbmN62cY/Bd4jk4308LK9zqgFOTJFBBnn9LVfGTwFTs3Hy9txCKJB78IS
	 8Jp1cG7nAmsYym/rdogQFJWvJK0O7c3vbMlcKh6UsMCgqLhVT+8q7f7G5nHr641DkD
	 y+mqYhMUWJc0a9CbF1pJzNLmDzENukZ46pkbohfU6qXKNBYK5qdJEE+RBxQ4/XWJw/
	 4GaiYz5ojFRoT9XQIcKEExuo4Ukqy7E1BuYo4s/lj5PMPrr0ps85RBPhkuwVk7c29W
	 /YfqLSdxModBKmH3Fz5ZWvxpTaf4W96h0xssLxqVNoatZOCAlww55X2bgizlOKTFc5
	 +vI1AbUvYeqDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97975CEE34D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850735360.11917.16176979541343377092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05e945b2ca4a8abf17ad323ce748712939fc9508b53931cf4a0c6c59f58a900
Date: Wed, 09 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728507353
