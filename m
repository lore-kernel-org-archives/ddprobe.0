Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242D24A3C
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766722434; cv=none; b=QNgNzGYpGUrlSFGBOwTwEOcyZeVa1sl7Gc+NTkZIOHqYJwksqS5BMFLsxff1pX7DwIaN7j8o7lIAKvm7NSxx2BTyMM7uje4LC0m8+qqvmWmVwMtrh8tIfFNt5dE8y/Dol+vPv1IF2m6H/72dqoQ/9ydO8jUYuXZqiNmHmzEXXkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766722434; c=relaxed/simple;
	bh=/M7fPKNCkOZAhL7uJbkRSnY/+x5wqh6ZpPt8KcfaOg0=;
	h=To:Subject:From:Message-Id:Date; b=GPeva6ow5unhLbxy8r5Lsbe+mdvnD+QS1/Jqpb/ONUAGBlOeJIeldMteg4bYq/NwoGcnIILakh6REfrgMZNXSVyBf5HoIt5GZ1yJ03/ESNoUvPeJ5GhdEMDU7AVcNZRE/b9QinRDjF6HrqCPj8+NjdCpdKB5hYUfQDcaJma9ezU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grrpc1nw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grrpc1nw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0837C113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766722433;
	bh=/M7fPKNCkOZAhL7uJbkRSnY/+x5wqh6ZpPt8KcfaOg0=;
	h=To:Subject:From:Date:From;
	b=grrpc1nwIhloZ5gInMr1dGGxwdXRAwsOby+h9KYD0DoP7nuO0Dhu1rcwbdNBDRVS7
	 lYds9o55B+Q7R5+Tpst6uHtB+mSMR6LvpCx8thsxQwFkqjIKEdTIKutxecR2BLWEN6
	 H6qTREDgdBvlAEx3JQSfzxpzSDr2/7oBQcmWzHz7zlDsQCJT/p/NXPO/SEL7x0TzNn
	 2V/9jDJqAolJpxFO2CzXy4rjELYHhUo7I8K6WGCGyr+GbGLRuTPcHfTdAC2f1KCbgx
	 3SdlUREniVKs3a4VQtU7a4miLM2m/4sGlbeqG8iUt7EWdRxeYE+K5tdRbtHHtTdBTU
	 c84niDklBdt/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96805E6B26F
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672243359.32364.1994123045445788643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf8c5771695d927ed60163d359de12d4454e5796255d306a23e992a270d7ddb
Date: Fri, 26 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766722433
