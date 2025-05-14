Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF291A3056
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747231794; cv=none; b=f4XOG43Srr0IrTR5UxM/amoQhMSv62hD46Vzj5rc2csulBwCMpYbd2tE7QsVTdy/63dqWusYu8gujwmzVaHHs9ij8R1o8itoYyxLVBNGmoiwn53UpoLrWsuxHCtF4xONrA27W5G5hsHF1P/OuAne46IyEXXiX77ZPg0fZowbdnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747231794; c=relaxed/simple;
	bh=t/WAQ3DFUQbelUHaZY4j24cXK/gaa0BqMl71xh9NjRs=;
	h=To:Subject:From:Message-Id:Date; b=dnibTrOYC4Wb3Oz9FxSS2n2wJlDb+a9hOt80RudWsBuaNeCkn2knQ5yiJXAW/2SGKkZlpUUVGQTjzxW4Sk0WVAKBs3+lhuC7Zr5wY7ANwH41fR/oLCp864f+GSdG9PBqsTiw0IEPSkPm0LMF/C5Zot9dItEZr/dHO6mJgKnVvy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQRSIl2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQRSIl2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0B4C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747231793;
	bh=t/WAQ3DFUQbelUHaZY4j24cXK/gaa0BqMl71xh9NjRs=;
	h=To:Subject:From:Date:From;
	b=jQRSIl2/EMSI6Z08KGpapypdIk2J+7Z7ZkMhlNizXpXGQNwlFSFOlPZMqIG0F7V5G
	 OmykYxGwL4BlqDEppb3BaPvHqaoirZTBUZjB0L7i7PJgQLIu2NYNKFTwxDPhRbltRS
	 DyJJQIQQYhjRzlruloiOMTp3+r6M2zOEMHaOytzs1sEVGSx8qNN/K32OZ3W78JWjGp
	 OLl8F0LkLhNbCyCXXA0jbDtwW2l6kGgdLrRvE/Kq0+7XsQxlbnOtmefbhnTqwYINjQ
	 ouQH/FkRetF+yn264xVY7ZghxXij2P/yo3P5Xirxt1iwWeXVgiK77AlkLNRtUp5UVR
	 i6uwA5V8Jj/IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C412C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723179362.24004.774873706387949484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14fa1d8bc58d8e8a6e8083737ee946df11b5b1b9fac7636de4e410008a4423f1
Date: Wed, 14 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747231793
