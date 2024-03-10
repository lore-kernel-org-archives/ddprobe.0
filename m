Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DC5846D
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710065297; cv=none; b=hvNIa9jvu4ecvN8byg6nl21Zavo4CkgdBeVqjz5h4hJlRE8j+lKkLU8u/TVhXgTv8Lpo2ZZwFRdxdJj4tp2u2Jck+T2rtspYia6G4o5RHi2dGz/VJ49ssqwe0ygWHizCBjp955FV3O9JH/2ocTsy5MVWG9vJtUTmlT8MBG7yfb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710065297; c=relaxed/simple;
	bh=ANAQfKZglVNiOBkgg+0gMb8oSYrvi7+Ju1SdmgRamHA=;
	h=To:Subject:From:Message-Id:Date; b=tWXYAcSzSmuTiyjEdDpaQphTQ28/uu7JX5WSu1YCq+mNQvmyiQ9SsUDhKSiHnTyJOubo0gF3cYDLYsi4ehQxyhVlnnGYlYdzQ3wCyYiQ/bZlH1+dg6dBjIKEbnwKgD+/6tTW9BBVCK3KSX02eArS7OCiokQfiD8KBzDZfiw6pNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWwTG34d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWwTG34d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAAAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710065296;
	bh=ANAQfKZglVNiOBkgg+0gMb8oSYrvi7+Ju1SdmgRamHA=;
	h=To:Subject:From:Date:From;
	b=WWwTG34dW0wBbWQDVq2TrSgNQx0k/EQi1JBTCzt4W1UOOkEqpf4gEGFW+um8rwApS
	 BWl/Ks/7bMStx2LpuNEJwGT8ITqYqUoCeeU2Smf3Ky/4SqQLhXwE6B+dChhR6lAqzg
	 qJ8p71bXDnxdyxw0dC1p9RDNWX/TfH5qX6SKZMCNhedM4VhrBNaFX+Nz+UkkbeoSrt
	 H8ZZnCrRjlzh3ILuMhr0GJRdGxrke8d7pCybTKC7MMUKxzcEGUdFalhABpZSb8Yqz7
	 9Sg407it41MeFSq+BYsa9eNRCgkEMfPcbK1D4slsSrMRck/mGfgTl/Wak29Rn48Yu+
	 5T751LZteW7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62985C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171006529637.13765.1728437167431047461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f990aa6cea52337b434b30064373fcc2daeeea966f88fc9539698944775d9f4
Date: Sun, 10 Mar 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710065296
