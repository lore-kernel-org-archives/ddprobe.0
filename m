Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D27717597
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748699394; cv=none; b=fECq5j9t5WQNny57Ul8owqcVZZ8SnshFXO0Hwlnfyz8qcSdQ/6ifiSrOUuNTWL6AXiNWLR9iTjrDNQGmb2OYIAtDhuNhaVdM6sLTEHSeIg6fmFPZ3/dUhlURCC6LjBjJxBFzMpXECoukYfQJAG4Ky+gJqZiDORdPEg/DwiN2meQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748699394; c=relaxed/simple;
	bh=5Eo1HcmwmSH5cPJ56HsQ/bvvUr/IUnlztc9Krni0ikE=;
	h=To:Subject:From:Message-Id:Date; b=MPgLKMtLTrvbqkb71J8bYF9P9af/gf51pioE+14/c2ZR2yr7en/zkDd3RHod6Qrmp9Oe4tBhkgMQNeuxlSi3Dy0ydC5QbzjXjLxG14i/0SJuVCte0nOEn5zHI/BpsRbnGTYdigKUWvwLkpzoOKi95LEtxcdJMByVpEN2mz9C/VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzyZR5h4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzyZR5h4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84FDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748699393;
	bh=5Eo1HcmwmSH5cPJ56HsQ/bvvUr/IUnlztc9Krni0ikE=;
	h=To:Subject:From:Date:From;
	b=MzyZR5h4moml0X1solRecOMYpTYmO3K7F85FWcSf5dALE9S9JmJNi/fo1xaF2JS1q
	 20+12UAz8WspwY2+tOsCXyCXGipl0RXis4H4kzWCowexKiYQbUoy9ZKSs6qdHj6f45
	 rdT61HhfYbikdUBwoO9Tx1WjTQb5cy+/fEQ/ioz0Qm5b2HUYqcnnGmKQ9/hpUGn8Ii
	 yWYWtaBPwjq8hil12pyQ2WJNdRVj1p6g56RC9k6a+Qo7m9EpI/aD7IIboyQg5+F4uY
	 TKJNXzSBmHQQn135BwUxHbOYFROSzFst4QHbyUFKZkmnSI0KSsQn9JZB7YrgX8cc0b
	 ZKcboRTz0MM6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB8C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869939357.17112.11083588548552615279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ccfbf94dfcf3b96e5a49357dd743d468c0cd8ba260fd2b43c1d3aa387616c6
Date: Sat, 31 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748699393
