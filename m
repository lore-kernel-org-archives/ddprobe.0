Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534EF2931F8
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784433514; cv=none; b=J4MVSkXrvVC5BkfWOp5cvFny2GdU+mvxCnfGW8YmjjkcuTgYz3kVgpJfaEtc7jvIWXRDndwtPw3PYJqe+a/P5sxWunGxX5AWIhDMWznf102Axj3TJOlZRe8LzgcfpyfH9QEV9AmjWdHoWOl/vUEjtXG8PWG/9/pvcWCFUCpNA+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784433514; c=relaxed/simple;
	bh=Ohd7zWZ1KXjaqc2l2K1zDIxPfKWko1N+0U6McAWBr1E=;
	h=To:Subject:From:Message-Id:Date; b=KetuO6cb5imdqZnoyJinOUF+fuJfqcKoHoN3W2ubA1KxuQ442nMfqLeZH5ZHGnWROvkfVyOAzGEqvg3CzS+1q/FAdcum8w64mavGRT+8LYrmYk8A4tbtWTURuP613aixkZxJHx9eTyLBg/fsn6tkHy7i+iF0Azn4JNUeMywPta4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuWaKkPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuWaKkPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90D1C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784433513;
	bh=Ohd7zWZ1KXjaqc2l2K1zDIxPfKWko1N+0U6McAWBr1E=;
	h=To:Subject:From:Date:From;
	b=OuWaKkPY+WZ76Ex/afOoSMS26QTx00DDCv5nCaamy0PIVMvBi9TXYTSz5rhPpTzrC
	 /pHfmh0kUCCtWKZwi4xVFrHr1M9GONub/nGmtHkBesTAOhJYDQXR8negJeEwyg8a+x
	 +p9STXwDL8z9Ua7H3f+ptHuDiDIWb9JdWy+S4EMAnMOsWUjJRqgWcHx5QMy9uQzGQ1
	 rr8+0+uaAcNjqyxTWdpVRV2GslMF17CrTpmv6lCHbvURGQjmfBgAPvJND5gmsjfJJ8
	 Ts4l9xGO60wEkh8UVctYRxM5AxIgjjkxW21Ef0N6ekAea0U4rZWldeN6ZXdnm6ZLIL
	 7AGDn/Sr7JY0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2088C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443351370.2993.622486823544824378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6965ec8b3d40dfb735a5bca9de74309d59bcd4b48174ebe9ef65764b869efef5
Date: Sun, 19 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784433513
