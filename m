Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B52C288AD
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760062194; cv=none; b=QhPUWI6Uk5wgEJF+cwusNINnVYqGlJOOYooEIogOQKgeifrBw650nSb2rfLHsYX122YWA5fg9t2tllRUWO9BeKOfbwbjuzjH577mz8dyl0hqNmbOljQ76dFJas3mIFLy+oJv1A964yh+vPLnu/zUZeGjJni0Bd1Pb0MpCNlfMU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760062194; c=relaxed/simple;
	bh=WZMGO4PR9uM8BggoXStOSnI+G5YNT2Ic/6/iZKmJ4sY=;
	h=To:Subject:From:Message-Id:Date; b=g8grrkUKwyNLsPgjeV1q8gswwonDkE0eY+CSTMLUukjYhj6H4l1/yCvnYAkttMZf9uZyjbYlxtSOgsmQ4SajYF0zN5toZinFiHraPuL0DqFZbMi/oGybM3AiW3d2fh6fRcV8Q7/UsyPStBdHB4g016MjXjUFD1YWsG6C6L7xrug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7kD31oc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7kD31oc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760062193;
	bh=WZMGO4PR9uM8BggoXStOSnI+G5YNT2Ic/6/iZKmJ4sY=;
	h=To:Subject:From:Date:From;
	b=U7kD31ocL0FMPnstX49tY5y2anNyXpRiZtdUphGN5tgwpM0Bq5IJ5j7EcqEXcj7yz
	 mrf2xubM3SeDe4hk2ZUPaWrziiE9SL8NmOcYggQ6w44e7WWbuttJbwwQyK6t2UDGxb
	 CDWAqfjW6jykCaXvoD23IP8X9kc7xPEKZiq5f2BYzU5SKw0WZ0Wyy4e4GC93st5AL6
	 gvJTWXn2PapFfoJG5dVsTJ0id0e8uMAq811HJFFNnhWm/iiQmXtpPj2mFATme3LGed
	 Z0STjGH7pHXCEMosOp+avVZx1xzvIQLU8cJx7SHlaj4lL3cn0mN/YoilFBGw8ikF7H
	 Kh92J0CdWuYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98093CCD184
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006219358.2357.12823631751311819803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e7f360181761b8c405ea8675dec71cbd85b1af7eabff0c2676870e7c9eff709
Date: Fri, 10 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760062193
