Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521C13502A3
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792225234; cv=none; b=PuYgKYlnKuhAyuF+sUeBguzd0CAPfzhJ8e6iShkrWC0Y/SL9rYfKu4rqkH/w52o7XUbWEx/CuzEyBsyoThYzHQpXBNS0mnh2bn7uy454cKTjNrHJglDd1bHj1Jk8OdeMGIC6r3QO9cYCT0WLd8SFpeZVXFdzVq5HNsaGD3GS6FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792225234; c=relaxed/simple;
	bh=c+CzqfZox94nOUHk8Oim/Wu7wqGIfIGl7eGg11SzkfU=;
	h=To:Subject:From:Message-Id:Date; b=q7synlRPNgmeTbZd+zNP7E4dp/aW3fF82FlBSTrgXpOPkYspi/5h0P9PYbYgFDo4Znp0pyW8Dmv6bSOTQTvTq2NcYYMGbpvHpmlKthSIAfuotLjAcoMjtoIerITCeWYRXYeN6CqF9NS23HUaul21yf6WYCZRGKHGEOAw+yPKOy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Poi06xCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Poi06xCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29B7C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792225233;
	bh=c+CzqfZox94nOUHk8Oim/Wu7wqGIfIGl7eGg11SzkfU=;
	h=To:Subject:From:Date:From;
	b=Poi06xCG1UhOP0rQNtV7FYx04y8M/7fxQ1lGZBxkEPjQd3S3rHN+u9+Z1G9YaM6hv
	 3w2hg1RvQRQLf/xALvNnak/9ykmu6RcMRIhUfCtlye23/6LF74Lz5ps6ulIRCm+ZZu
	 5SfC50S7z6wLyWegdh9XMd6dCVDznEnccOrxJ2qE+HFs/XYTmRSVbphnOa18WscJxA
	 E4k33QHCIDmFiSo2eHUF2zO+PgExuQo4rZ/2JODbcIDVowbqQRUBNYyDEXMFcoQ3zM
	 zKFL4K9w630QGQq6WIyno9Yz9eaEGYbxKnMDDZ6hMJALYoQ7GDuICTuFwEjZ6KEs7n
	 qcw6+L0L0eJHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08FECC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222523371.22908.14443848800545886686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b4d34df054632816becbbefe25169841e7fe2e67e6f486e57c0081db6876d4
Date: Sat, 17 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792225233
