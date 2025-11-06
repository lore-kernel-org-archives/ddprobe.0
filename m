Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4C9BA3F
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762409994; cv=none; b=azDnkPSDyb2gJ0TCFGRNxEsFxBFim18DR4uVYmTm/R/+jLVSMBdPXGOvy6o0xU8lwJDvTQx5MRy0Ne4B4jLooksTrBSmqIkO6SfRBV5pYqMABlMKsijrMhnZKUxu8XoI47Se5+CBzJMuT4XuDxDKBOP27zXnV/nVHzxgRKm3mfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762409994; c=relaxed/simple;
	bh=Sv9Jd9t2BsO4jkx/zuFM4kSBMO1+9Y1sHT+IQ3eRyYQ=;
	h=To:Subject:From:Message-Id:Date; b=oT+ffMN7wEXp5HUcsnYynw8MEGvRfovVnWKbkBb0wKqS2v0dyua7mvmETTbb+2hnEIwivJd3KDf9T2emHYHzp6ZXbHM/a5ptmWkC+4/HN4L2SKdbBoY7Ghqz0Rsh4BQnQHQ2+nDmAQxjDQyCmJGUg7Qn5GbU5vwyGDJciintMfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZnlQkZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZnlQkZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C6C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762409993;
	bh=Sv9Jd9t2BsO4jkx/zuFM4kSBMO1+9Y1sHT+IQ3eRyYQ=;
	h=To:Subject:From:Date:From;
	b=dZnlQkZuseYgtUrSK17hDz8K5TYcjRH+3iPyuL1titE1019B2e6fxwDo1H2ADRYA6
	 XbZXZeE7m95SnI4k9fx/KiqJcpMbo1CU8piCRTpgi3S5+6tSwcG9yLEgGX+SyAtVbd
	 KdJuMXgoebQl8Q/bScEq7ft9m1eppOovNTKX2VPOa1pbz+FZJx2ZvpftcKrr3m+BpE
	 5H/zK5Gf3ZUcO7vq1x75Qo6eeJy3tAafwXVE+i+SwYQNj380StZDxu/NoMkHFv6J5O
	 idg5bPoGE69a2W7bkiB+OV3UhS6kl7s9+/08mnXvjHtPz6fWAlOj0MRyjCClprqimI
	 zA2KIYO3Y0w7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917FECCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240999358.31961.7449585992260808869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29ca3b131bd72b24bdf77a637b26a295accf6efea6ecbf6fc72dd9862fac146
Date: Thu, 06 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762409993
