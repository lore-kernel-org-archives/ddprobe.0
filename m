Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2724722068F
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767592434; cv=none; b=iUA0NAZl7H/dMcbca4IM+MKfXByFm0FcHR+tm4EY+LixVgul0yUswUcsV4VQ4zdW861blg2qQlezXEmI3GXopYLL5k7+xJk1xNNWcl1ndtZR4YZDKpm/0//h1pDKK4zZme7DfltcAb7ulkLNGvr0Z7E94vcRwtYzVVx9g+3qeWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767592434; c=relaxed/simple;
	bh=v4xU7UfbQUtc2S2CSKOQbJemwDZ5PaNCanvypsTPQf0=;
	h=To:Subject:From:Message-Id:Date; b=GhktR2v0sZeNVlRCAkrsOmJxAHMfL7lsNW8t0tVaS7M7RJeO67qmkvUnLLAkXJBrQacIxR9fEsGHR7Erc9+RfoCV+wAHjh0ypjqYZc4HGnxHLKf+NFZxliLKHepBTUhZv6BQC2ZruLYuQtkKpptLxbCBdTS2If3qx7ZuhJwoU2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTqVY0PN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTqVY0PN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46AEC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767592433;
	bh=v4xU7UfbQUtc2S2CSKOQbJemwDZ5PaNCanvypsTPQf0=;
	h=To:Subject:From:Date:From;
	b=JTqVY0PN5sAMSyTfmC7b1iRw0Z4owxXbdQcnOhwLK7SGS0V34ny/KU38UhvyDkOJo
	 pbjNaA9H21q6ijfTNU7xMEwt8w2+ksq0A2gECqwCXD7h6KSo4XmDQ45CU2vt00MQeX
	 MmTeWornXIGJOoyXVOfj1xsBiZygsi/whBUVXA3MeAKtdKoebnvhB7c3CcEiPwYudM
	 lH7VKZ3Y8vHXAUI0JQeD9vI828hS7Wd2EoKLSTggHkLVk8RWX0ijarG20cJRn7yEqS
	 gJSyd8Z4NmtLUI+KTWixvp4jpwXdQU/R9BhzPsLJMK1mRVsH7mNw2Z+zithWg4Azfw
	 p8/keUdFNShHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD3C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759243357.1990.7989955641435339827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9f9885e5df0282cc6a50edd5fc9c8134c37587419dd7d29a6d17eee12025ea
Date: Mon, 05 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767592433
