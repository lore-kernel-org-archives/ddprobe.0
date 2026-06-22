Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C2A23370F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782107794; cv=none; b=D1Aw0rLBsXCAlGWdJCUgH4Mrig1lEdDI8Wi989wpiivXjcnngxwSmvel6VuHRABCBTDYZearerGFDYBZ+ZsZw+zKgAM7Fpa/ZQ4wif+TXxSRxmzUmw2mgGueK+bSKqYB+5V7+IGHVwHRFnPFYKKF+S1nagt5M6GYejhTV1JGapI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782107794; c=relaxed/simple;
	bh=4VswqiHaRTTsrG0bj+4026e0z/l3c6+Om65jyQLT9jk=;
	h=To:Subject:From:Message-Id:Date; b=Ni5hi/gSSqtFZN/7Tc9ingIJVXptMhm2116zrvO3QnlecTdfc/hxkiK+/o1ms1u0kpQo8PekfCQ19kGPnu4pb8DSceFJih9XbLdNuEVlTXV6uuprPDWZHZZ0TUXWmhweylOT2VbuqIrT1yR76312ShLuXuAyZcRy03edLC9qyjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaQCOJEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaQCOJEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53BCC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782107793;
	bh=4VswqiHaRTTsrG0bj+4026e0z/l3c6+Om65jyQLT9jk=;
	h=To:Subject:From:Date:From;
	b=LaQCOJEWqiKFdHKyNITm29c24dSWWUGq8Dcmbv8GRhR0hBW0a7ov4oE/q++/JoOrv
	 hnt8FNuig1V1bFQa3HcLqECMeCVujrPXUZvh7GzJ2iMklD3LK7gSbdGVXO3nQUmUpB
	 OqS3c5VWw4SfTk9RZRuVQyS/kpZQu1Y4A50KMT4+tC1W4gPI+P7J+bLux9/Qd9QDkp
	 lIFG2fTrds5iIpVJ1o9TWZ+vQjzRiSpOg9VgzAcF/WX6gef/KqI7qwFP+KdFl87xO4
	 iff2bnQxW/gMrrnQu3RVSkVmRQ8FFzWhBjMtj/JamSkgjc0VNbfN9sVSNyp6ybeuLp
	 7QI4y9TDp2ULA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0514CD98F6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210779369.14516.15849113358395277281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a8b0bbdf5852857e3633e3f0b7966932ee3c3d9f15c04d3a4c430595c799fd
Date: Mon, 22 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782107793
