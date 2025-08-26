Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB312BDC01
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756195794; cv=none; b=ZWn5xkcpf1kbzeQs/LXWII1bsxxVmTPhMf0TBTB47n4XrwVyusI+48SizkbyEKI4C8Mx1zamasPrX7+fYx9bglkX9OECd9F+uGQDIJHd0RH16phe1+5XcNEMqoawgo5shlJ7k0o4oNB7p4WYUt0T74ZPLdAyksbF78oO0dXm2nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756195794; c=relaxed/simple;
	bh=Q567z+d7bvNUzBsV0OxWVyKFANBMboSEUQAYOtgYKcs=;
	h=To:Subject:From:Message-Id:Date; b=LUxVno0AupW/FV1shiVI3RZ69iQs53swm2KAELUfGXu9bt0sg0gjle1bpq3MW9ByZImote8asWOR8deauYLolX3jMs18Sw+q8emDtftBWCBVu4ZpkkFHtBDWriGv/bK7it7Q2d49YErWoIDYQTEbkHV6ZWsqBwjs1m7dK4kTJ/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqajsL3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqajsL3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756195793;
	bh=Q567z+d7bvNUzBsV0OxWVyKFANBMboSEUQAYOtgYKcs=;
	h=To:Subject:From:Date:From;
	b=eqajsL3ceCyYMgdVAGSsqF0hk7XOcNXGrEz0rrqdihQ+EqiCHQdpxCRQ3lPr7IH2+
	 l6uJ7h5zIiyTyXhiL95jCe/LIpXsgIm0pigRb4tXx4ugIxG0QJiyCs+qmN6fbpu0vu
	 5Hy6qGvBjbZbT7DAMJpieU3rUI64mbqaZ+qIgOlDkqA5WazRtVgZ23qKpRIQDZGLC6
	 RSA6ZollfcrqRbm7w54B1ikPhG5GdIn1Rfx/Dy3MDS5BaVy6QwQrfMXL9Kk1QOWoL0
	 +DvTnljgvkt35l+ShLQcY6TmeSdRwjrq+jcBAh6ZuhfDusaoGvT26Wc+DF9wIa90YZ
	 eww4yb5BF6dmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6FCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619579357.25720.8845683514037494892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e20005d381bab90f39246ab8f1f918a56f0137f495b690ac3268e85980d1fc
Date: Tue, 26 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756195793
