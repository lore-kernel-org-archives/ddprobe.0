Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAB5207A20
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784077714; cv=none; b=Lgf2ZqkGqaVXmU4/xeb2zjNwyHCO+IYDWS2VvEyYAUBa+3pQLAcU/kTqh0hE3baWYgW3Aot2OuYPT2qK2zKSV+i6LLOsGHDOsywB6XRZo6Mmvbq/nLFl87y4iVXs3HIhVTxTXTb4JAMyqQLlpcCXiuzBUaaQ37RTnSxH74jrSBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784077714; c=relaxed/simple;
	bh=KGnq+cG+GLF8nsTzVWzWM2PYJXq1qkFlvUNVbpLo7bs=;
	h=To:Subject:From:Message-Id:Date; b=FtBCmIz4gGOQaqcExQVAtfXu0um5dy/hASW9ZZJOOS91SBr+LJ9cp8pyTwC0I+wMrw3XGqlQH5ZcCHLCVzeaKsbw0l8A1bn7YZBNMRVm8Idoeigh5DSPgG50CacFGKb3S5HmDePCbfbutmYmWLmlnXnXcT2Fq4tPXMDxUt+fwfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBDgoEN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBDgoEN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D010AC2BCC9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784077713;
	bh=KGnq+cG+GLF8nsTzVWzWM2PYJXq1qkFlvUNVbpLo7bs=;
	h=To:Subject:From:Date:From;
	b=uBDgoEN2D1yADLGzBwCgQg8xXRjfV2xlDp9I73VHkGnOud9CkO3RXX0r4e2Eq7aUD
	 abHOwZZP7apwI7uTvLlu+tLF8wZhYuxZ683yRVGbEKe3PgpI0o0Y9DNDzxbdUFRPS7
	 UV99MOcr7T5ZeVcP08yTaVJ5TWEKyDi8kdfGir/CxC8+L5btsDpesNybDSEDl/FwAU
	 LIn7uUmOvKQzdjHs7Y1mYJbryzLkslHatSBzXzrC415CQ6+UdMM+rZmBrrzohzK1JH
	 1zug31rhroxJ8MEjGR4T4UJ3L8YvzpItvsiV+miRv+FJ7Af4scE4MdehcFv5vqA0MZ
	 NcyqeCUQpgpnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAEEC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407771368.2578.5087660787556716695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc09e99e670bb2354aa91a125963e0bf8793f91b4724eac8d64d8b2b6ac66cf7
Date: Wed, 15 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784077713
