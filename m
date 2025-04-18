Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495631DFFD
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744965594; cv=none; b=BhUIY6Eo74UUqdhDPISFH1OimW6q5spYOrU1pKLMV7PA6GVK0M3l7ijiasARNvKBYhsHtK2rbdSlXLGA60VDICiS+InL6Nwf+ugn5W5qK2LQQEG1UK44HreiYF3jrxAWyrrkQWwy4S8mCj+iae2sL1NneCywMFtmiscqDIBt57s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744965594; c=relaxed/simple;
	bh=AXTUKb/VTMcHtNd45HIMgfCdrQjIcW/HybUCtRrR7lQ=;
	h=To:Subject:From:Message-Id:Date; b=BIGADoMKz8Th1TqJ/vz4Fn6HcimRg87xx3PNwLqcUDxJaKG11hLFmBI7xITtSYpcJl7E7rXZpc4xiDT3sZv/6bvBdAbrcGh+MNivJ6Ar8o4zpRdV9RqNzfpCJPTlmXMxlyehp+ffB0iQUjLFY3lz/vSvHLQRaDRNEFtpBa7O3Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0S4Sya1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0S4Sya1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBF6C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744965593;
	bh=AXTUKb/VTMcHtNd45HIMgfCdrQjIcW/HybUCtRrR7lQ=;
	h=To:Subject:From:Date:From;
	b=E0S4Sya1qxfu5YKXWh2z2D3IDZQ1cMdUgNyJwUrf9VeSBpaQsPCWhH6HiTm7XQOim
	 IQ2OL/pllETVDByuyx/eHdk24bfLn09DhpZYQQQ4cOevAPnGWz5oyvAO4eQfVsROhI
	 yNZpxTSdyKz9ym7n2UyhunoCf5ulSQ1PcD4Otp069JLAPvnv0TFvWqkjZS+jV51Snt
	 Mq30xCGcT46RcYPNHotSQxaP5I5dmjheyB0DeGHugIrtKGCcP4B94NEw72yJ2jsmem
	 BTGRci6Fs25m9xMs/VD3le/iz9K4IKUZn4wKrq43qmGBUWxl6BKFSVFTkPBjInAkoE
	 9ySS7G2rTl8vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DA3C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496559360.30080.18265831017250352678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70338329c2d3ea7bf8f1de3c2760fbfccfbf9de12daef3eaeb04dcccc207e4d9
Date: Fri, 18 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744965593
