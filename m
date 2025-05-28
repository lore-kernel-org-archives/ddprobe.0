Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3637B10FD
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748393994; cv=none; b=cS/9fkBkLYGzFwpDP+9GU8HRwvstLmtukqEIdFnmR5MiD4irsoqn4D6Im9K1E4yJykUg7QXq8k2N6ca5DikM7fO7OfXLSQwQtAYEhzaQo1KNHaiEys0uEoxNYxEzWvdBXjeY/zVnt5C0F1M0gUzJj+n1veMmilT6kAiH5otEnXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748393994; c=relaxed/simple;
	bh=v9YE148ndUhJgdg1hGOdPT40xDqzCUxOL8NZhkTrD6s=;
	h=To:Subject:From:Message-Id:Date; b=D4teLkfvVYi6+XssKRojIG4M+nx/zeDUE9YLEFmmZGeRuvO0NmDwUzbJpkL/QrTYwl/aBa3TYDKnH8gHnaeEfhMz+BPVvxfhyREmKVGsHljS3nBFtGQXfyyJNLMdQ7ZVP6RpL9GOTmDMkDEhLpS29gYd25aMG5+mFNihjgQ4vvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRLBlyEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRLBlyEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9183C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748393993;
	bh=v9YE148ndUhJgdg1hGOdPT40xDqzCUxOL8NZhkTrD6s=;
	h=To:Subject:From:Date:From;
	b=aRLBlyEB7iVxwdjuQ+G9bftDobnR9vRpTV8WgPtlUpKAtbakZ7AsI6YILnIKzAJlI
	 GYe3qCm7f/p2RsOgNuuODyyYsZ1mkrCEhpCnGukywqRruzoid1aBYNXNHpp3IUqC3o
	 CFlqj5EkcYYA91MacyAXrMSTCAM4y+OzHRlFX9dKIZcdCsWixf0Rc4CUqj0o1CO+L2
	 x4nwxCbWCUIxok26sGH0RsEMT3hppKfK4aqcFrSXdpmDZKdrcDcwXy5VAelMehrgJC
	 oDdggf9wKVJzGxPYvL3fwhPmTsOmHfQBTNPUsdTcbLDBhOSsQrHtZ3W7/TZvcDvCTV
	 jk3jiP0V32GmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DF7C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839399357.32277.4065539961989300120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3285885239a9f71ddedcc3b8d759ed71b1708d19f0ee9a7e2f678fe9249a9a
Date: Wed, 28 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748393993
