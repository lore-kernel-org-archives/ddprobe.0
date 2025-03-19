Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9C0145355
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742363994; cv=none; b=Vg7L/BJ5SSoUSRsq/2cG/QUPZHum18OS7Xe/2/j2sgcRoLdW2p2U5X+FffA+AXLSogrTXzG4szG5jwBisTV5P6N1rvpKjsoMbkgfM8Zm6RBISk9z7xyeGOgNue+YSlrhpHg0QLHW/C9kXqwT5WaX0Tn/DrisyuHgmuQGretFTfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742363994; c=relaxed/simple;
	bh=DOVTwQ3vxROkl9bVidtYHdPGOC084nxxR2hn4kTeNr0=;
	h=To:Subject:From:Message-Id:Date; b=BhaPyKqlOD5Paq/Jq9pVnon4lgBmG+TCAx3tw9OnbdXJG9H7yWaT+3kgfVqRbl5rgh9mOxsT4henLRJrefxf5RPjaptNIfHEaG3cgGDcYym2J/+OMzd36BiXGKYUVLHOluxWhkvZbcV62FXSjWT+5U0rHAam/vPb520DCkH60LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGEkiFju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGEkiFju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA37AC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742363993;
	bh=DOVTwQ3vxROkl9bVidtYHdPGOC084nxxR2hn4kTeNr0=;
	h=To:Subject:From:Date:From;
	b=sGEkiFju3wACErWcg49UuGFyjKw/Zgtyc/opoFKj4deNfAAWIBk7zOAXR0IHYUMN1
	 uz/2X5qVapB8WNvb2RY8u/I4EKg1F8iHRxQR2SB/i2jClIyji0sL5Kp4OCnSs8xGHv
	 OVfgeoD8RkOc+jzdGshs2zw2g/SnOOxiQxFrRprTWuVvcvknBKJTZruImfftJ69Ulb
	 /k2ScG9LPm1HjJCsXIaTbSzB7N3v8LglJ2YzI1pqzw7xKtnOLAaC+vL3HWXf3K7NBs
	 tmisuDDycdfqZdvJqXV5k03u8RPv2ALCi7f7HwxuZTLMFmvCvNLoFpOwV0QTjKjyV/
	 7LI/hbEJjDGLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9837EC35FF1
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174236399358.4844.16085859473611603739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf62832286fae854ff5452b8675b25ce40d5ba909868427abc7fe9b31b1ab95c
Date: Wed, 19 Mar 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742363993
