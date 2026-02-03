Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E372741A0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770132234; cv=none; b=l2wdNkxTJBT0x0M8qg1YR/VMBl/WJ8eX4X9/FTdLC59FUzvQPSZ6mBPck0oDrumkxbHck8O73GC7D3aiyl1osqN5mfBgaunhuKeBdKRaORLcfj9151UeAgvAGKC3MCIUv8SUY57jh76izNwpBFX0N11lfboDkIUyL+szmRRP03k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770132234; c=relaxed/simple;
	bh=6TEg41ARc3JY5vxtMDnHuOvJ+gCjBOObHQK0GmcmFsc=;
	h=To:Subject:From:Message-Id:Date; b=b1a0NcN168H4lZNvlxUxZDlJjGl7Fl4U+AiB8nRRsVnBNHNHKQLRizDA5zUuhOgFGDEyeXDpSBjD95Cn0RHe881j3A94F5QfJfAUXxQXM0PqBAKwmWooLHImbNdjU1fGciIOe4JHeXg0vVNl7zapO/1fbg2O+Wf5kSvxByQH8RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHmvSmMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHmvSmMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD938C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770132233;
	bh=6TEg41ARc3JY5vxtMDnHuOvJ+gCjBOObHQK0GmcmFsc=;
	h=To:Subject:From:Date:From;
	b=AHmvSmMkY1kJPTM2xKoJOLDmcqfnZ0OR/ao0JF7laP26hkTK9CSMdeIaBokbE3XH4
	 36hnB4xE9pgwbyK6aARENN1xwnCI5wq4Kyi+0Lm1xLhLb9lM31tjmBSNlPntV1ridL
	 vm5e49LYGZzfDN3AAPmEoyCJ1rOb1/VdZU2nEyMrCBZAzOkgxqMMZkIy9qzW1FUO6v
	 r8rABGL5QgaM9Lu19DwQkjS1PhcHYbjTX3GRosQuGk4cutsqObRWExmkicmDuODa/1
	 Ru7Zr1VDAGXK/dqQ/LM0fAdn+z/T9R4p3ya2egPzuPcKElYEgsih277tk1mFPg9JKT
	 +UbRDZLgtUi9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC53AE87839
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013223368.5968.12988789287134779150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c42fa7421a1cf562c89c67fb99cbff5a2df09c5057af66d587ab63f8388d5ea
Date: Tue, 03 Feb 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770132233
