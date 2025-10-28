Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E662D0634
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761692994; cv=none; b=TwlrFiWw02+ovfIk1RvcHjX+o1BDbwxFRsacM3/0vZa5qacGr2zBOQ2LG/WYx8uArpe2equlzThvawKRcDKOe/mc/hBErQeO8N7hb4qtm58VPggKQsNnr2goN0v3vn4XVPFLBnb88K4qkthG0Yt7x3TCSEjTSJEy1tIUkgsds2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761692994; c=relaxed/simple;
	bh=Zp6FRQz65xRLQ8r4dW/raVNZiXGv8UM7wbRrrePu+pI=;
	h=To:Subject:From:Message-Id:Date; b=J7JhGqGnnXY2IMUMwNisBQ2wJu5krXTXIMw3vomFZ1KS1AaWe4up7+WAo4aVJ/ogAWGLae7OlKARUryhHsO8tfIap7eeBmK0WKyuS5DQF68VdDXAejhh0d8eg/1ahQ3YEnezHaP8/PF7FKnZuwbyjXAIXIPYCn9f/m8WY7K7IWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsnRTc41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsnRTc41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B559CC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761692993;
	bh=Zp6FRQz65xRLQ8r4dW/raVNZiXGv8UM7wbRrrePu+pI=;
	h=To:Subject:From:Date:From;
	b=qsnRTc41rf6fKDzcYHKZemt1PkXdf+o/PtacILPRH8I8LMaBewV1o8UUrXpnlLR7o
	 JEie+GpjXFRw/Y8WL/RQ06Cls4E1mBJO5CnMqvoIQk5CBoz6W5E+esAt+z9dMYsc6x
	 bzyxDW/nBki0qNxR+TjSp2p7VNP8EZGnvQFd+pJ5mKS1dXoPY55QbG5KxW7tjQMDDK
	 OuE/p7j7o0+0IW+xpqX7d+3bzR3hmN+c+ZL2rPK9z2OUPtqT9/RUPZWtUSiEVzCZgP
	 MjkV02VoZlB1bxTKSXzSFLJKvboBHFQZkXiEZwg5vhcJhHDSb2hfiC0MA+s5celwPl
	 YD3146j5Wcxqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2074CCF9EA
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169299361.28192.327053988976461411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae617b195756367f4f03dad78a128f3f51306c5eb12391b93e9eec2ce81d348
Date: Tue, 28 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761692993
