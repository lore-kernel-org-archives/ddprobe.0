Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023753EFD2D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772536494; cv=none; b=VbrEm+CG+x9D74bm21kbaG6x35w9+rAeVI7OpFgsSzlWRAupnFAUbhnt9D5fuMPhmQSYk9MRb6pbmkCFNU9lNKZxgcQznc7jTfS15x0yImlDBylD1AFxu5MvW3k/JH+1oyhs22mS8nMOMfB0L190HcuoLwgm7ecs+/D6QY6Z8oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772536494; c=relaxed/simple;
	bh=J+Ku7HgwByMJLCD/PIjBXXuybQDQAh3Wjg2pXelIHvc=;
	h=To:Subject:From:Message-Id:Date; b=dkeIvt6YKH1txIa2D9o9UA+rdIYTeBp8EjKeFzJzGrAlq49+GNNlk/LyvTE5ksB4QZIJ2Zq1f+HLeA5pAC2RYa9RpXRlAMnBGFDqMndr+4sd0a21h0Nz3J0qtk90D0jBjymVOQgaI4ecbq9QHPRGO5so3y5fhnAMj9/A/w9dJFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXCzWAJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXCzWAJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A736CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772536493;
	bh=J+Ku7HgwByMJLCD/PIjBXXuybQDQAh3Wjg2pXelIHvc=;
	h=To:Subject:From:Date:From;
	b=sXCzWAJVoc6Be8hSh1kWaFwlx/4cNSDKSmNGSTU+r0tilKZL+++wV8+5UAQYSHwR0
	 YOp1gvyakZwb7I7rkwpDQVWql5YUzyohI3BKGe6yMRxbo7TtYm83tRC8+g+xO07Xy5
	 fAnmQvxS1DMQDU0JcjzNTY0DSQkhcqRIp5Cs0kQ3J0aj/iOwSodE9Y2ZJIui0queqU
	 SmCuE9wo8cMo+CUv/nG4CJYNCww92yPxRLxlmvex8lMqe3KHTXIUGJAuKuDtVz0osV
	 Uw2IPjBLYSPFZtylsPYmwAxo1S63YxxwJviLwvjQ/57XybwF6SW3tSOzIMXO/UY3WU
	 IKBu0rsWraJow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E4EEC1430
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253649359.15875.17927877601058674500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a495887fe1d66e9a66f64411e65a02b112fd7a4ebb4c22b9cf386205430f445d
Date: Tue, 03 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772536493
