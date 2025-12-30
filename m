Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FF41DF25F
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767062033; cv=none; b=cZvzjp1CyXyzl+sshYwI6OA+ooOiWPLoadMt9xpvk7NIJjEs4Ke9Ypw8ykFVVxfPjzLMmausPiID1nMUsJ+d9CmVAt063ypfpbp13dJgdtXjhmYibX1wnEcQTnHP2M1EQC/Imu/LeD9auuODIsDF2ryViuEregxD+HFu+KYq964=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767062033; c=relaxed/simple;
	bh=cvtjxisXKZHPzI1A56rKr0lp6OPyGbNe9F1CPPFP9mI=;
	h=To:Subject:From:Message-Id:Date; b=I3UENu26LuzQxry1EKegf62lbrk3Jp3F2HDYiq7yogmRr4nZ8kTfriOdc61G7Sw/ifCYsMwuOYsaq9kJFEAh5Ps7ViDlWciawMMJiu2lHmvdtXhX8RgQ7XcCxbODyTZXxdc+fvY5YTCUeKCMxuzsjeX2rsgEOc9iMBEc+acNSJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkIOtQGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkIOtQGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F78C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767062033;
	bh=cvtjxisXKZHPzI1A56rKr0lp6OPyGbNe9F1CPPFP9mI=;
	h=To:Subject:From:Date:From;
	b=EkIOtQGoXxreEVrM1VopScoMa+d/LNjU13j54fh1yVh7tFmcvRMF/cRwxgRTdqrsx
	 D+WBWBOZ8fUQ76mGeIVkF+rcUFRxUu19GgqLZtzE8vHppgFOPyv1KrSqauHoJBpb9O
	 9dvA0B3B4cg4pMEL/jLEEivbkwfGYP1tIMIW0Co8tpdQdQWVOmABSNd3qAxA9mraUv
	 K+qdylfpSimqMfw234RPTWXjQnLzov6iEQ3JTTNY+YVxYmH8yKl3JAlzVGkk7QY4Gl
	 Lb89OT4KRrE2mtOmcKr4GEmJJC3jL7lTOx+l2fVx+kymtkmNkAXuhDR+TEaLEJf3vs
	 3Us8AmeuTUePQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94438E92FD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706203357.17858.9804024606745029493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ba5e6a009801d379b965495e32cd72417fc97889835930b623b96835ea8808
Date: Tue, 30 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767062033
