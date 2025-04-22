Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD4B74059
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745281794; cv=none; b=Kd4ujOmx/C93RXMUcXla5P4CYlBQlVmTMpd5me6q8WpcPjZseXBuaJUDFlBEh+c5B7tkmYeAeD+OsziSDRygvp/6OKblI5Im7P10ucCyDWoQB4ZI9OvRxvV9Iu5P9fcPptyf3IpzzI+iOtYRy7ajhkBN3haWqNfGRMNRHlSmUtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745281794; c=relaxed/simple;
	bh=tzocCYDHR36DFKdvbJUtdIPXe+koGI8H1AG7PvXQqaw=;
	h=To:Subject:From:Message-Id:Date; b=FUVbNTm18m95bv7HXVeXbWPAO1Fcsaw7O8ugidhbD0p9wLMivWRAlg4fS/aBn3pAA9etjfUhWmoDkydvzHGbsI90NEZYf5KgbkAXxRPC/FPU+nPa/Q3AOxKblD6KkOOwIbdfymHM9pd3bqMIqEFTuGLEnmCwmML2iGlyqY0MmJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGh4ccZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGh4ccZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC12C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745281793;
	bh=tzocCYDHR36DFKdvbJUtdIPXe+koGI8H1AG7PvXQqaw=;
	h=To:Subject:From:Date:From;
	b=GGh4ccZwlq+MVzGhMM5fuGXeo8mDnyxMUtDYmKEzFwJzdUtgRQ9x9OSZd+HxnnPiD
	 qjzmfwUypO8szFpnXzsGHmqRsyaWMSCb8yifIs1jBEbOSeBsByDI1adS8Cp4M0V1EV
	 z5M2pDhdsuKtcA4qev4hLMZ/bXfC0Z77s3a9sE2hogvGSS83cB4h/yny33My5DiX8t
	 xAo/ZCUJVHWh1t5EtVA9bbriRaeukpX0TtVgVUr0WJCQH72h/OIEd8It+ATcwn83oM
	 DtLVC0986rduhwjf71rar3j8cO6JaNPDtIszcP+M7RM1uop9TOJqvt4Ia5pihE8KIk
	 rRtmpQHmL7+iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E37C369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528179359.6954.16121890960234472396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1a5fcb6d0b37b8f969f9ae72f8c6aabd7d95a51c1f86420d0bed0156130f57
Date: Tue, 22 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745281793
