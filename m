Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAC43815C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770653634; cv=none; b=CTLXN18KqtLj0F8rs/S3uynUA+u37HgvzEfPGLg0VQiRp3hdG4dvfwPMmW9H3Q1ogrgcYiEECPaqWoMQ+/T8OWiYgLR+trvM4nUichXK/p+7SqGislPF4t0uC4jBtzNlsnf7m0CnKXITruBiKcIfcrfDR7DjqlFTUlvzyzc1/WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770653634; c=relaxed/simple;
	bh=oXEOBqtN4ZvjDU8TCn+ayeGnb1ULOBkQJl7zstMNnN8=;
	h=To:Subject:From:Message-Id:Date; b=YF4ySeZT8dwjiByjKuyXiCIYkrho7rVeIscsRjU495MwnonpxASH28pSUnEo8YpDV+BMdPANtW2dW3kICWLDZfbV7lOvoSXmGPRUB5wg69aZe+XlIZBWhDox6hwXD8OIT7p0+8DhMeMyIwoZDGnowjfnIwmazTyi3fDzUrKQQ2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NATckUJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NATckUJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DBAC19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770653633;
	bh=oXEOBqtN4ZvjDU8TCn+ayeGnb1ULOBkQJl7zstMNnN8=;
	h=To:Subject:From:Date:From;
	b=NATckUJYbrUV6mxM1gSdhDIozw0rZX2LoiEl9JHkWUIDqP5oMV8MfbRcCnMLqw5YM
	 YgcU/E3Ii6NE6PHQqAfALppODNl7b1BQ7wTy9Y6Kz3f8DAttV2UxRIV008uyC+Bqtv
	 QNdzU8+tJ06MFKBqgqDxBnRJeIvnQskolktEK8dWxW9Y6950kssmVQ/Urhw8SZ59la
	 HqjxHh0fBjkZySSN2lBgAgjU95HXaHEcyEbLhWCW227o/cup3ZLGhps+sGtFYCqFep
	 irqgoDrHZJCtyBm+Q2H96XvmO+OMjjnve3hKzXoBMde64LyFIw5srUCVbEEG0+oILv
	 NumPOThjnYwpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96422E81BD3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065363359.11352.13589791534711380756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7a66512d431c2c8ed3e2b76f15f33e6c56a0fa7a8cb1b76ee6de2207d24de2
Date: Mon, 09 Feb 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770653633
