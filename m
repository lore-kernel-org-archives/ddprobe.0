Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E16514A09E
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726667154; cv=none; b=aFdkzW3w988kr1SV3Qy+vuIIlPbEdmbK+cZ2GMoeGOL77TJlzsB9RNpxXneHkfmIZLY6hXapXWJxjaFUfzWM7Y4GuXBfDESCM1sjQX8CQPF1+aX8MEuAhDBYWU9by+et3GpdDW5klBFoGV/Sh4v7/f6qpURSEU0ldi4KQ68bxnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726667154; c=relaxed/simple;
	bh=JbL/JDXI00vfANPWlfTI03T1h4KPPcA2jakgxyvdy1Q=;
	h=To:Subject:From:Message-Id:Date; b=briqtm8KYxCYxzHwh3wv2Xzk4ySTo18Wo/1R8ab88YAfRr4+mlBtduYhcxVkhf0fZXD4qc1ANUeVlW77XHxQUk/eFqQuvSjYTOnvq/LXFltq4TFTdRtVlL118avfTNTqQ2xhcZz7vKXPm+qPUUymBg/oCVvXqGtzzU9hQ3niNFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUrwYg1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUrwYg1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C00CC4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726667153;
	bh=JbL/JDXI00vfANPWlfTI03T1h4KPPcA2jakgxyvdy1Q=;
	h=To:Subject:From:Date:From;
	b=dUrwYg1k/zq3/JGggc8ZU9lj1A4FQ8Dl2PDz0Fg22hlPXDb17udxJQ9i4k6jNgkJz
	 gjGqXRa/CpKwwJpokWQvKkKNgxUm9m9XYqn1z5lPtIBSkRxsN5ST2I+nfKO5SiLa1t
	 KNbxVRetPZh2k+dqlEW/kjEPxxMoCOXxG6uosHMqwiTHEa+O/JUmtj4OXSRPx3w3P+
	 rbakJSijvJeg/0y538KStm6L88p+YVJXqUYVi0nQSb1Wk0WJ1MIpQ9pYBsfHngIRlM
	 FydSUGIvHNsl4LeeLCfWCv2/Xzbzp/PGDmTIKHb6H6Pbk9Gj+OrtV5P/j/rlYk6oeT
	 5nKvhq1VWsHoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC40CCD1A0
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172666715358.28775.8179768565819546165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5cb6b5f383236fe789e5fd516cebd4c50b0a5844a59205b45e8e228453dd952
Date: Wed, 18 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726667153
