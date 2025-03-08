Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAF41EEE6
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 22:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741471735; cv=none; b=PDF7prK0v/nsM6Cn4vPsE3PY6pSihl0ZuzQPR06aEX9ZMczQJup91iQUABJCgadqcZMoEIh3qZVTge4E4XaqWrWH7xwO3f8eDKEue0cx1U2+1QqgsMoTgvqgAH4K7+GPFxGdKp2DDLKNK/xd7F63fSfOHkPP7I+xiygsi3kNG8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741471735; c=relaxed/simple;
	bh=svf+k0ViXyOydQoMf1iA/Dj8uCVy//iQqagD/5BNRPw=;
	h=To:Subject:From:Message-Id:Date; b=HClvX5iwic1JwVC6GDuxsdgkRR0fKyllFi33bgtNYZpWfZpYi3dtGO9vv3BXfwxcksFAVHe8A8OcLRWmTo3EkPk9sCwHL3Fai2TyiFVmJHH4yLmdo0aqkfHNLEEbXSHen8bAZhtz5R15sj+tX9JNfHqR8R4KCg7fc6ZSlnvlVss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaLhOC54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaLhOC54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB05C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 22:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741471733;
	bh=svf+k0ViXyOydQoMf1iA/Dj8uCVy//iQqagD/5BNRPw=;
	h=To:Subject:From:Date:From;
	b=YaLhOC546d/tyhL5K9Ndx5srHdbmvZQEy9DsgbvJC/w5IHgVq85lJp1H4331mGqu6
	 QKnPFLOTXI43bAZl7ZIMd07uDPm3ZAuu4cc10ztB6WgOpd2KxDIbSFH4z5wgk457FC
	 MHvEL/RkM3VcrQrWYJHuupEPahUF257hLFTC7e6iY4tW13qCDVew4iul8X3jtXFKXT
	 RA/VnsPyZF/R/ylvxZFkQx3GeCFe7Ef86RoWegTzDAOmWbfLuv80dm1hiNHncsjoXe
	 qwktdi0rftvHfGfjd4WQvnGRSKxzApzqvBrhhZmNYxP3No3k6t87zDt7UJiVHTbOQc
	 Vs//mmMI8Ex6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B024C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 22:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174147173360.5720.6961267499190826265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e848dcaacdc72f1df5c58b27646b0630868d950f7d81e4ddea15203c28a292
Date: Sat, 08 Mar 2025 22:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741471733
