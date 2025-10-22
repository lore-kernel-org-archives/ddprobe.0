Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1851B199E9D
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761114594; cv=none; b=Wkyqy/m1DVUKOS0ABkamxevokd+PxeIXEZSlYeZnWpCiAkLAC8QKYaps6looyYZHbPp0ulnHd3C/mke5owFuMkY1GXnHtayv9YRfUR6p2MZaqUtDE1T+rAa8zpj7CasTf5+sVPpO5EY0gctnisAW6xPpzo9pU8rHhvMU7iSGtFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761114594; c=relaxed/simple;
	bh=RCeaZl2A7nalLEHAAuFczPWts3Yj+KhrL5Qa4GpY7q0=;
	h=To:Subject:From:Message-Id:Date; b=u07eHQPrO9wKmxwUYZLew5n5/6a0pOhhh/3cPNkfwiHw+O3DKjO1ymuNSitsKLNGxGQUxPL6vMBk69D6AeaM/oNXxQ+jb7y/dF+zGATplalnatExMNM+JNRVmCK6Dy8D+UMLoJ6DB4HsvWb05e6kG/nU9picp0uDqRsUatjn7Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUwYAJQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUwYAJQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD198C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761114593;
	bh=RCeaZl2A7nalLEHAAuFczPWts3Yj+KhrL5Qa4GpY7q0=;
	h=To:Subject:From:Date:From;
	b=oUwYAJQdKWB1UUiWUok/rhiVpvfDy+fGa1tjBdJIlIPTAx++/n+UTSBUJRJMOvT20
	 ucpuqTc29mHYiEcpozhpTQ4V2fqoP5ZvH30dFlZ2jcl3090Dqe9e01OqSAd8tuKXeI
	 gQzLSu48mI+Zb6PJOWXFpQDce29g3AEl8lne7KxVEm6IZ9s03MAdOCJYG9pllzpEby
	 aVERqeXWxjulS1Kv+VxIxqxM9YPXcK3NRNqC34n1a8gs7OHZ3kLH40b3J+hjl9qDoY
	 woDgRJdd+zXw0cSspcEbnK9LyVNoY61pPw505fahbnW9l8ZTeLE3x0MXlRT+HMzNMP
	 oozKAXdlgkvcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91599CCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111459358.26377.17548779757309336210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4041e2dc39d82ef8895fd13c5fecf7380d4fd12b6e47c6c3d7c1409dc1b062b
Date: Wed, 22 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761114593
