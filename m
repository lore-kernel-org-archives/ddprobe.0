Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0700C331A4B
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768203834; cv=none; b=G2LgiNEP3pwNA1/zDN1G06PkmxMv7QAlTOLzc8OI8OpsTlImAPI1yPX1qXbaDI3Lazv77ZSLBLejqWL3eLs1kWY1HPBc4BPnFFvZtgJWgFcc59RpWPzw5KXeMU1DrmycA87yF3F9ny6lpc6p0uuIwV1orBNr+ROh4xaMSFYU/hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768203834; c=relaxed/simple;
	bh=5GzHmcxg3fHPIQYpW09mP+YBx3CY+Vs8hj/W42Y/zik=;
	h=To:Subject:From:Message-Id:Date; b=ETpHm1SlUg0v0ZUr0I6xJnOsPOCVjhE8ND4dep8zLx7OIgiga0zZnRJFKWnror0eb3jBYL0UNQcYWIy0SEBpVRXndzvqbs0pz6d47xb90Z8Zj/jyF/0q6QfYpgNkr5k52o6m8PoTeHp9MMnDRBxaux61rkv9BSNLGttH9bzYsrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3TFMaSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3TFMaSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D73DC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768203833;
	bh=5GzHmcxg3fHPIQYpW09mP+YBx3CY+Vs8hj/W42Y/zik=;
	h=To:Subject:From:Date:From;
	b=I3TFMaSqk8lWSTuKgX3ChKJTtCg9Z/9qjyGa5jX6pCPpuXPWkljCk1BtOppOjMpfM
	 mS/XCTf0LATp6mPqLObQbvSZZyqnmaxqvBbMXw2QF5kgaeOvcjZWjhLF27eet7/iZW
	 Xb5Z6+/XR5kZ06HXFU6QosbdoZ4B3WwzvrF67SKjYMpYlxD7+APYxVMHnulHHlS4Xk
	 IVNgNYzwF4rBJAMjr/buwxxPDPPyeIsH5CBZlymgnmiFrkegAcCONcR9kUMCXnTs9t
	 LkbtvTHSCGnnySsmlTIgOR60VkthttGWWBUlVcD77V4utAy1MNcn9veoVvdvOfbILm
	 YYt+qAwgEs53Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E896D25032
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820383357.6340.15914155284912067263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47866f982934f4c6c947e32ef1584d5c21be3d4a7cc7472077e1bafa631fe853
Date: Mon, 12 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768203833
