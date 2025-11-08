Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3981DB67A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762623594; cv=none; b=OauiYoiZOJQ8oBIF+J5Xr6XFcL9Bq1aaHQoI4ZfunFpBS07FuJ95tniiVmVRYhh4GDMhVCNKykZLg6aMC3k1Zosvlt3gCQavgTJcTzD8lX3uXhu04GrFClurt4ewguzZdpcJxasC6KNuspUEsbm7bPVLvTd3Y02z6bS6QnolVe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762623594; c=relaxed/simple;
	bh=nNUYqQEBHkNxDlCRPEKkZ/hYHCSC+ovS+HG21ic1AH0=;
	h=To:Subject:From:Message-Id:Date; b=ixKjcH9n9dSKAbEEK1tlmMETwp33PpL8MPIlSjWEWOFHw+gT7YbjWa+bQR5JM/zt8Qeu6o4AkoXq50nfzz6MItsuVHbsT1o8K/AYsmCdP2IFHqQECYwbhllrvHOX28NPLwSr1VJy909l05SMQGxs7eCl0VLb2La+kzDYN9HnFhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sh1PXzpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sh1PXzpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AECC4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762623593;
	bh=nNUYqQEBHkNxDlCRPEKkZ/hYHCSC+ovS+HG21ic1AH0=;
	h=To:Subject:From:Date:From;
	b=sh1PXzplJy9QQGPaiS8cMmOR9ORNAlDXyj+88WOrH2WLL41Ikrg1dZW1hRbGmsBq4
	 +UWpRaya2LXaXUx6UdsKYji682KU0oR/u10Dxgsh0C087muC2sFxqVSht5/p7/vr0h
	 HGTAbZFyB5MwgjIIkul9Sk0/h9IveD1dHrlvFYLAUalJHzaj6N4A4tTDZv3DlkJ+9N
	 zYZF1V2TxDJsnQP+NiMrvM2nPuK9Q0+QviMoGwDIV33xR/0rlbtr3rYb+zYBl2rb0J
	 uFZEP73bCmCeppuWhAPzwHOcXGJUgph0kOWajjbTX2zyzB4fDx9p8e2g7vg3itaKFq
	 FbT9VUS2nt5cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A469DCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262359363.21832.353808400588604699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6312b6a099f5a261657995b49e82f4bf2bc44c1b5d70fc645c2929469e84a0e6
Date: Sat, 08 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762623593
