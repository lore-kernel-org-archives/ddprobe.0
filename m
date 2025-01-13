Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A703C3C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736739954; cv=none; b=QttmifZaUqaULl0epSQTOi/jg31PdwAcZPXLi7ryoEzYruqVjALd9MBAd4fcSZBykZGv963qRD8imn6jY+NSEY3PpiMnADIX3m0A7Su9MDaIPLDPEn/YjdHJv0depO7vxlyOd5fAFhSDt5H2bMTVQfAyS9am5YAaSKT9t3ESw+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736739954; c=relaxed/simple;
	bh=j1xyoB2PuvfS2GIqy9OIS/rYXM2GqP9YJla0SRtCikg=;
	h=To:Subject:From:Message-Id:Date; b=fnwhUHF4rfYg8pSpjPi7XI++oY08813C2NMNRLSQBGZVhVM4vM3EZBMByLRwgQICdtsUxhQnHVvhTE2097lHY7+dzke4pivmv53AXg6HvVRsqQKZi/iLO0DCQDXvmiwXyCvsHbsAnv0AaC7VGS9UAj060L2krSXuk4zHBup2WVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pk2pFcbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pk2pFcbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A13C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736739953;
	bh=j1xyoB2PuvfS2GIqy9OIS/rYXM2GqP9YJla0SRtCikg=;
	h=To:Subject:From:Date:From;
	b=pk2pFcbMi/3D8SwlXw20nYH504UQr9Mq9wB/2Kpq/t4gUntwiUyVwqHnQrIeuXQjF
	 L9sA0ojrk+7amD/S4k96Idm7dIVjYN2+w9QjxvnM4D7WTKaPLNmDusUWNURJ1JmVgL
	 hthLobXJ9pRNeyxx1wT4JMbw4SER6MlyQe80fuLVos0zBU5Jevf7GYewJgzLWLIDDP
	 DArf4DtaMpRP2lLOqKM/bqemX6I0uD0zOUhUUjzFpJgKvDu/dUzL3Y40wsXMYmZk5u
	 iublhPaGwjNuCaxp7HmnhOr3iDM4zQPj/E/dMYYou1FKqfzrNKJIX4s7VEaoQDCK79
	 fZTuQ9wJJH9Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F97E7719A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173673995358.13567.16420456798866099528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8caeb4cde7098d29fee0e0969b857a9575b5a90edcd2545942feff57e9f40a08
Date: Mon, 13 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736739953
