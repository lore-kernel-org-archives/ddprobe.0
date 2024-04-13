Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 693831CD16
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 05:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712986163; cv=none; b=XkftQ/S4p6kQ2NLcjgfnFCEB1U9zPOM5jGPditXnwZmfD1onuyeQE8iBQRHIvJE08BwDKR2Be9EV2MIm0Bbnwee/ykFKgI7me7hFC+lNr+m4SddrZMsoMl/oKe5kqrVQrNgKy9EFRnAz8vaX3khDQbdD9RywErMCfBd7IdCjmhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712986163; c=relaxed/simple;
	bh=Y3uptNrXYeGlMli9duaV1mrhzSD94YUKKGC5iDtAP6A=;
	h=To:Subject:From:Message-Id:Date; b=TGE9aeuL6WO9dV7ba+IA5h/7HDYb+oKG7jma8+H0S/2dHYL4x3mQzsVKiqsEjtA3kVC7cq03tdipTdQyGd8gdFMVtThe6DCQM2ARX1cV14o8NYH95wJF2yh0YZhAjtlCwMCSwHwtESCAFT3ZJhY9m2O4sVw0A94z1IN2zeq/IrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syW9iPqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syW9iPqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73E2C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712986162;
	bh=Y3uptNrXYeGlMli9duaV1mrhzSD94YUKKGC5iDtAP6A=;
	h=To:Subject:From:Date:From;
	b=syW9iPqzsP8YCyxEPSwr+D5MVN3QK7WSFWb5ZM7OMZJXHRslVT+07gAdiolFM26Bu
	 zbHrlNB+jnEzIBYT3MlFK5pVlIPT2T8z6vtklYbnAHwgAIxQYEqMUVTJAxqarfGEvB
	 iBvDESatIsuax2a1FUQ02dEPmxjwpw5qeNDn2RZ0jIznuk+YErsWAbq8WNKNrZfAoG
	 yMvXSQK2Y7sWQxdBrckRmbHnxKqOrNZKeSBG+xiewFO2XwQyYzF64aLxNElWP7fnMR
	 kURYe0cDmMCD0zy0AMPu4l7DAQKL1RrGCZRZwIe4H3aBiAS0s82nm8hmTDZ9ZjOGOI
	 sewnW29n1QyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52A4C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 05:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171298616278.12211.15604568406151373047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0fef5ef59d79aef862907c9fa557bce0fb1ed9a2ee745ba8e24cc0f69af7873
Date: Sat, 13 Apr 2024 05:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712986162
