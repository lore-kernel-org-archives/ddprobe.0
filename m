Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D6770805
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737881754; cv=none; b=lNieYozcGjJhiRCqNQRObQuMbitG9OgvacKU6tpn5UvL9S3DnB44koHSvNewiNabJbhm0RGrC/1JBBsujHyeuXUFFQlTu/Vqk5VYs9GdCk3L6VF9n3AjzC/dobowGN50tzcAbp7rALKlp1pdx6hQpGyifdXXdg33MWjshUzdr4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737881754; c=relaxed/simple;
	bh=Wf86aYcCgZ1EJzw0pIqJhXOrJKrcV5k2CwpczdCeE0Y=;
	h=To:Subject:From:Message-Id:Date; b=SipYUON3rK8T90XmrP4b/o5vmFtXgBYo99ys47kPtRavA63NWIcLcMx3tXZXSCqbFvLheArJZym4qPbelB3+a0Z0czCJgp5ZcR2G+Ht+ietf1YyOPvKceJvpw7V1ivA+obh/j2oLcSFhi2xvHMTQOvbdRjOklSk8uJmax/zlZpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZxBQtKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZxBQtKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88FCC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737881753;
	bh=Wf86aYcCgZ1EJzw0pIqJhXOrJKrcV5k2CwpczdCeE0Y=;
	h=To:Subject:From:Date:From;
	b=gZxBQtKPXvDp7tL3k+yIF8d0JTSXLElWO/SAJKH/tmgzMDy9UKrCQSjSCXeMvH5Cc
	 fl2TB79YmwRjQhy5nDeJ8q85zEIa/1zF28K8FTng3oG3eRT9T1qGd4EGNer5jFcNZ8
	 zdb9W45YfTOY/tpM1JXZBuSYbvd93lvM0wgEAkjRNCqlq5EWd9g1QwxuEP2pSolSSs
	 a0jbvw3xfOXndlgpC2sJ2le5Ukqd5P3bl0KclNFsAMB+exMVUIme1430pSDVI1ozlv
	 ELGRzDWQFnqwEuraxmsBiP8fqGKv+vyhgvBrzr6CGm4WrD8kWDDYYgb93nDQl448Of
	 DRGihVYprZoHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E5FC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173788175357.26669.4344229515251647392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1902f9a46455b008c3b0fc008842f19e68271ec8f03b57a5ef38554b7b4696
Date: Sun, 26 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737881753
