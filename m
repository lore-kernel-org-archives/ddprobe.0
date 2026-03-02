Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037383ED114
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772478894; cv=none; b=GL99Tqn61+1/WwiD+M7gb8DPLTOOioKNkz5I/0wCh0xvMhkym5daca5lMJ1pLdoMYwpd5/5LfJXPiXbizdbizA1w9f/4JpUnAC49pmQQ9KKZrr29SpALGRwdwUlejne5dAgP3i9NgHmcbwFtLHk0Co5ovqrCprvGcwLEyZnD3wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772478894; c=relaxed/simple;
	bh=e5171y7fFrVETuWWDOxBiKobAx/qM6F8ofkTrEJpxm4=;
	h=To:Subject:From:Message-Id:Date; b=RIMrEn0T1FB/lMCG7JHMgbgMb0k2Rpn4NNFhSCtWKVCS/73ZmoJu0Dbap+UKTMYOk/UFMcmLZI8MACyhgWDmLPIcVCPN+2klQQubv6Jl7qX+Uc7sBnhaautWLrW9jVKTj8wKw5JVaHGp8pPMLGgnEjLTz+bVk28gj2GoPQ1RQ0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPA4Xj8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPA4Xj8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9476C2BCAF
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772478893;
	bh=e5171y7fFrVETuWWDOxBiKobAx/qM6F8ofkTrEJpxm4=;
	h=To:Subject:From:Date:From;
	b=aPA4Xj8OQ47XE2BFEWqvbcoovSEaWVR6kcVMRixwTKn3gmBcFOv2uPA0shdofMfJy
	 kCL2pRUusN/DLwSYi4JZCIUpLFi5YJx/wwo3DwqK5ro5fJgxLlwjrdRDIKdXbVFXT5
	 dzhFL1Kkee0/nbOo0/FWmTsLhxk7266WGFy7pcJ8V5757b20L5SiQVgFEgtOZROu32
	 FuTn4zcZlYB8TkbX3kq78g2IDAIWL5sLOLZX53kgLACweZbaLkoGb1NSw84zGJ0tnU
	 nRWO0xn3kHYwnVRV+lIrbbxGqoCpyJEM4dLFYBokO4rDQOBOXAsdbys27qBghUWxCJ
	 MfengrFO4lkXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6E7EB362C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247889363.28721.5259301200539690067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c557bcd12628b0c3c29c0f47d865cc1e0cacb768507dd35966d196ed6c6bbdc
Date: Mon, 02 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772478893
