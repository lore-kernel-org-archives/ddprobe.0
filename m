Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9BA2F0C78
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759139994; cv=none; b=kOL9kNkANbk+fY6hTz9W1d/LH0cjUyFfMWLferOyKoZec3kmL+qwYEJruMVXIq3etyR5FFHVrolxgtrdteGbt1ZR/K8VgETKPRgBxcPmJHpwKVh09Fvj14OnDoRHQynrAOSQmH9d/Nq7HRbFKe/EeQMYVy9snof8X4aDMHY+OnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759139994; c=relaxed/simple;
	bh=J8V5k03pShzsJj5d0/295jNG5IQiHS0ZFdEm8olRggU=;
	h=To:Subject:From:Message-Id:Date; b=rzNI6PS6FSpqQbhoytSBrC50AUGAtA7rcz4Fs+4Jbo3qc2DxA62qXeVKFmF4uS058CXUpi4twQxVG4zkaYcJVtGo/KZBTHNtXfEyp+KWfMOiU9Ir+jy9lbuVQHKVxBLEhFsyWOdmn6vDNWx6xHrmANEN5GrQ923eNYfBy5QDark=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHgW1yZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHgW1yZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A08C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759139993;
	bh=J8V5k03pShzsJj5d0/295jNG5IQiHS0ZFdEm8olRggU=;
	h=To:Subject:From:Date:From;
	b=kHgW1yZ4y1QUrX/ikjEJ+7hHHDcXWxvjNtYgnGaBgtGm5CIP6+Th5nFhgJu5kP4Ky
	 rx0UG9KCQSdngV4Zzea8L36H2l/4+g4hiutcsveXRqXkb6KeAE+rAKJsyrkGb7uUT0
	 yMzwQbEwEeID9DfF3os0/t8x3fYoaPtOAmGWKrj24ouo5i8+V7vp4lejpx6f9Li6HM
	 R4X3wX9pTwBy3jrSwZ35rm3sLMqnJ1QixjYOtA7avfHjd4bIt9xz7SVBVSjpv0friz
	 50AoaBOYQomGIsxQ3Y7caQ2ZqtCp5WLYvOFjZmsvvB1XFWg7ytTun/Uww18++6OcbX
	 vJp4fiDg/JYeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FECCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913999360.11600.8906193678514842865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0cd729af678bafaf20fa5cc8fe732f8dd89dbd7b68cb831fd2f38e4cb03f937
Date: Mon, 29 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759139993
