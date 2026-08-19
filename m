Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56459334C27
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787144434; cv=none; b=ZFwTJ+su3V0oxejrUdbcAy1qGHSzA+Wlh/7vXfQw+YskXYjifwQ6Zo7yzqPkwgKEFCSzzV1bUzHuEuuO+lAheNBzjFH4zUeNSSSp4lD7MJlCYpaPnjxI1Pjk7R5TJjqU0D/XKpiw4lreAU86g8j/KMkFyI7Gqz4urOIGaC73mec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787144434; c=relaxed/simple;
	bh=khObFHwkPj6IbzS3M02grhxPMYjF3Ey2S005/qm3xFo=;
	h=To:Subject:From:Message-Id:Date; b=P9dybzuR1KWn+a03N4QmkQi3lP3idlnTHYiodl8i0bupDOqJWgzYmgVXFF/aKGolZgbddT27gaL1toCMeukSaXN1s5OzbG7oGBw//xMDWg4QIpVKwzFm4nnbbuDFu2legc1gRZ+UPvVznZ7YYyRHOcIx/CySBoPn6KA9r6bWhhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWYRsXTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWYRsXTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB437C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787144433;
	bh=khObFHwkPj6IbzS3M02grhxPMYjF3Ey2S005/qm3xFo=;
	h=To:Subject:From:Date:From;
	b=WWYRsXTzsKf08jeJj1dd8f2W33VkvHDjaevECpV+PZLb5E8j3jjIcV7KINnFWAkWG
	 TrtGTxzoXFJ4iMEH6nwe4sl5OCp4ky+DQXIZp+KMUuYiK7dXPEDFQnYy4SvU1oqeI6
	 mDhB5S/YMpGCv/Y/Y2IHfrecvMFz0YpwQJqdS3sxJ7jUjLSOqFne04qwsJTg6KftyY
	 kSQ2FRXWwcJO40uuOkSMZ1wcD+bXrxNlbVF2aY8sU1MBeNzoVuTOK3XRTCBD74aE/N
	 owFGJ9LFDNAHe55e9w/tzDemp5kxIAJSkzCE46Fwdb60Rh4xNgHnI8ACaGsQvCcLUP
	 HUndw9DwFzUfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09D3C5DF86
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714443370.20635.16998643668059323434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfc4a055870833e91815ceb3da32814360f0ce5f0df78c3144fe8f6f7c9d8e6
Date: Wed, 19 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787144433
