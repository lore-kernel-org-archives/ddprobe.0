Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9E2125C1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719854123; cv=none; b=YcmQKuD5bmgw7CFew++eYN5ZPeZnjtICh7d2KhiXzWLp9DHXvLZnhnR8pQllJHRsL77fPGBGnAzU9X/BKF+vCgYKq9aF1/7Oed9qGSGVR8yFzyMJNpq6xJzXoc7hzRyIxPGjV2U+syuYEN3RADYOpUoLiPkIsg6AMDAWiBVthdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719854123; c=relaxed/simple;
	bh=Po0Fl6lOcNWzeETxJBQsDGQFic49fUu2r+/6oqtrkgg=;
	h=To:Subject:From:Message-Id:Date; b=rWGuk7L20O3ivhLmhPP0hgv7xhwp92GX6mLzz6zcKQ6UjkuSXyvv19VbQCoxKyV4qJgTL9LeZ4a3sEfeCBw0cHK8UFQs9z6ekYQC4nDjJLkPDIJEPa+JulJFml18r3LrDrEhgqgN/1SYhdc7Qr213vTeP7iLJN2jFBAznmUAfRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ST9aQ96A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ST9aQ96A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E15CEC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719854122;
	bh=Po0Fl6lOcNWzeETxJBQsDGQFic49fUu2r+/6oqtrkgg=;
	h=To:Subject:From:Date:From;
	b=ST9aQ96A90JKrx/KiKYUHqYFwMjXr5TkmadKer7zu0DzIUFLhy28a9WSC4qzWMlMD
	 Xt/2Cmk4OI8cX/zlFY7uQI5MjR9M54a7/JNPnQhOuCePhQ1SbgtvHd3ZTiII1oyTij
	 bm7PN00Ldq5EGiNAXM6HRKJI/jskz/iXnRsQtyus1dR4zTsCx2g5v4q7lR1xXmCLGa
	 /12JMC0Jiszw6fwhIL4VWSHaAj8ciWPH1rhdBUMrIbKjkKF9ftA/nZG9gdAgQrgzW5
	 fZSljrnbdiuIiky2Bvc0kIBFF/3HWHSRieDDMNgs8duqzplVdvr3gSL8o1mKoKMTHp
	 lHtZ36alZnwbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0B8C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985412283.32652.11140985043181074055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac310d8a31cc2f9b8bfa4d37a6cc24bd4d94f8d7c737bb3d56244a891a4999fc
Date: Mon, 01 Jul 2024 17:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719854122
