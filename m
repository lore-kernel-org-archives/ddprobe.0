Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050F029BD88
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773159894; cv=none; b=VSGCPcKinqqZRbSZ8wrt0f3AS7X2s8guRwVH3l9EYsNOkVYyyu+7LRp8m4WCuc7UMIdsLNsjUdKYGEttpnY6Yl6IHnAmImJFdsmg0Gh5Par3C/T++IBKukfAr3HjBl6f6ct89g3/SEFpF//ihN9OG4HihFQUn2XnAy+phH/b4Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773159894; c=relaxed/simple;
	bh=jCGpeK/2c8OC5aQcA44n/y7Gcj5RFn1P3rEXlPyjveM=;
	h=To:Subject:From:Message-Id:Date; b=r9ys7dme6/JtqDbSidQ2oA4FESVjPDAYRZ8/bCODxKiXqry6OGoqzEplXpl25iSCk6CiB3h4LhS9d54TK/4tBhnciaaPMMaEoPg5lbYp7Zid1pHsdCjUDJWpjb+IrfKJn1upn97Ov4VPBUdLjUHf82zZlCMuw1uVHpeTil+K0QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Upj35cMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Upj35cMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47DEC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773159893;
	bh=jCGpeK/2c8OC5aQcA44n/y7Gcj5RFn1P3rEXlPyjveM=;
	h=To:Subject:From:Date:From;
	b=Upj35cMQ4r0dFzLqPdSsHlDhdjkwl36OHQdEwO/dFYLg02ZUx3UVKaSCKh5acnTgO
	 RUlZfnjSN9HMHqYE8Dm8erKKQcWPuS4OjqmrxrvRveD6Pcue1QiKLuXsyqhbQ4ZT7n
	 Hzv6fV0tV9wQ/BrSh0HKdQFh1hW/0umM6gTmuxQet/KAy4q5rB75qCZ2EA2vh0NvpC
	 hia2x27Z390ytzYBYC3Xy/4w7xx8Ji1TtXxwXs0n1/bU2ZYZzGRTXmht6ImNsdFikD
	 cM/2EnhKK7mqz/492MWGnlxTjMPvV4RnGI7iC4/BD/L+byTwOoXRfM0tEu0unZa/ju
	 z2Qk+3waWG6ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955FAFD4F05
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315989358.19891.5209291912946864057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7eccf662d9207a908c47afc1229e8afb7f9698c4c9b27919d4f1c1e6ddd148
Date: Tue, 10 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773159893
