Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054A72566F7
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763706714; cv=none; b=IBZBINE+dLC9VpXiFy3hnyNhSsLkdX0/xIj3kjoZuxYU9IjHFkrjpJHX0Ej7/bAL1Qr1LGKXylGBf5iFnO39DCl/AvxNr90+hAenP40c5ZLoeJztKrzGwm0WDQiSmU6Ar865Wa+x8OBbmzm8QS4wob/cp4PopUc8hn8vPxj44KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763706714; c=relaxed/simple;
	bh=TVdeWufwMO2N6SI6K4WzMPjDfYigVTc5VP8y/yNfsLM=;
	h=To:Subject:From:Message-Id:Date; b=qmVdvVVqXSh3FOBHfeHi8/yFuYQmC8+z0/JFxaj+h08e2vgUxRCxVgootHQ27tedspsvBHf39EFJNTxasTUcdwNeh0gKleLU6VfDuBaT/CwRnmXNd0B3LcDCsOIMFP7UnIqyGZ6LBzpigfvd958f5BoCXJNtgth4KmF1+Twe3o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfagBufn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfagBufn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B3DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763706713;
	bh=TVdeWufwMO2N6SI6K4WzMPjDfYigVTc5VP8y/yNfsLM=;
	h=To:Subject:From:Date:From;
	b=QfagBufnYWRrFYPV78/nUpoZ9UesU60I6izkrN2Y0zzQqVkxIgMX/DfPC2nBsMZ90
	 GNsNu4eN+no7gUcQC4mq4psH76shyjsqGmfXt09mFNQsroDIL62VZBpC4Vy3abC/V7
	 j8iOVhuoyIBdTJDFyJZErQNJXM/6cUWwAv5DNFbJKm25wlufrdYqR5m8QxdSIeFEFv
	 q2GvqEXkV4chphVFrBAF2M77akzQ7Vmdh/Rqxq+wuvNrh2yekcHj0OLEKYHbmOBpyL
	 XfylK90PAv7AI0aKEcu055IGTsdu9IF/XLw61c8OBUDxsB4AwwAEJwhGgxSmyy72HH
	 woY++cswS6DdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A33CFA478
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370671358.12577.16258150517458341919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1510154802ee2153a9634cdc76092816dca76408972db4228232f667c594932
Date: Fri, 21 Nov 2025 06:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763706713
