Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224CE1FF61E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763745714; cv=none; b=IdJNREmu6M0EJW40CLL6EIYHwPsTQkzYbXNbXMTWldiwkFFG3MCObqNOMRYD+MBd/zyNjI+qQMVq6n1rLPvOOoaY8XOrwdISDfUfFkk9L6oJJylyGHsSjO8xiJ9PpdIwqoIfiRYPq38PCs0000I6lORTIJTrPycWomZLd1/x4Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763745714; c=relaxed/simple;
	bh=9ahlHQTOpPO3LcUl2DLUmjfZ8XS8+sN0uAlMxupZzyI=;
	h=To:Subject:From:Message-Id:Date; b=bhglwQAOFG7aPsNtgv8qelvdyJgEd0XB8YxthmTrS9siTRGEesQ0cu+yMryXoZlOfz+EfKpjsx1brKIKaaJNhEeSaDYMGTcjDtyrEHnjiCncjXe5HFxmoIIoIgUeLtrqXJ1tG6Q7fACAYZ7sWz+tJqmFhrKSCyJRGubPtw6RhW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaKL6GGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaKL6GGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A78C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763745713;
	bh=9ahlHQTOpPO3LcUl2DLUmjfZ8XS8+sN0uAlMxupZzyI=;
	h=To:Subject:From:Date:From;
	b=AaKL6GGhjrdHkMPYXuWLNIJRzpwcQbcP45OHGTHcSACrWXXbJuV+wsme5/Uc06VAS
	 G5a0Jn2xGFMFnMuON3xGxFel+GxGEEaAQZT2tjxuvDv+y1y2obvRCYszHcyEAbvnBg
	 JFSK7tu1L47xceYWVv1AUF39Xk8R8KeBzs6nlkUi4LGUlm05hNMWzfOthaGRhRdajw
	 xagS5PogYwm2f/L+3STh8ph2S6Q1DxohmA9z35ljRF+D6R129CKZ5NTPnPt9KyrKHz
	 boRlWsQ8w573r41DOtE+eqIeqrDerVmOjE4jYATUka+w0RMblOlpDYHTJvDX5Afj0n
	 CA/LF5TpH20BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92593CFC297
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374571359.21778.7456916783218707838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e654d04fdbd34500ec8a79b30fba9cf02dc85d210100b541aa942fe3def2cb9f
Date: Fri, 21 Nov 2025 17:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763745713
