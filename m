Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205BD34BA2E
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758262794; cv=none; b=o6YYA0gFRJVOInMVOoJMFmWb6U7bmrLtJl2DZ5ZDx34JmCJwBElCAPZ8fz56HeOFZBmpJ5yhUZDFXs4qixlrv07298BWSjHQyKPbmE5ZjGKmUpkU22b+mMW9z2hJXfVzxwj7bE2tEkG5Aiqv50McOpEvwDMpXk58gjLEzo2MbuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758262794; c=relaxed/simple;
	bh=i6qTHkFydygnTU0FUlqJeA2wPvrNoQ3fRK8hsaUE31I=;
	h=To:Subject:From:Message-Id:Date; b=Vz0Hxm1E9aOpqYc9O3qP4rF2tKZD74c1DKRn0nsbtfNEG+Fu2HkdmQcFNuc7iAMgcSxs00tVsrkVwfM29ErSAo82yXGohelTKFON68LTnC0FOu9+lbSFpoqj7BM7I0jIIxp9L+tffdY5rlSdjp/e2p/yFltKR7gtAt3pRFpR/TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peDndxfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peDndxfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB1BC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758262793;
	bh=i6qTHkFydygnTU0FUlqJeA2wPvrNoQ3fRK8hsaUE31I=;
	h=To:Subject:From:Date:From;
	b=peDndxfG/L6JZpEMXb3ra32C8E7j3ZtOq8GF82dFM504G1XBfSNybHZBaah1bXimO
	 9HK58DblvqU2tDFGPIW5fVGqlT3l5GF/2ArpYHGOTyH76TJMBcikKMyuCAT1U1ZTXH
	 R6ewHGXfTbPYOnGQilNNoNKuy93RdzHBZrr9xn2KCStMfQe0OtDpr0szo4YpB2HWX4
	 W82+LyEV+B5t0+Bip/UbGgeKKcm8CDF3xdZ6HkwRa6Gu5RtS2OhkBtxlbR5z8v+piv
	 5imLKXqM1y4SKZYeE07CgvoQWKhUgybP/QxxTQppl8hA5xzAenV9KXSZaLyqXqqvGA
	 4kHhdOV8rLBEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C18ACAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826279360.19234.9207703511520596742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb6604f4c5929e32f5f7a677b39e3edab1dbe30f44878f062663ef70773d529
Date: Fri, 19 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758262793
