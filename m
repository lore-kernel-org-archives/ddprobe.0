Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EC0472536
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790933434; cv=none; b=qxEZJhm/+VIS+2vm/Jzvc/CNVX9NHJLVH7Z7InHg8bUZBSFoaBZ/Qr47kIV2k7zrnyCrGw7vLe4w80obUvJyb2msEEDG+JodN1u9Hjvx0VzXtXAOwuVLw2B6uX5x/00nl0vgfmIeGE74rA56kA79ji/HBwL2NvFCj3GlkZcq0JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790933434; c=relaxed/simple;
	bh=LOblMXIae/5lPcxS7Sz04iTvbXceFHoHk7ND8hVAtkA=;
	h=To:Subject:From:Message-Id:Date; b=RS5cPLhlkHqLOHo//P3bZy4GJOiVqIoftoL6mo3I+hFYxl9ePRI9aTBHzJd2w+wLSbD8LXhW//kgMqVeH3XQViE7ssSZ0e5oPBJt8fFS+32sB/jy2Gc2HxwTd1TBrSfbQEV3OKzjKSgkibE87FdOre7Un4TCElMes5Ygib1vjlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ys8HGPWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ys8HGPWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2D6C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790933433;
	bh=LOblMXIae/5lPcxS7Sz04iTvbXceFHoHk7ND8hVAtkA=;
	h=To:Subject:From:Date:From;
	b=Ys8HGPWzBDBsvEyOzjdjoa9AYwY3jCVsXJXQ3dGRP6YLXIgSvmCxNL52IzpmT+XNS
	 mjMgKb4TvDHjYzSo8IGS+4b36UCjHU4so4sWH/xmE2/YV4bp1ZfMhDuPYaS8VRzy+9
	 oSBysCD9Zw6JSDXYVbx9ERcCjJ3eXnooe8Q91NmKKR4UCUs85eCFVYjqDGeeCCwckD
	 qJyVgSqxAOGyOKuRK7nbJT2JDBtkk9BeuYVszF2gEOAdSEfTJHmYA9HBqustCIBJyu
	 8lRvW49PIWzQsxaG0Dt0k7J814v8aRuco34AkDNQZODEXo+F/qm4rY2zDyFLMwWb0Q
	 ABv3IdB7lPdnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A914FCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093343368.13643.11124656029040904876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f953a28da738b6d938287b31697e424eaa7dcfd3d55f6caf05a02ccb53ed37
Date: Fri, 02 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790933433
