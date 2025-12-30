Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201E8265606
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767122034; cv=none; b=pwytEF6rspRfNoLjdaQWNk3KFI/yuVaKNVc1xhVpBnTpTEvJpK1QnXi7y2VLy9EaHcux/zZ0VfMxRzi+FOV9IzMwSLuRA0BhmJ4nMhx24fOpdHQtaVBsxfH+rakM6KrLiDcEO0z7OpCyHP7LE4vNqgq5cOMMHhWD/ztcHn9G2zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767122034; c=relaxed/simple;
	bh=au4ZMM79kvIdFmRIHFpx0BxrgKvDRY5Z4XZgfunD0KI=;
	h=To:Subject:From:Message-Id:Date; b=G6fK4xOr6T4yDiXhuF+zL9GrM6UKhOyBXSCHE5rzM41UbYbamm7t6pBm2jvTSaFqXMcXDpLXfvr63ypR/fPy/OwQXy+8vQjGWLab5xf/tbQJ1IsXEfZ++ojOb7QmtAJIjoU90xTjnlakeZszh9n6l6n9DvsMajqMAcXEheZ3PK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgUURh9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgUURh9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53B0C113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767122033;
	bh=au4ZMM79kvIdFmRIHFpx0BxrgKvDRY5Z4XZgfunD0KI=;
	h=To:Subject:From:Date:From;
	b=HgUURh9oauXmDTjULqIhuW7lofwl1J7qmXhtG5TGluxJhw+0KsULsIVjESVbt8vxG
	 Zq0pbhx7yf1l0Zq0ZxeDWzugJ/+PQ2zWUjk/UvXgerC5XJADucsX+KEQ+QhmNLI245
	 str+u0aug5X3Kfz4YYEFNpBi0iI7CdzOX7FCsFIQuMBr5UKCbJnz7+bXb3rgjPWAVh
	 q1Emln+qwleiFOGNe2C6JsRif6lZY3+6ZpQxTGYSB3jPYEgFf8bD5YxrXkUVAdbCOY
	 zypVkC6warBDVFtVf4YLLM8G8J8sg/53wChoYXld9ML9o17SRw4vqoq7P1jNYDptsQ
	 qQG/w291ZoiHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93510EE4990
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712203358.2603.8508060425148660334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a246f8584be534c3c05b1c816bea05d2385950c5de6d34ffad812412e42f5793
Date: Tue, 30 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767122033
