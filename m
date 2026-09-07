Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A4520E023
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788759034; cv=none; b=EjO8SLxyefULX2R15lYR2kODGZwpav+3/D216I+Hpw7aIrvG+x6VTa+ObVLhs3iCUTIArvqLE3mjtn2mcUIT+TImUqDY8bBq66jFUctqgXHQ7phHq3Kllg8siZmpVeb9sM5awpuF8OIoSIwveha4s/IczKx1xd5RtCMSarL6IqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788759034; c=relaxed/simple;
	bh=1oIrwHVARJbxEMYxGoCOAmrI4FKOzEu0d8wD3Wn5dX4=;
	h=To:Subject:From:Message-Id:Date; b=NjfyytHP3oHRx8Ld8eG6WGy2v9vKWZzzwm5zes3xCtRpiFUlKA2zLWL1bJd0YXSOfbV84xeV0bkHrNAyff8pRWH+jk1npg9cY5m8aD4s656YmU0rA2BSyUuw31Jn4yNauLeVUfEW2zRp03UeH/R1u0SST+7TW23mYyMZ8lJ0Owg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRUfcP2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRUfcP2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99DEC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788759033;
	bh=1oIrwHVARJbxEMYxGoCOAmrI4FKOzEu0d8wD3Wn5dX4=;
	h=To:Subject:From:Date:From;
	b=YRUfcP2GiAa3wLi2MAlejr9coMTGh4e91znnodAqcThdvImWL7xbj98zrtbcs+X2p
	 hqaXI4JpW6OB0BQnCrsZh7kq7NAI4IgfYWTASuc9pN7ggyUt/NXf/YIchXBuVCc9aK
	 DIDRBOwB+vc2qxiXY/7bH2YW2dvxHZbCThVixjFfhpvnCzzzeudUy5JUKz9W8jzwWb
	 UwUelr37uuESIXjqHWN5kdoTRndGtuWH6r8pN4+In1KLAitMZuF6N0cdsSgwsK4K63
	 MpJvVA48bqoV6pd7ex/sHxYGQFMvsLYZYSlLax6gE+efOrMoraxau3xqLTQoHWXKaQ
	 z6lpl3bBXEkrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC195C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875903369.6978.17492794321020810718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f12ac0f4c1abdea9a01a6b72e0510370373fb0845e21ebb07aac4e042bbe20
Date: Mon, 07 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788759033
