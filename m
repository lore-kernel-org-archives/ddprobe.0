Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ED43E0724
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791490234; cv=none; b=snlPDcAhvEiTyZKUiMrZ7cgajtd1febJInwRIr9uawYk+Ny1PJXULN5RsBk5E8/Oq4CO6W18Kp7pyqeWXLBeSd0+5rVCKQkE9wAqGhWQeknS7GEcCJBPII1uaY2bmMuRYB+uzhNRNwn2Jx/2pODr6uSPalsOjZoJnceJf//4V1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791490234; c=relaxed/simple;
	bh=gVqZosCwUzspdTfj1mOOsOEsUVKGUdmyorh/DnQEAN4=;
	h=To:Subject:From:Message-Id:Date; b=rubR/fUToDHqqrzyJeRiJNPu20EiKmERKnsr45C7fLzCx9laRpJFYj+agI7wSOkSjoP0heF2/7Ui8k4jxuuKgix3p3jTtlU7IzwwBcjmD8Az5T+nSS1R1zRh4NNdb+N3wzp3wnjLe+jDrH76nAHXIsQnuCFqw1uJfAyHo+bqWNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiNtv8NY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiNtv8NY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0CAC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791490233;
	bh=gVqZosCwUzspdTfj1mOOsOEsUVKGUdmyorh/DnQEAN4=;
	h=To:Subject:From:Date:From;
	b=NiNtv8NYmisU8CAzA8gJ9NhSFgfF6hngu4URN/jkD/4nw3YFpMir3vU4Ct52L+I5G
	 JsuS1voPgSZ8y9j8ZlhFue5xxxXUPAL9gakF5nV9U8yfx11ocgM5agUB5Nhtf0PVRf
	 E7Fs8TyRFRUw8E6dmO47gbcjXFHuAc6Hx2SLp9WZNSq/uGEhVv5q3g3K8YP3SFRQ6T
	 rrFjg2GND4QkhY1UaKaTTik9swcafgfPX1vcpWSzEZ8cp70r96nknMPhAtVC2Onv61
	 trU2qhP5UedwT2jrqa8j+BtiBZRr09XgJCaIVkacGVNWQd0TcVCVr3QA9jxrF3ey/m
	 ZYpUv0QjrY1vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0D0CA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149023368.30513.143654867032748345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: defef25c4978c3f70a8956d592460c8aa22bfb8bcf73c64ff7677f2b33e94d77
Date: Thu, 08 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791490233
