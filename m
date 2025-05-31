Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382DD195
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748650794; cv=none; b=Uqa9xL/Sc9VvTu29TD5ivb147xItK4pwYS99Qs+aFGtVblk7g3mae0wzJ9IS1WASH3h4rZtb8BpcvsQJ4RB0GhRiPCuZXo1Yj/qepFj+FexW+EBtuhQE3X+aYOaLy4SzQ3bBEphnuP7i0BPaplURHhy/WzV3Pxnj0fvUzKxqjBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748650794; c=relaxed/simple;
	bh=1gQm2iE0L2kppVinc6G6d0o/LZep1WKpGkowr8CZzb0=;
	h=To:Subject:From:Message-Id:Date; b=sHpQUaKApWhMfkFFUO2kIra4WUCC9k5NN3YkMZ4O3yjanXGNOg3djao2mKp/ipcU/LE1wTR5M5HH9v1s/QkFbY/STI2KVgZVhlhUCd+xJ/dJ8o6FVlaS30GOsVcswE68SVJWocrQ7sz2evFsTBocg/DXmCjjaefOP6WvyyZl3+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNGpQEq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNGpQEq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26BAC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748650793;
	bh=1gQm2iE0L2kppVinc6G6d0o/LZep1WKpGkowr8CZzb0=;
	h=To:Subject:From:Date:From;
	b=TNGpQEq37KiMiqRvRf4vdHbtLg2FPBNRU8mJvoG7avr1YBSsPm1qokRIjF6IgfIeR
	 SzXfG0Q0Xs9d10BKMGMwR7BuerGAtGSpQm6QilKWUmqLmoMj5yCVg66ymVESVUPyJ6
	 +JbA7YvE1vzXE3dsNBYRgbbq4hqtx5A/SgGwdXMSlZ1rIOf6+hmyxOe2JwP6G3eaYS
	 u2+X5GUhHhUrDmlh389sYF/YWt89hJntKAt0Twr5C4aJbBSqmcK8chMJobdYk3hvMi
	 l7FovgX9o0cyP1SWOb8rPDSsjxgDOtsy2CV2J2u8xFNMbxeldDtqX+yYwzLqGf9rAV
	 jm+zo9gr5F/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E940C5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865079357.27702.7650630670280331943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525345bd29dd74da32e8277c3a1fc7b23207799633310b1896ae6123dd2d59d3
Date: Sat, 31 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748650793
