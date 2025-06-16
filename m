Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251B127A139
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750076994; cv=none; b=DdWioT4x8sb6JELxRfd2DWeJd4b5Jp1pVEDib1/U9VpJxYYTD5vVzfdwiU+u+mmXiqWnqBvRHrzCON52PbQMpQh9KxbYGglX3/vz9TWR21fQiE0JXubJfI1lS+NG5nza5kcDPdMAKtfeO9Q9TPJMnOZM2dOmvc0+nXJj9y0I/iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750076994; c=relaxed/simple;
	bh=eqTN+KPIi44Gmbr65g+UK6Qy6OSt/e+oFE2bJ1OTIK0=;
	h=To:Subject:From:Message-Id:Date; b=AAG2W1oC2sUKo8CN/i4O2dt3Miw68jPqQ8LH7smS9BzGCTU5A7wmwmj8iDc4sVhHDaDkJkmRY+NQJpfAnZEzsYOYhPp6iUVVGLs7sCT7qulWl7P7uvs0aC0ZUcdOtqxwfQqgUgKToKYymCd3PEqDzr6iByZce+x2M+A0XjOR+XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klSlwNYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klSlwNYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA692C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750076993;
	bh=eqTN+KPIi44Gmbr65g+UK6Qy6OSt/e+oFE2bJ1OTIK0=;
	h=To:Subject:From:Date:From;
	b=klSlwNYlpMvpwwAZj3L7B2vObaoZriELim8BM9yiUR+8J0uDUs1CpVIIGDq99iUPZ
	 KH4kowCBk9QSJkT0Ru21RyB/uaJD6OUFOf1AMvCZN4oXTBZxMUV3ccw9rELwMDsy4Y
	 H0JJMLw1yoM6tYMSKFqQCeH4r1fThP5MJW79FXkV4Wlbj/hi8ZQo5IfColppUrsU32
	 zSwgL/NFsh/XZSZaisv0kkG4Ub8KwTCEfpF6K0EyKckuiaiBzwBhS2La33Q/0KKqBV
	 BC8vtgrcY8j3tTJkPLCi23TJOlzEbL30hbwonLQysellc8RXbI3TSx3EnO9BBflNA6
	 VYtxJsB/Rkf/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D7C71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007699358.27490.6246175347940196743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c21d8fbff5f42624b5eb3800a4babff7dc0093c9fb818a4adde864439f8592
Date: Mon, 16 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750076993
