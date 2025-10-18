Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DA233EC
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760831994; cv=none; b=Nrd4ktQnmFYXLp2bKjPXyrvKeqd4FGr4l3oa3gMM7lQ2Hkg2F4MxQJ3nnfNafJ6WWrAbivdqhjFJvQasqLJoiOwtwPWJrBgJWevIwjlJnVh620RDf4nbZR4pYplfCH9W6RPH0AZ87yCn75x9fZ4MdmrYwLEbIhc+0VJPsooR0TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760831994; c=relaxed/simple;
	bh=OdnOuXauXq34kUAb2kga2Wq7B/xmsM8hcRssk95P74A=;
	h=To:Subject:From:Message-Id:Date; b=HcFWikqT4GWDlPewOXBQvA7a7yfeVx4zPcFteUiY2ofMSddSCo7c2HI/z8Dw+qO9x/N8T3f9xRRT+tp6uWnCh8VyGxPfh8OwM8FC1p0SyXPL989C9AtWq2WBM3sOo1B8ha8NR3cjModNd+VwGRGC0WCdKyC+wvnhPV8ci9z0jPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kt9MTjaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kt9MTjaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8ACC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760831993;
	bh=OdnOuXauXq34kUAb2kga2Wq7B/xmsM8hcRssk95P74A=;
	h=To:Subject:From:Date:From;
	b=Kt9MTjaN1o2jaAvwKLUahxP5NoTyTtVMp1GpdZxgFoepmENU8Un7XIxwWESxVXa07
	 AjngNNCFsUgmb5nZD1TTkbK1Xfc3ZJCjYe6RKzBW6JZLh5NuvBeZKc6TUqcBGVPtXV
	 u7LWkW3dI76M3bNtqBP51mYKSlpGIrCbehEORDr0TgSlZk9N4bu8WMfxqILNzIT/D8
	 4vguQgKUi7IVz43RcgJ8vBpFmCmxfWoslayymz4WUwtGcxOAcNIdAtGcRKJrkScnR1
	 3qLR/M/HDWtVjehJrbESiBeiEQQXLp9fxlPtYbbsvvuWIEi8BSC3ZJf/rWDH8/A4eJ
	 UZkahnfqqqsng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FE8CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083199358.20192.13360265995199001215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa25cbc71dd2fec600b121abc58ec0b284819a20689bcf9cce376ef59d422ca5
Date: Sat, 18 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760831993
