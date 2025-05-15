Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD7928DB65
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747351794; cv=none; b=EbfBRiEmVrb9rV0GB8MZ+I2VLH5U2x0MDrC5gZHW7Q+d4yWPqK3s+FZzivedqZ1vrWDCnwbVgLcbvKTn8PLo6803FhKLDo1+se0yhjTwZpkHW+8LVRq7GQihBDLobEvsnhTXw1zsYduFvRn2wm0NjH9TzfD5E9xirXheLoVEaG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747351794; c=relaxed/simple;
	bh=ZxxKCPdWhrNE9zcEralpb/fMAZNyB4rb6J6Vd/6U56U=;
	h=To:Subject:From:Message-Id:Date; b=HTml5NIziWe6ucu0u86zcNOqO3UTzmrHxbsF/phuxVYoeK+X1Bn+HLLiTzTL4pDBlsXstSh3j5GKSHa0yeOPev0Vaiq+UUXTgOGwOBJ9UppzHn+c5ZTL51d7SawtuiIrkV5Mj7Im/9vW+wQa65nqjaeo8i4UQ097+iiTHmlW6A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJBm+y45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJBm+y45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B05C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747351793;
	bh=ZxxKCPdWhrNE9zcEralpb/fMAZNyB4rb6J6Vd/6U56U=;
	h=To:Subject:From:Date:From;
	b=dJBm+y45eU6hLSNePPOH3s1Mr35pP7BQ9mI5N8PRlYGtXaA+WW/AWsrD3DJ+fSbzS
	 7GgD4haqoceZTOG6k5T8ry4XMbjE4Rt8v6n6X095KHG7Z99HSHh5RdEFugcPp8b2Vo
	 VY8QqLp9Yiy+ClaMdZirHnc3ue8tk9nm+2IlwDbJJfvbz3YwniGGuYRikoF9s3ObVB
	 U4XaP4FK1aZiNinbzZriIo62002Xfo+nCuVDDU2q5WwPc6IHvt1uIu2wDR/yOT8DVq
	 XrumhPp+SaTxBZHdoTuJPuYs5VkyaRdK2q9p5cjg3/mUjQNmakA4mUHxonoresfTI6
	 x2POQgio3ky/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D64C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735179358.30153.12644085557351652874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98684641507a02c8040e0bc613a8b07ddd62cb6f4882bc094de0c001a977650d
Date: Thu, 15 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747351793
