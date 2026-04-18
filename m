Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0572AD2C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776505654; cv=none; b=nCp21ul5ryiqGRiFV7Fd1jU0FO1QGYi3+mjYn1Rw+f5DTpm7cF5z973vUdAfVFCgTIxuHJ8F/Qtg8sG56ppEwiaRB6ANOxdaRzQbixUWBOr1QIZCF9gOWFF2eDaelMIsR3vf1TTncJe9Y5071OLs8A0swH+G8MICIKZB1HdVegY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776505654; c=relaxed/simple;
	bh=UreGOue2vxLzbjNX9NziO3qurednUt0f85W2aHLC2HU=;
	h=To:Subject:From:Message-Id:Date; b=QGAwH3x0NAO99f6Kc9eXaYFNaU5jawj2i5srIQQTSsiOGJcRM2QvdTvYQMoKoVYW3nKHsRfuEGcdC47tmtPxuQ7LinOEkQmIJ2S6AKjdKQu60ld25WBmZsTn2zs+jfynOZLYDwdaHfJB1JKG9QZnXFkYN0g70XRfT77w7UM142k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhcNJQGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhcNJQGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3335C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776505653;
	bh=UreGOue2vxLzbjNX9NziO3qurednUt0f85W2aHLC2HU=;
	h=To:Subject:From:Date:From;
	b=mhcNJQGqANGIrTPyhE2Wr194RWn6WSzkzfT7xRV/roRkXX+dxaELpchOfi/NVppOD
	 DpBcv3LbQ3jRxLxZqLF5OgZDqmfXvxKzxIyT8vX7nmg53VHUyrJEkgRxWlMMxpiUbl
	 LnuQS6IxV27Ys1H1kmG+EHUbmiCeuWPAf7bY3J8JaTeZ/C2mnumzxYvkXQC27qzwwO
	 6TMa1TC3Uwaau5SPsmTWktDdz8NBOJYLeK5JsFh1DtN+SMbUY1T8elFjwasQLTKpga
	 rkhn1tPBvuSnGwjDOURFgNM43rI3xiF57ebE0xUpjYmtwraitugT7vT6XDpErb1NP5
	 szmIiBhZ+znxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF130F99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650565369.6178.37635422705420814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88dbbb60df4c75f0aa3614027cb30fa78e903d4df3c2e9fc9208e323ef798ee6
Date: Sat, 18 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776505653
