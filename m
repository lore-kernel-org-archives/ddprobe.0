Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FA53A7591
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790019034; cv=none; b=jg3HIQKLXngedb9NqVZ2Lx4Ozcpd9CGkfulIOm3kywr4v/LETXYguBy/XD+1Nl5jBK7tnjioN73bT8v1BvbiLNOrS3uYbtQYMPRfKPvatIZL0oZnq0x/aU+a0wXDrkQuIiV24+xrdC155oyk3QxKZ9/7XyS/S32RoG87X1uqQP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790019034; c=relaxed/simple;
	bh=qDFn0Q+9nANqTvFBtBPeR50/opaYscRy0F9Cld5TC9A=;
	h=To:Subject:From:Message-Id:Date; b=a4j7yUN7oQPkbeioEHYdqCXU/JAd22m5ybRu74dKObMCRpOanqT2GY99CZncUobvZRTQEALWvoVSDqxHgFjJe92sLyGP3I7apstDFfutDIcMw4C7Z2QcQMB/AS4f2WRZlnIJDYDxkvT8d7bL/MuVK1bj74+C0Q5UVAENPUxrG48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZC7/5lt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZC7/5lt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE503C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790019033;
	bh=qDFn0Q+9nANqTvFBtBPeR50/opaYscRy0F9Cld5TC9A=;
	h=To:Subject:From:Date:From;
	b=ZC7/5lt8aGRNVTyNvLa7KPmrYII6byQrVDTg5rCewHy7q57r3jU0Dmx2F43OZA3TC
	 /t1ByUR7pNwDS6Ek1h2nVmIBjhgRz+Yfwag0tHq3ahsogJizEPbKO8p3zUM94pX7wX
	 6Z7PV1Tkjc1zONCCi+g3trJJDmj/gqf3pOYdD5aDIxud1b9DKjXla9CBKIB3XrZCgw
	 1yFMhwQhJX4VaMbpc/FrQv/7zvrForoRQo/rV5ric/kgrOhGmG89/BKQo7tAwLF9b6
	 C6DNoL+TnY5P3f2MLX1QRh4gvTaro7CcWl2BCdu07Iq1PXgz7A0fS3iO4/7ztCJDtQ
	 eiFdgb2bQ9jKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6094C982EE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001903373.16211.11027308267370906282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34cab4bb61b4e8a65475df816021fa66f8462eef79906a1a747ccb0ee87882b9
Date: Mon, 21 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790019033
