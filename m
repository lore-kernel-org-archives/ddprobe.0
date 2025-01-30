Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A24718F2DD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738230354; cv=none; b=psvyYD0xdAYsaKTdtKg+0ucapl6EspxbKniIg+nqjUiIU0o5vuz6BGH91t0C0w1cSjQCO5AFlOO/pawRS4NKU0nDid+biic20Pf5Z1G8fiUBLA44YtbDiV5XL8J0md4mJkwdCqI1XxsUaHz33zwUWx7c1ylNOD/UXpFLRgLSGeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738230354; c=relaxed/simple;
	bh=cWgV/evvkspqltE8Yr6tyMTJAMhxvMCovbpS/0JVzzI=;
	h=To:Subject:From:Message-Id:Date; b=d6hnwtkED/ZqSLh49dhxLkbhyTo+WZcMnXfbQ4qY2tJlr57NSETsPNEICms3/SSeQ1O4nznVnlHpl9+YifykJQXGPSQUaETqJtXDJ9nzDbFLJNb/9usnzCgPBcYlpG4OZRZA9GyE+YkUFtq0UKwssjBTA/WpBPrqREKR1/yrPCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7thPMoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7thPMoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13C9C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738230353;
	bh=cWgV/evvkspqltE8Yr6tyMTJAMhxvMCovbpS/0JVzzI=;
	h=To:Subject:From:Date:From;
	b=g7thPMoDO6NtKGunOlPH697mrngEdqvuSHX8VLUaxPJxCZVVot4mmNaj3Ql5k5fN5
	 q1KrYeMQZtA0z6iEjdaN7kkoKp7DrmjdjW0rdSXOwhmsc8DLTSB4ve6ymXFK13rqT2
	 n4Qa9eYp3cUsTD0PWhk0lPuxWiJi5w5B4/c2Zp6pmv9C35mwmJy/TB9bwAHAecPjzy
	 8jqQqzBVZhc1ZWmsoMPTQoqBwWAq5518CfZA9lnNhUlALGCo7Ylxq+Ykn+UiZ9fpFr
	 Bq2vuWXroDpP4UUE+BA6fr1nX2qKsHd4pW8yn+Z5MoGCpQBtqZN/bis2Mqbf6gDMLC
	 fbppi+g7nxjYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988F5C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173823035360.15050.12363348382647152813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67643bc12102de46c565f2d5074ed005295847526a719fcef1d06d2557f4b40
Date: Thu, 30 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738230353
