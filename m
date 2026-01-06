Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C602857C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767674634; cv=none; b=t9DwN1/W/PsXVGNWM9dZL9NWWaQEF3woCRRS+NJgzewGQxCY9aH08xrHp+ZFKmd0WZiH9TWCBBMPexQdQ3OSOFRRc2c58Qk9hNkMgo2DAkr1YHT5jJC4U/wcEW0b+IGWNNaZ0BFkLrKeaRts0Sz1qdaUn/y+tKriD+wmiipDa8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767674634; c=relaxed/simple;
	bh=0TeIsL99KBvwmkF443HbzK85MH854fdHkaorvPVjCwA=;
	h=To:Subject:From:Message-Id:Date; b=YdWK9B8IWcROKfHd/0Ic0NHEpiAyD7xqIfDERsuJFKuzSeNXUrM0WBikhI2+YwSOsKfUSnxGnfxGpw2Lem1k2xo9mWaKnI7sR7h7BhFFXW7otDyKNJUPqDa2ir0zXaK2u4T1xM54KNRFtD3ipKOwlCwLSvkqmTYWZo5rKPpwgJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cr4zHvFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cr4zHvFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2481C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767674633;
	bh=0TeIsL99KBvwmkF443HbzK85MH854fdHkaorvPVjCwA=;
	h=To:Subject:From:Date:From;
	b=cr4zHvFdIxT5+RYIbS9o9qamerAtB8JK4T37EvMiHk+7qvqYDlTpEd0cXb+MzHh/s
	 kl1StZO60p4sxhC+WN4Tv270w77ScvwUgn0+paYDqFBIYg1JkPwgpZUIXykYid8jm0
	 loCT8rlhVWZ30SiRADj8IG0FhY+bG3wkXX9C0ekhdrw+8fVVtJFDDr/5V1i7qomfru
	 //seYh5/yFaVw+W4+wv++HhhXuKOAIaEzs/MoywrOWc7k56Ozb7+Uxfins/9VLB0h6
	 i/STT6XrVGMIkKj+QRrbtsbRWVpvrz+e0t+o0M6TvdtC4JKW8ukUaOjAYqsN79NGhX
	 vFN23r30DdpYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A6CD0438
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767463357.28566.7159891809221067157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfaaf9621981e3f33a1bd862913c8e6d7bf1a87f3fbe11acf0f413fbca33ada
Date: Tue, 06 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767674633
