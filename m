Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5039E3CB54D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785178834; cv=none; b=iy2gWalU1cYFnABKmoxgDkpTJOi43aQRpzwuzJuhEd0iQgNUigjwuZyeaG9ckblUNPiYSEioVf4tzECShTACKXjgcgZzSqGhKr2YDlpZ/w0aZlupQ66DTy1ZshxQC4TfHMwbEpmyIifyKepvNVItw0fJh3/eU3kaAN9lKZm4ksw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785178834; c=relaxed/simple;
	bh=7Ai9T7W/U2R5T8VlU6vrgxorU/OBwlk4SchyDqHCWnw=;
	h=To:Subject:From:Message-Id:Date; b=n2bLs6NlABe9EIxoMds9BUjBTlXd0OrEXJH0hspU0dqjrQcvP/V/xyxxhea66th/xMpu8ntmhTICZaPh9aOvF1MeDHaqmOYjF5FoiSW4TGOR+8SoHayrPSm8ctcd5tyjoebgx7WknYWyrC9bptCf2dKjCp9h28uifjwz22g0x+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNsBBGPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNsBBGPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF586C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785178833;
	bh=7Ai9T7W/U2R5T8VlU6vrgxorU/OBwlk4SchyDqHCWnw=;
	h=To:Subject:From:Date:From;
	b=NNsBBGPvMMZRPrXtsmXVp3blbyF9HncIzQEuKLaEF0VIrxMmfyjR8AwbdDXaHgWn2
	 5oZnmRM8KDslETVyfdzuu9XqBzj7ma48fOEdstHwnfsYCDcWdiFZJsd1dKwTUV8aJq
	 jf+lnBOOLkZ4qIGXwGA+06uJ/p63UFd8QzwrNZmx2HYLo7ZHT0CQ+tV4oGK/OmLrNi
	 DMotSlKZ4pXjHK7gc1VbbastkSKrvRX3W+94Ayydpj6CtlYaNaR69EQI6eOC8Q82pY
	 QdKI0x0upW0m3UUyXws/GVXFwAz8dOiQAGC5N0MK8nFPLS/tU4HoOF3ow87tfb+ICF
	 zA15w5T5ileVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC90BC53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517883369.6105.8613224237373872757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade44b24f863bbaad5e207501091f1f5e9d11c0cabfcb443028f63b1635109bc
Date: Mon, 27 Jul 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785178833
