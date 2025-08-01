Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B59188CC9
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754071794; cv=none; b=X31EP8Pq+EBAWR7J9ALKDriIaHOF74LQIrm9PRLPOLazaamdholayxvy+JZuIAUQ1jRtQNIbqzTfLrNanKcvniIcRipRV7qDlKrPFQXiUzOcmyN+26ZqPeB1M2bW5soUt11jCHcdwG9R8k8ZiiUWenjFXRAYywI1RFoAtZetKe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754071794; c=relaxed/simple;
	bh=H53t5gTgWB18hi7M2bXM/gQ5jVPLP8cMkDJZ01bgJvA=;
	h=To:Subject:From:Message-Id:Date; b=KDJtEvr3QhbdLrLlbmjI0rRgWofEEDSnf8Mj3xGG5nTAqs3CQqbbtd9aNfMqmFwgTbQ2Q/VNWqsTMgLVl/AKNYWFOGq8ZKBDj9SLb7pKsjUKSIro9uqPJBOWKUpkmj/WjHv7Z9d/CLvMQgLHyEitop8E/EyJ++WqvR0jfKMOwoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlen2dZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlen2dZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D4AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754071793;
	bh=H53t5gTgWB18hi7M2bXM/gQ5jVPLP8cMkDJZ01bgJvA=;
	h=To:Subject:From:Date:From;
	b=qlen2dZJAI1D8T0rNMGBiupDvkh1wIvHwK8yYXounP9mN+3Ciz3vS1f2YQZApEWsY
	 5BYCcYv1IL3vLOvrY6t9OVfeu6Fz6jyrLP6rA4wmxqQWDgcpnyO2t5F3esD5hKZ7Ak
	 y80cLNaluZpiWMVKzSo8T1i5WTugu4Sw4Vr2lxk6G0K6uPjOHb1TRkOjESFH/aO9V4
	 KnNMcKj9+4SOIeXXrlToR4064bbEkrNljkWG2otmJIpBPJoKUoh1lHNpHZEdf3VQNs
	 QYgqEepLaTG8HW83/wF7wr6BuApeapbEgkgwMk9ACPJtOexetiHv7yGIHk3t3WUj3u
	 fG+4lTga47BYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D75C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407179358.12894.13769801234293537748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea8ac9f9bde2a072852b8044c5317404e44df6e639bf3e8ee2800bcc39293ed
Date: Fri, 01 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754071793
