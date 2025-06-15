Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF61EA7DF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750025394; cv=none; b=ZXQ3TDLAP9+XYJg+1Bo2bc4ggqvWo+kBUyndREMRmQQuaQvY2qHzETK5EP5Y4a1GfwlXhdE8LsPumjykArA8YM8JO7/wCelqw3YntcGMbEXHNIqUnMbX0plTk3F8R8E0+ZHco7rBEZZZB04RKpGZRO0S0saiW11wvQ3bdKXbhrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750025394; c=relaxed/simple;
	bh=O4O51Qc4+bXt3+ReZpNWnuphOYg3EeJPfQxz+845vSA=;
	h=To:Subject:From:Message-Id:Date; b=rlYkmZcM9sKy+iCYzOrvq2xMg0dTrrsryHDK2s3HM9lp4N228hUA/8X0RtM9KFxkgH201TzVCqDDYmr4I9WpH5PB3anr1hQwG/zUtFJ2cQv0LqrfIQAVMhPHL3YxrFyZ+C6iLpPUH1U3VvE8xkXAtPAZk+sLkHVe0RO8WFivScE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6TYs9v4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6TYs9v4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE02C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750025393;
	bh=O4O51Qc4+bXt3+ReZpNWnuphOYg3EeJPfQxz+845vSA=;
	h=To:Subject:From:Date:From;
	b=c6TYs9v4QzRS4UpvFcfjh9xXXaia2YmEzUctbWfZnaQ547QP14821J1LUU/WfnFcY
	 DycONZPEmgc3XOzmUAHvFRoVzsG28p1MdU9xaIuOAI8fxWFqUVQ+JrCwdxNvwP1Gjs
	 oaQQIoIkBmsPsFm0SXIgi7Nr87RyrFhUvImodVYOIp9qTYFfCAVhNqMO5Pr4HO5lKK
	 ZfrIHm7BxjXpumdlrukeq2R7jxI3BqstZVWGLaesleA+TqD6pHyu/upf3WJMM0KzOY
	 j0z6TRyx1fiStj5iIYpyTRK0VvQmm/LFdGMotI5wySAZseaHiB3crNQpT/AWSbT3kC
	 ezSPbGopblukQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96404C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002539358.28979.7904908446731667656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1741a68d99e506538b355480d429ad3f7dd21cdf292d70b1b5a45f0dc0264b
Date: Sun, 15 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750025393
