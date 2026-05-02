Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C5F1D7E41
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777711654; cv=none; b=D5oMjPfIfEXskFtWt3+AUEyRDvLzU++cDFuGGXPI63uAXzovLWf0q5GevXCWlheAQh7T+NODj+zOP5wrOKYOmT2/le5yMJikeKJ6O9xk8l8Afz+Uchx3ArXnrS52vJAWTWRyOcaQiJDaEogCIxUmBlKNmRP/6hNI2d33eCS+eQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777711654; c=relaxed/simple;
	bh=lRVnAbDusgzxEJqTx0dLDSX6TzcZElfq9puBTMRCBAc=;
	h=To:Subject:From:Message-Id:Date; b=uy+6KFooQBaQYApuTq1/lxOJOSrW5nAMo7mSSuvnZuqWVfWbSwY08r8RuaG7hzwpZm/Swsl/hrcptznbtQp/Hk97jcFQiYPdJ635mW1RQEKYewoVgvgZT7/bW98vK9pnpPKyrO8a6SYvmMzBaDQlX2aYhd4ZmZOAckHm2Ab792M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/V6JmnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/V6JmnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD575C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777711653;
	bh=lRVnAbDusgzxEJqTx0dLDSX6TzcZElfq9puBTMRCBAc=;
	h=To:Subject:From:Date:From;
	b=N/V6JmnTB2RXffL21VKj6J9ATVQ7uPFvgMZ5Bxu7p9K5eoodIldti15d7onPtYpxs
	 ymxgXS8E2qakHmv+ep04mXDwAtHG59NaQZRUmtm1wPOw/SmMJ+/rB21bsRLbDGPZOz
	 ya9bGprqjUU8Wtf3Q+djdHJEwKm6rfelutV/xj4Dl6822mRLonUgIWV86Q72aVyfiz
	 cGzkdH/3sLW51ywt5hqZk0g51vgqScHHUlrKwx7Ua4PRtH7heyRt3hc7w9KkR4tLGW
	 Cgmfw9QVgPKvCY0iTSTJeLMxhFy7eG8qFyleQ/d28Vtmwhg7FyM+2btzUDH4YPtmo5
	 Oy0rJ91/DDpqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF659CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771165368.11899.9535322016355452168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ee09c641bcea0146b986a6f2b32e483c924a52522ee562180c4e05d27db4b2
Date: Sat, 02 May 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777711653
