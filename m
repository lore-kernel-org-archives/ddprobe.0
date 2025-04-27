Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB48F2063CE
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745795393; cv=none; b=ARchqkRwGsJKcCGMbDOH38NJzmbr0qk6fydq/Pft0Jr8drTg3PjQWKG3Sbl4N12Wn/lwOD/V31pMwvtiij7nCKtX2HhLZUDASlwOTIqP686zp4r0bOH7tP8lv4ijp7iMlDyL/HFOYCe2X0anoFvLQbVIrFbM/RCdajXyAg9X4hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745795393; c=relaxed/simple;
	bh=BvDInwRsdtkWXBYlhAz/weMGiEKggnIS2ltp/abaoAY=;
	h=To:Subject:From:Message-Id:Date; b=mmAhOFsYKzYWqdyEw0+asCiwqGicnA/Orx3qhgxPPUbuxQDux2yH3yKqhiCs8sqo00r2RNILMCBztDa2ilskpN/qb7DMqC+r2ASe4wilgi9GuadS5x9HGziP3BZs4PyssIZzWPQy7zaQNydSDCmj16PkgD8gimJH8ZroJq82Nzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEUkal9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEUkal9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1A5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745795393;
	bh=BvDInwRsdtkWXBYlhAz/weMGiEKggnIS2ltp/abaoAY=;
	h=To:Subject:From:Date:From;
	b=XEUkal9KhSlzOx/C09lo1ZM3xB1uTsOh2G3FZHxTAQn4JvtXTiFDioPHnbIHDzMmv
	 YDIrjx1R44CokFSyhy0gRImEMg3Z+fc5Mo+TxnK7vuez+fH2i5N3rkQ3OHEKydo8+b
	 d88gURZoxL0U0ALAGdjFyjI5UwidUSSdodGHVgWvGgI+btTFP3zEn4wkFc/hHJBIoE
	 FEq8lxhgcRFJ9vPT2RuIBS9mHr+lSidGGXjKd3lLt6wcZ8Er4JHLmdRUOH+qB86Zps
	 fpDg+jN0a4g+wXyx/muBDHbKGBvcTa5jX+ejgTxZMwN1sAKaL1d/0puM5zyky+O8gS
	 HrGziJVHUm/GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E725C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579539357.28464.3048714599934967125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9af5d365c36e3dfe1b9a832a15de7b061c3e94d2c62a9ef6f7698300eabcff
Date: Sun, 27 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745795393
