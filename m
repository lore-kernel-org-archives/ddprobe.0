Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A941DF258
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763027394; cv=none; b=d7x2lib1kCyfg+wNo9K9//Ac/CZd3xs5qVemJ1SaLIFKnW2QO5D15tAdu3QAc9/dIuNqg0qzTAeMl1loXL//SUa66oAtI/+y0eVCBMzjWivdmrF5UMTzEEH0OZ1xeGZXDmQO3vnLkPpr4h2oePx+jiBmAb8j+27oYHY2z8fxqLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763027394; c=relaxed/simple;
	bh=AVpLXiqN5i7v4MRGUIgTGlRkDVPnaeZSIoYIH+ZgoxU=;
	h=To:Subject:From:Message-Id:Date; b=GE8tO4i4QpUCQW7+3ehFem/UPCMkpNoNIBrexqY5kmAQguH8RKYU8f9TCa1oIoCxA2lL9zyekNFyIpq3nOZViG3B27tWp0q4bhZJ+60A/kXTjSOQs9jEont7VY8JTs+pmtQQBa1XYGwYpHdxPXAYrI7tGA75GZo0+H+kmntt2VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hnwt6Gnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hnwt6Gnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAA7C19424
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763027393;
	bh=AVpLXiqN5i7v4MRGUIgTGlRkDVPnaeZSIoYIH+ZgoxU=;
	h=To:Subject:From:Date:From;
	b=Hnwt6GnwRGkiP4/kMGEb8DcEQ1rB7hbn5Dhw8C4dTZRsAV/VEk7ID1ywjjtFku1kr
	 WxV0KW2sCqpLaL3FEGne5vNnXB1+P3TkmmQgJ0c8FnbCPtdgsIByioIKsIdg97KNfF
	 z01qJnyWPHAp/eVDpijMOHSYJQixqnpJ1NR/L/iviOM7vi+gflSgChP6nHm/kmKEeM
	 H8wC/XS5pq/bP1VyxjvvkvsKuCvqihSwn4qPi9oM4+lvv/vEl/NKF2OGOP/Bls5Fj5
	 ZmcCaioCD5JWQ38l7gF5vA4gc1z48buHhCaApTr7le4ixcY1mJmSKfBx7eY7uMSdhs
	 OjK4dTkXyBdFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150BCD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302739358.4554.12710902528701380693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467d7586f3c6ab61fb9682cc40f6ca890dcb514d1063f0dbf5a6a1c276946e4c
Date: Thu, 13 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763027393
