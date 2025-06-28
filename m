Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233F619D897
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751119194; cv=none; b=WAnGFOOyGOFRVpz23YDVFL7PzeXTRQ78xA5uV0MmArqSWw1OZP8/WZVpb//gspDn5EICyflAXJ94JNN+BanXQrfewly8agK26VabSkRQiP6L42+g91E9Jx0Bgi0pVrDZR5C5m8RV9YqsrDND9t8uej6l7YRqXGwz7Gt9YF2KtoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751119194; c=relaxed/simple;
	bh=Y/a4+REJxgDWuqTFvQjNd8QbwdFbgJxhDDSdnTQGoOc=;
	h=To:Subject:From:Message-Id:Date; b=SzXe/PxdUG3cgxDsIN/TDhEGNWpqTuPaagmldkk4VcNfdlPGeicIosquumIZgTyBSa7EedDmauRf9Hwp1ZxmZv7+zpE7SS3N4MNq/LxLeIOdoKcfmI0+NMaXaGfKQLziwb+5rnmOgk2ZIjbURZZ/PXH7WMuLyQZ1ABJdKaz8rjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAioBCC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAioBCC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B8CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751119193;
	bh=Y/a4+REJxgDWuqTFvQjNd8QbwdFbgJxhDDSdnTQGoOc=;
	h=To:Subject:From:Date:From;
	b=dAioBCC5WaDXSedt9ogR0Ua9DqJodhzqLZQUJTVxRdRlr50fAZ2Rad8VXWK5mkZrs
	 2usG6nh+cbRSS7oRopqD6bxHBkTgbX4TlHJBa0u2Dh5opDMSCTPWPO3laroWS+smJf
	 KNFmDWt5AgiJPc38PKLwzu157WrVmATlzX0Wm+hcXfkxwgUmJ3cf6VpxNSvMPMbDad
	 CiLJNS2NWjvLqpCO0rjBmXV63JVCs0t9iMwkcnOWQglVjL9YGOE3sg6SOPvo/jGlyO
	 n9yHO8hxfnV5fJGcda7MmGTAE/6PEGEA9P4NiTvH0B6FPuMFgotm9DK2nTAI1o62dw
	 LRLO5beKfl/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25EC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111919357.21568.10734030717665564243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437e324a7e3c2d12604ec6ba3efba134601c160441373cf664695f8d324cd07c
Date: Sat, 28 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751119193
