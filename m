Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A56194A44
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746437994; cv=none; b=ppOp8JkGiY2tmWWzDnVCLXWDPs+YskRm+N5XzOocXjeQbsrbo7WTI2CbT+W4cHlozLOVbOXr9V1qnmMuDf5UnT33hYtGm//5k5OXLS6wPK7mkL7Hc/NwGgoNaIBOBY8//rCEqyotjtSd9CkPucv2FBlIz2382s14nJQ9OHNa+OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746437994; c=relaxed/simple;
	bh=VcQDG/m9Sl2IM7WHMtGhq31YsIrBF53cNn1zn+H9D3s=;
	h=To:Subject:From:Message-Id:Date; b=e31B2D92B1+lj+/IfQOQq4BIZeLjZrbhqvMwbpGFcgo2InC64Ve97a5JNdWjlBLz53cOlm6lIjQaSps4OjqKLiVabUBMDnwUTtW5YJiEQN1xDg+P9erw0iD+apLNMjc9CwzH2/H4pSPbhm9L3a1otBQkAaL3iMFstilpPwwYGNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqbQnGmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqbQnGmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE9C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746437993;
	bh=VcQDG/m9Sl2IM7WHMtGhq31YsIrBF53cNn1zn+H9D3s=;
	h=To:Subject:From:Date:From;
	b=sqbQnGmL+WnCS+tltA1olNjDZgeOtupChIHOcktE6KOzNFlQIbv7A0FTXvTLMHD3Q
	 O74dmyFW8kSaL+dAO/H1WpZwyl3UrAanLbifeTjafAeh+URIU55R+KpYIB0QELLt3l
	 KdUiUaTrC8Cf0gd6kG2u/wz6xD4wWSEeNd+MISF2Q2K364qm7GO9MZcfM726xuDKw0
	 2Aka5RmkVHUdMYbx9OgNw+if3s0mSJEdjmc2GBTBXuIRCu1c+J/N6CNKiB6t1rRiwk
	 CMqKCMkWWEbsxcAMfjV+MNBNqEImFF0GPCY9e8KXBmRCFrZX0U+0cxYvBARCy60bU8
	 H97H6v5raDVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DEC3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643799358.27396.16452132080590928789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453fe551e7e27f31b1e1071f93ec5812a3260bd4114f4edc1fd2a2d5dbfd4905
Date: Mon, 05 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746437993
