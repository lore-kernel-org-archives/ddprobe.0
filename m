Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17206258CF7
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757440194; cv=none; b=PMmx7K9zn+FE1RNwtb7CHJeGgYO7VqK9iHVhf906O0OyIWWKdgGX+56xxTR/xTLQ4d/Q4/NZ1loW1pFe4qK+ZsQHJF0s6Z22o7bQa5UxIS8+g6nNJfKTBkmmTvplygxpFCtWPcG2NtJIrnP37wqpgL3Y0DJHQw6y50JjKfHASeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757440194; c=relaxed/simple;
	bh=7LVRB7++auA7aEdUshbPtwKteBAjLJgPWzQMC0YRkpc=;
	h=To:Subject:From:Message-Id:Date; b=Tl4JNFjeIigQ25lpN4Cfs1UPQMfJqTgd8Q5eTdtNrggl99vveHtvMwC5H+H3CCqK8IdqUoyzT80Y/pwgSO8dT+VOdXxPC71PN38M/iqeFdhbFyAw6RaTuybNAQmALC8RltRE1yh/kceCfxmAY1vwHbKr7pTdGYMCclj2OjW/Xk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdHsgexZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdHsgexZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A365BC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757440193;
	bh=7LVRB7++auA7aEdUshbPtwKteBAjLJgPWzQMC0YRkpc=;
	h=To:Subject:From:Date:From;
	b=VdHsgexZ8rVxkSpdN857yQdtvW2RhXe7F3BBy9SsK2RiBdcU+pBQLAf8y+yQk9QT1
	 WvE5c2/FusbSnpmcNuhs1MBBle5dEvuJBDgLUZ0IrsWyz/VZRRTc50beh16UTtNmUB
	 BRivzGQF2WoyH63HFqx0dZ4P3o0YJCjycgAaGIKYOIwTbx7Yft20j5gHSdjb08h136
	 ULFg5+3xssTpG4yWwgtlNY7gDR3I8YZeA4X8/VeUe0ddYH008Rp55BykkHjJz5r/lS
	 evUHkTKR4e6RllJl4x8GneDwGsEdID6vNj4AFt0HtCy7w8tWMO36nrAhrhrdQnVWlH
	 v2sXnjlJW9vGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9271DCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744019359.3970.13330531211999669949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51faf0f06c1d67b0b3f3cfed1f273ec6ab13d9c6639869f08f719a1be19bb8d6
Date: Tue, 09 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757440193
