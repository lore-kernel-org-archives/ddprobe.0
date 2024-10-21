Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E5F64A
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729484754; cv=none; b=Pgff4u6rV2s9dFshlLxn3LXItqG/4cKG0OLOB8f/edkcXqUKec5EesZ9SF+2q27zRYNwDiU4p79VlXAx5AB0tZt/5eYopigegylIqnA6GAuVMCUyU7tNwdKN079E9gWiLVDJz89fL9xS5a4ay1+qxzgCmON753rE+DRQtVQc8sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729484754; c=relaxed/simple;
	bh=Npf12Tn1/IZCLAVC1qfxr2R9480KMVcGrFOqV5sB5FE=;
	h=To:Subject:From:Message-Id:Date; b=EV7tu18BEEOEiEw7uoi6qf6kPU7UGlAXwX+llMZD8/yfr4ulV0lOTn+RLM+ki+eR2jwPO03yPRgb2z6DwzVx0BqfLjWU3KUWj0biuOFxg9CUNl7DgCfoBgxIMk+C6DleP47fEFsxP6iQg33djsR8fwxFd1yQOQDAoibIN4nvPvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXuwK5ah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXuwK5ah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1131C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729484753;
	bh=Npf12Tn1/IZCLAVC1qfxr2R9480KMVcGrFOqV5sB5FE=;
	h=To:Subject:From:Date:From;
	b=qXuwK5ahJ9FIxLftlbpbkCdaDal2yiz4zKY4ccotkZdHzPkUdptmZqd4dt3AfOvfi
	 5sKUTCwc1jsq4ci5ARcgoYTfiy5U8uiXg2s/iLzv0PHIdxj4mX8gAwE9KdfLYJu1Ba
	 RBVr/99Lxn/HUx6auBzWkxjYsA1vQGjUVIsb95KG6NnwnGId+47B6n945TE5Odo/k0
	 5CwUnLdW07B2zta757AZB7dJKcpPFJHh7dTOKRsyuuxxmygYxF/DfnTBmFdiedBWuU
	 Fle1O+wT/Yk4xiX/xzoLRtzXf6I5ODRvts8mUIh0DOf2c/oBr5M/6pic0ZTD6shBl2
	 WM7Bv5vDlRo8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D034D3C93D
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172948475363.16008.6474576328493611243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816ef5fcdcbe03a15913b948b603cb8073136505baf8b624d006bcec63646c32
Date: Mon, 21 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729484753
