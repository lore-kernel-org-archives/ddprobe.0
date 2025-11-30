Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FC1182B7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764543774; cv=none; b=lHV6TTg06XRifjhES7YO9yLeBZwbLVahO4Mrakz0NOmbwP6j4v7Ym69q/5up7VTgdWs/ZKU99gRQzuaPARvdYH3o8aD3MgqFyiEyNGefQOom9d4/5ejGNGtYFBEglihgeqQKsKYm4HQPUv0o1Bpfm0nn5rOzUV5SqeqhP7OPUmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764543774; c=relaxed/simple;
	bh=fsiumcFKppwouYc8fND4NgVrnnTm7pwKSjbTsLxpfzs=;
	h=To:Subject:From:Message-Id:Date; b=gWnFNBEO54faZQmffa45uT9ZXjZbGwNhJo3+aG/shtj0z3Q5O35QlkzTjj6JSyMnZRgNdm77GlugtYsOoe46Y64wE1cuMvzUWcRWtueJWFvnLVauvZBY7f1LjVzfq7Q7xxu8RTr88GWv0ET2JswA0xqiizffTOC3+OdKqbOKps8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVy67kl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVy67kl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC193C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764543773;
	bh=fsiumcFKppwouYc8fND4NgVrnnTm7pwKSjbTsLxpfzs=;
	h=To:Subject:From:Date:From;
	b=qVy67kl1qepe5+1I5i1JBGonShGA+Iz/41b2mXnKiN3pFtoKUdc4rh6aHKwLcxZbt
	 f58EStl8FXiguiJewrTMkY9PQFs0DvCOR01PcLunLHT+SZtGSQHolKPHeOB4XTKRo5
	 k0yAN9m1kHG6XmB1QjdqLRY1t26F3PtC9Pwms83ogx/kV/aoUODrQ/+KFih1ho/ET4
	 QD1p95pXgMvii/pfI8tWaR6kF0CKDfPTjR/CA0HQ1dhCmTwpVvauvezBccxXDLb4HW
	 GH4CDP8UJMYnFe3070FaYJAt7KbhKycjbfwCs0NOjWDJCuCbChhHik7pmDqTTPSPsm
	 C81c3VYXhv7Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99175CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454377359.22698.3277819876166350908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab46602d78194023a502fafb394225640237a7e2ae566923a0954b5b1327189
Date: Sun, 30 Nov 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764543773
