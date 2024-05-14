Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65626181B82
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715718143; cv=none; b=ro6dDOMhLE1xEhrIHDfAv8+x8PF3aXYqWGtCSk5BcplYo1ARRkW3Jz6sUIX66Sd7/X49Mg1E74pXQRwb5VOyjpZ5gMOiLHtIodZiRtM7C3JXDdzEt/rNUeA0pzJ1BXjD5kjY2NvQfumAuZTUYfiOsdfqrEjKGRVJa5VGAXZp9W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715718143; c=relaxed/simple;
	bh=3SNpgBL921JbgHOfWYPMYHi3z2A4/wwA/LERRS/SREA=;
	h=To:Subject:From:Message-Id:Date; b=RUTm5bdMkp1mJuMK1yT0LBzOAQnIVJVmRu5dfKfEKaEVEjobJTwEhOarW0nYuPJkepzf7/gqa+Ld7354JyMhCTQ5DVLBWtOuN0DMmGPiyTSZH8Qw7et6LlfIARMPFPcxqE45PYlVIeJvgn+Ncxf6duPDcCQq0k3cw3ORVUCpej8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbPs4+gr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbPs4+gr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDE52C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715718143;
	bh=3SNpgBL921JbgHOfWYPMYHi3z2A4/wwA/LERRS/SREA=;
	h=To:Subject:From:Date:From;
	b=bbPs4+grT/k+7orZi+/uvz3cccdVD+WDnSo36SWmRYN/YsWLqoRHS/abiCXgthkgl
	 XZtAV+EsZuzeMARdQK18PfqpjeMXXAhXyYtcU2evi0J1feo4l8pFqvK6ERa9ctZ6Fn
	 oSQ3lGveT0bbeH2IGIh0QU/95M/LhqGXVIrvKu0PvUrwZEoMe5PKeXks+DrJfwx0h8
	 D3jE6agQbk1x66hPS+8dZmtl+QC9Hb17Ujxu79p4umoIBGIDxQFVxCGq7ASEU2Cet1
	 CdqVc42GVyzoxJdgU/0CxhV2heYLkaCUZLBUujmAEcX3MZobKn3ots4znGInTyfYAO
	 BquHnz0/TevLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3602C25B79
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171571814285.3569.4729130196014793036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6a36e9df06659a21145632963c81a0276ae2dcb65664a0d60e032bc856dbf5
Date: Tue, 14 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715718142
