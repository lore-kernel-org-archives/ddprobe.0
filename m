Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5CE2F2D
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727080554; cv=none; b=Rhogm7xyWd4PUIQbgauhhre5K/YNS2N9Hg6PuV07y9hVwK6D4KqetjFiMP3M168z0vmGul8AfYpYI8sINeDJgSxD2Mjjy696lAYlZgRPjaI4sWG+PnTcgCoDd7g34Lh5HIFEwQFpaWSJBC0gzNJD+UHCmjKNyzq6aWkdS/dPlN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727080554; c=relaxed/simple;
	bh=qJXvEG7sIRvt7659DWCTecBCe+IhYLiOOFlv2k2w8N4=;
	h=To:Subject:From:Message-Id:Date; b=Ovk2Rk8lqVxlir7bbPKusXoaUdnda1F4faiaNqchu3uDkHngLlXR/ymJZNYRzaKXdZoQU2+sGr6ApHa63AHbTaFTRTsZxYnP969LbJfh7CFBmtGqPbVApSjsREgSem+9luWbR70axDQMVh0d5TcMbcpIhYJYJ9SjjiDgUvj7hSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLxDGpXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLxDGpXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71ABC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727080553;
	bh=qJXvEG7sIRvt7659DWCTecBCe+IhYLiOOFlv2k2w8N4=;
	h=To:Subject:From:Date:From;
	b=QLxDGpXnlidd7Ifak2Pl8UNsEP5lfkcuN+E17xRoM+lrIAin0jXfBMc7FlNvTcaeO
	 9PamzxUjHbX/WFftvhNqFB9RhN6OGgUT+jzbqh8BQWmM1b2LIgHEFIGF3ArY1tacOr
	 ACDterw6N6O3lbsjEg6tSzRHOrJCoStdu/P/l6nHdM3UT6motPddeDzPkjSa3eT9so
	 ZcZCZ3GTmmT2r3jrS6D58QboXzSG3GrTHKXN9Vo6m0LEpc6JDYnwVd9XdBGAVgsjI9
	 41c6OB0Gx0kkBT/tVaFPwfdO6fSRtGJVNpzov1Y/aL4VGNmlZouA4ZsFjC4VU8BIXv
	 s61gRiCsBzu/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976CDCF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172708055359.30081.5401309192313860965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0016ea06778abb6ecebe4dfcf432cf08432da7b9f3c9e9c6ac2c2b90ebbf25
Date: Mon, 23 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727080553
