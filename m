Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA141FF1AD
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763289054; cv=none; b=TKXE63dbzLUyxOYDAG5mQ4clhipdWE85WgYQey/MPxwFPYdbQ9KPDBrPxAS1AXzGcL+78kGqP7ZenxmRaCBENWyCqmPjkS3IEXC35rr8gla7NsplSSfqUqpcAZMFAHLoLNln9TomDH365koclMHe6AKR0f7NFtPimq2Yl8wxu8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763289054; c=relaxed/simple;
	bh=X0SxqRIhsRtM/m5QOxRPxB0own/cKZzBfXeJMARne2U=;
	h=To:Subject:From:Message-Id:Date; b=t0d8cp0GGPxmjK1/yUvHWZKnrXitChevMJFEaaZkg9Aul7QOxoAWMGhH14jdmGXmHx8nOMDq8N2+YNILAb94N7FuqTEDCzwmfR1ElZM+gBctpaA1YXFnlbmBYXYD7+FCnjhmzg9dmAl93RL3NBJYBXOn9qvXFKgsLV6tuBKSTe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhZdsmNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhZdsmNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE9CC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763289053;
	bh=X0SxqRIhsRtM/m5QOxRPxB0own/cKZzBfXeJMARne2U=;
	h=To:Subject:From:Date:From;
	b=VhZdsmNt+5ANkje3NT28LCOEJfTf9R57EzETTE2A7dbV37uuNUoPaJL+tfBnHeJWz
	 belt2FfsAcyX2ZklAzvw/0Oi4c5w8PZtW571D4Ge/9DzXVqZzIo7wLYYQBTXPKppg5
	 YHQ1bqZ07O+Idc/uW7TWT4cxfwTIvKB/ZrsB+n54bkhFYdRWmNR1bPbdTxsUzCfQsJ
	 nZrwSc3+0H5OEFML8tzRH9AbWnwNfs/1b1QKYHMnK5yfIoX9ZV6DjH8aYQWlrgzGZT
	 CMEeLI52sgYOqHvgyk0YJr6Wc0jxGscJm9Dpp5e8JejXEYWCLJh30GCmmqqvnYROBB
	 iWe2d57d6QaSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E894CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328905361.11900.6624033961808447777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e174b52525876dc581cce39ca507c1520cc7376b3814c1a71565432275890af0
Date: Sun, 16 Nov 2025 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763289053
