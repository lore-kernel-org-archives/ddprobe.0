Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7C3194C98
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787467234; cv=none; b=luU0l2ZuD5I/VC/oneFXOIpYJevGD9N7aWSed6SUcn3rQQN3GkFLMhIZg729Aq9yNQv3l+1t01OypJXPLIcBIMff2Pxm0DVt/mwq/qNhR/sq3sOimJatrsDFKYmKVfHLhwH+TKHLY44NvYdv3oLkwmqVxY8MVu5JpbO+dbpMRd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787467234; c=relaxed/simple;
	bh=25oTQONTJTw7TW18ODprvDGTLoqofb8Oa1aw3gL/pkQ=;
	h=To:Subject:From:Message-Id:Date; b=Z9ZuFABJdfJvcMpul0rPZbDyfc4aUqdUAZmHEnW4MukUoU9aYHbT2Dm1HWfPgUhqZIXLDtjeHphsyIzMB6QQjlCj4UYUc7DBo9EatLcWDgo7Xs/YYuhN2AmzXhBRTE7johMvQxxY7tHCmCoBJYJZ7rTgI768NpXq0pWkiIxgBBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLnzsiCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLnzsiCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEAAC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787467233;
	bh=25oTQONTJTw7TW18ODprvDGTLoqofb8Oa1aw3gL/pkQ=;
	h=To:Subject:From:Date:From;
	b=KLnzsiCUxehUZ5EPf+IuNS+SU9vzQ26tEWXNdsuIqzFw6lyRec9Kkk7sqXrgq1E9D
	 NFypepgwWlAznXq7j3XtRHavWMBmCLVp47lzKwQ+miUs3mLEeUC2tMmWMOmEBtVtOQ
	 I6xcBk0h4mSBoVZjm3lf4F9/oMChIEwFYB1HJoQMzNE9nFlKd6M5uav8KAA+wIJakR
	 tyG0zL+5gMlNOHHGPsoLzyyEjDgts537ghdJs1GWfFTMdrTv+fnUtKW3IjFCdYWRZt
	 hbPfvt5WXdtDtAbqyMObiMShilVOa2/yV8KBl4b62Y1H8BpqAOCGayhog6hOvBFCAY
	 Xq1sqZ3IOsuTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFE4C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746723368.8566.7586760668737864720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfc46d2d6a43f576b7823792e32e1577043f7b4b6336895df51b57bda13faff
Date: Sun, 23 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787467233
