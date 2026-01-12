Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083DF2E6CC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768251834; cv=none; b=SSIegBu89eieuIwx8ZdHtUz+vcX2ItMUhy2eLxzkO1n48Fbz6Kru3MqDHLlEgGt7H/odNUB6RyVG84ynN/hxH1huI/Px0AzYPyf/sVAx9UNe6FIsTnS2hOLj3Mjmvki7o8I0BSyPWhb+7YwbW0Q9aMFpbnc07tJQnba+Yyk1fvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768251834; c=relaxed/simple;
	bh=qg100m17E0YlFU022mDSTnonn1oRLckdGQjsV1g5i6U=;
	h=To:Subject:From:Message-Id:Date; b=I4xCpfMP3q2Pzcs0/tGwZyCEMkq7pxUkTPxzxPupka7JdiKe+FQ0fcQn7sDIrHaa8QYdCOu24ECc2AXVi1Vi9i6JWYqmpgwCCXioHiNMTpGqMgNIupWcaTQdpPesQBzucT/r0PwYTzNOm4vu577l/oLCY0UthB/XCneycny9NK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tt7Xc7zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tt7Xc7zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECEBC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768251833;
	bh=qg100m17E0YlFU022mDSTnonn1oRLckdGQjsV1g5i6U=;
	h=To:Subject:From:Date:From;
	b=Tt7Xc7zyR5YyZw1+Rmb7oi4dNxPTFGqMP53vaMW6r2KYIV7eGYkJ2OK4ZvmmyLg8R
	 RVHSmkvTN0xx2GwTR+eJz/WM+03e7U9rkL+vs7QfYPYffu0Al/fbUwKYIuUvSVlRb8
	 1JUCuMG7+wLNPYJVTfIHhxGn598X9jf9iZnjZgP3FujD3CS7UfDj0bkV1xVysy5bOB
	 1SACMGHf645lobsTV3pLWTX+kPtKV/eFXQlitC+ZE8ZtRKRUWFe/mHmGFy+BfjUpqI
	 6Yp1i6l+3qpEin5329VT25DhdmWnQ/By99dhAg5rF2ffIwk7r8ZCuGwyAcX9xkX9Ap
	 2IKGEMRwD7HXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90667CF45C8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825183358.27190.16028504085105407350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcb163836bfedd1215815bc83c0d576b89498d28138b0b2b5e031b48cb76a7b
Date: Mon, 12 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768251833
