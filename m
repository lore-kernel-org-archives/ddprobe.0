Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C36C1D79A0
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733259954; cv=none; b=HSOI/hQNiaaVmLr0b2juiAo/MvBmPu3kT9dB/UqEHmttbJ0BcchGGI9AWlIzwQjNuaLHbC4o0nf8Yf+ms673RqcHycGOxzAcT7ClleBMzM7FOJnimRPmj/tAQDr4MXgGuRQtpWhcDD3AuhyAL3e3xY5LnfYiKjVtRgv8OhxUOdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733259954; c=relaxed/simple;
	bh=OIesjcoF2vwPRjGYGDX7zUVVyMWQor+O1mSgnn6zOyI=;
	h=To:Subject:From:Message-Id:Date; b=CCXdRhy3wbJZA5nzaRX/g6p/gPt9XfNbBMWydt2ECWyqJYxOI73wZbkfPeweaWviXH8oWUSpg50jcgoPyL8PyPQxpovK0vrr5enDaHMxNa9k0VudsFvrP2sINuhhmX6XRnfEGNWGH3F9vNOTapkS+yytY/6ENXiBuJck+LCxWL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e03+tHGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e03+tHGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20F9C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733259953;
	bh=OIesjcoF2vwPRjGYGDX7zUVVyMWQor+O1mSgnn6zOyI=;
	h=To:Subject:From:Date:From;
	b=e03+tHGjPn6+7o9slsuQYVOkGGVAksaiXIAY+QpcFeifQJG/UiJ2Iqu88HOoTynAq
	 PHbb1F1Zvi8WFRmP8BBPv5GgjJNpW3uxf0wqxEIVP2jPKIPl8JMi+rGskWrVIKUYnq
	 pa4zGH94/77OYRtQvA+4CcTIqMPQSlb2BfV62ES9QaFD+Y6ODvrVI+N2d4CO3fvZLZ
	 629518YCRluIURLOQc9vVXy2r9ZhqaSdWqfZLcbkxJv+utqlXfMSaY1fRomPrvRuyB
	 T6wvvntGsCdmHnIFJV2crpiSmvqNmCLIvl+NQgpGZoC4heZpHFgaA9biOQTLZ8FU6F
	 cFopfqKD2bFrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAE4E74AD8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173325995362.6219.3619119743010366409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2a43966246789ec3b5c96b0027679861f907110ed07f13c67af7e07092993a
Date: Tue, 03 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733259953
