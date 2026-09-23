Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525CD550DB1
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790181635; cv=none; b=akTG/Mkf+1KmDQUra3feWO63utYsw6xFo5SlbfGdspANjGIEWY0/tPXOepnUtUUx9z0YlC7SRZ4tET9JATGS0lj7pIXK5N1ygiXpSidLWYXxHSujeVPKtpqatWZy1WMHZk2sbwDgETlx5EiI9lsyyZ7jLyf0dx3BspJ+7KRr5/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790181635; c=relaxed/simple;
	bh=sYVhVGUVCDH6pdu9k/nFL20HK9SUBrAZ5fen6KCTy8k=;
	h=To:Subject:From:Message-Id:Date; b=uunKdn8zSV3Tgxqo9+L6Qm1nB6VuRYHgfxEbfC2Qli3aoazlwyPe5B5t6HJ6MUDCrbcR3G2iXV8y2WEAyTNLNyYuXt5vvXGGfiqqC3QFYvEa/oLxAELTvj4mPTJzVGh2ad+ZERr898c7swVx0i6wYlxUCnSL4v0jsRM+onCm3nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9RrVMEm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9RrVMEm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D12C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790181633;
	bh=sYVhVGUVCDH6pdu9k/nFL20HK9SUBrAZ5fen6KCTy8k=;
	h=To:Subject:From:Date:From;
	b=V9RrVMEm8DCodz8etdCCST5akK/FxXMW3u8V6GioX6LZjdxSDVB75J4cMXdfmWQJo
	 sV6Swsr5anXnBv4z+7IHJH/BtV+Y8eebiZTuKN0dcFsBh++/kIqXi+RDwgB5dpjCr0
	 Khz/XSqr1cRd/XbbNg0DFxn/MAyPQy72wU4kew5E0nTDChRtt6CeJcsdxmRSpNTZNt
	 8cNj77LjVCbovInDFeaV7hjdL3/E12ZGIoShbViU522McHwyPPL6TNIDZ3xj5KnJsM
	 d/fbre8gJ93BSvlkgs+TYpyYQmA+mG/H/2KtExMi4F1CktuyMOIek77EqyxIXMNm/r
	 p9YWmTzc0CPAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7E7C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018163370.20253.5118252053375218555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9bb351aa2ab5b7fdd1e6dcb55ecd985489e45565226929d552ea93663346751
Date: Wed, 23 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790181633
