Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3F327CCE0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785206434; cv=none; b=Xe1ZBwBenQWnfJ607xhCorAXqp3hl/fNGl3DfaIw/p/ksQJHB6vxGJBcT06dbrb8eFfCmKIfujlNpRzw1e+VSVeIoHcfC/zotS9dbHA0s8aSfIjDICT2MXvjAbPGbSvkNRIb7iNEKigZBxxQFYp3U0gyRYAw+wsSAV4lRC9KhMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785206434; c=relaxed/simple;
	bh=yS3c/kJyY5kvv/WcmICvF1juHmsQXd8uMkWUeZc44Mc=;
	h=To:Subject:From:Message-Id:Date; b=Jok7q3iAU0gkpimizylXIpMz707hhK4VtPItyUKwdW8DqlCRAL94nlnFVlEg3XCZJ3x10ltDLE8koCbc+S5l9742tDL5BX3U6fYukW5fr8eHQXK4nUvOumEApgjgvJCxDeQczxkXjQWPoE0x+oZyQs37WSPjEd2VU6rBMQW/jQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdAWm2JY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdAWm2JY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE9AC19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785206433;
	bh=yS3c/kJyY5kvv/WcmICvF1juHmsQXd8uMkWUeZc44Mc=;
	h=To:Subject:From:Date:From;
	b=KdAWm2JYPZo02+FFT7irI649HgwA/hNrO49W3JL4SbX40k7+8oPIiPtqhcjB5kUt7
	 1UxKDvGg063gGoRbsXQXQmxPvwHR5B6+MVrXPGGKIT6/Wp4GyakWvGbgy7cfQIMEUy
	 u5hUVXQWXTZv6tFYRi56/5UO2Gz2DadI5v/tkf8tFdqzjOSuMW9RiSwdaaoKG9vzuJ
	 VfpgihZxfbHr2YgAWLggz40GdcJApMbtfxr3dNgzGaKwnu4w/L+AQWv2xpC4Qc2RjY
	 pRym7jEHINxDYDFME5xFpRfNDWPVkdlC2BP+Q6G5xpH/gimzPkVjpVWjrm2jC6d1gV
	 72NQDueAtfJ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB85C531D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520643371.3693.6212983588268442923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad3befa526eb2300f26140d8774d19c7adeace95c426e10f7a676ed9d9718f7
Date: Tue, 28 Jul 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785206433
