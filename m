Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3DB33C1B5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763487115; cv=none; b=L9DGkf3Gd94fU7xVK29Erw4tdVNz9jdygghCgZI2PHUXZ9VyEyFKMZnXeBw0ah/TLGHl74nTDtynvGxV9qBw2vzp6jN+Zfr+kOJWak/2K/eeqtVS2eLK40240l704cP4FjOvoPicoJ4/464nvLFy8V/1IltJccZ2vnpWJKpQf6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763487115; c=relaxed/simple;
	bh=z7xO8yDY1d5kX2vgkxYy117lmehtZwIEjIX/1skT6PQ=;
	h=To:Subject:From:Message-Id:Date; b=EwQIoANbyb1Hua4p3tkeb4j/FSzmcU28qsZ1k/Eqa+ES7SHCjYm/My6IDvP4RJIwT8T5zxk+3/IIT6N9Pe59dX34QAibfBfTrFbin1ftoGma8utixaYBfNYtz2C5UFpNyofwrdqJra0pX09Ks7li7jAku4+EupFh9oB6b1NfdSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2pvLlBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2pvLlBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B0DC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763487113;
	bh=z7xO8yDY1d5kX2vgkxYy117lmehtZwIEjIX/1skT6PQ=;
	h=To:Subject:From:Date:From;
	b=T2pvLlBjyBWx9AjBIvy5DF9FBj+oll24luFj78sAJLGd466zQjprBJY0vWA68g4L1
	 kLI/mUZadV4P6NOtFdj0/wZJaY9gYehLruL/F65GZEOFnwHoONrHCOR1EqotLhyKI5
	 iiswqAhS9r61vdZ1Oc6tSp/UGxKvni/DraTZNUOsIOWsTLA1JKynj4AB8Et/xPiqC6
	 BNn72poiiEJ/HFeM7G9+MD83TAR5yyrJUiH/8UWbEls5AqFh4x0S4FuRtd8/IvjozO
	 eaH+iODqy/YHNTS6M9Wb4Xy5n+n4WG9Mtl56YsBJELB59vi1jixHoPmBbJxT+nH1Uu
	 lRrUdQyXyDPow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904ADCEE342
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348711358.13629.980640109067432167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905f154cfee3e56fb29406a2fbbe4e1f9f46a457842ea2ab05f54c40fe6abf38
Date: Tue, 18 Nov 2025 17:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763487113
