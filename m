Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E751D224231
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742477994; cv=none; b=hLrIFiEFJG1UKQYJ6HMhbO81316yTM3ChdF5F+ChXx1nCJl+20a3Sng9Ob4a++6QEurbKvTEpzMx5i8L3XJ9pAZIDuD7g7tBfyGRH90gNeT6YE1r0yeCtnMnN18lJqqkaaK11mC6XMC9SL64QhWFWzFvqYb/Mg2kBM9IaXxSTO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742477994; c=relaxed/simple;
	bh=vZeQxmqaD1PeLIfNuapN2WgWn+wtvaDVAAzr27BjEEs=;
	h=To:Subject:From:Message-Id:Date; b=qBPYQhFmaCncE7uF0/JI18udBAXxQRkUzDjKs1Yl5d1dszjuPWsu212x4ZmAbL1asVBg4t9ViyVtb2ISreP8/f8YFaU3GwgdHeqfzoLB2+uDPe8qCK0mwr3XxwwmfS5lhJzlaJbR21YZG1fSWstoGPSWr4AFnV2HTcY0ljmLhUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rz+1NPBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rz+1NPBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE88C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742477993;
	bh=vZeQxmqaD1PeLIfNuapN2WgWn+wtvaDVAAzr27BjEEs=;
	h=To:Subject:From:Date:From;
	b=rz+1NPBkYyO3GAfvvnRM6PXMssVc1mkjJz3yymQA5q9hUDzOfIoI1O1c4la0p7KCG
	 2XEY2558Cp6QjItSPh+S3BV9NFR+VVRv7ELHqapnsFNZh3W+cIKSJ+Qepueg2ATiJw
	 c33wyWUhfhNJGycHWE8xpBBO0oSqkfk8FvKDEPaG8s6Ek7Ub3kdqwqmggNUEU3ydDA
	 zCDyvQDxHDR9QAKrWH/AD6J1Dyc6GAvDHpdFdtjmCBnTjXIO0BT+l4jv/Iwi8W50Jz
	 50Q51ABAj47TEn7pl+RjtwcOpeo9tUdK0+u2adttCgnbkuYW6CZuWOqRSutnUAdAjC
	 bKEZX2+h9uN+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A2EC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247799367.5641.18073795915201788873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af918274ac420a311a396327eccfd4cedbc05ec45c5dc774e81c165e83a2a692
Date: Thu, 20 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742477993
