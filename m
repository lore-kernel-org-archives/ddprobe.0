Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377F81957FF
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740785934; cv=none; b=FKyqvKHwd44wGvjkD8ThqAI8L93bL6+uUW4+v2OMu7LM3y1PBlEr1IkKRYRgGUbkx9A2XIqem+dib+0bbE1uHLDqEqkdSQOhEulVpKDcyHnpaV9chVAkeicl7PxJU2TSzh+ogeo2FqjXPog2/bn6Fz5mTM5wEKXfAkRFGiOLlX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740785934; c=relaxed/simple;
	bh=nG21CvHAdcks5mnbYzTdgLkwlkVzB/uxlAyg1bVDR6Y=;
	h=To:Subject:From:Message-Id:Date; b=VMnYoRMU3FrqJ1Ke5jHcqeTtP3DPEwMD1Jf+dOkP4hKQzW/NMhvSHAB8kqVBH0HZNDThMkQHxSO4+WL51WNw0MsBnCTtPaetP5pUzTp4Ssxv0G8BW9FKYMOYo0mFD/6KQSqKMiVive7IcxYB/jMeCZ1kVfiIDaI3s3WvVeL/Jt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjU8652P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjU8652P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC1EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740785933;
	bh=nG21CvHAdcks5mnbYzTdgLkwlkVzB/uxlAyg1bVDR6Y=;
	h=To:Subject:From:Date:From;
	b=gjU8652P/LLMirUyrl2MIQ+cQCGSPQagI+SGsZss5xHntlYhU43tiFPQ/HsaT8sCN
	 ljb0Q1t/AXfOcOEQjMu1B6jlE7VUB3+Pt+TkgH+4w5iKcbNagSEdwskY6hTK0o6CWG
	 WmlpcX5r8MM2WmT3psGwRpZVWRIzcBzDhuCYV7HBIt90fxgFQJYdIVCPjssmhxGVgW
	 XhDHrxvi5K+gRgKn8RzdDwWgdhJUN/TyY5KxjHztptuI6O4W1Wm+qpqfrNn0wIikRj
	 qsfxAALH+undaKQGHh7XVzAt801DBwkWBhYoVmJkeNU5OJwAl8I9OfZi6xQHC/A8zJ
	 jxEf/gvb7fj5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B28BC282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174078593358.1935.5513884298205314702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529b44e3f37d84cd99a10bdcc8428aacf823826c86b1378b8c2ccca05b4a6296
Date: Fri, 28 Feb 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740785933
