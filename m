Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3491FECAA
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745482194; cv=none; b=pKoQ4KsmKivvWmL0IhlbvlgIau81MOikD4g2VeBlem9YHRiFlNmveC0buN2s8IKFB9HbcWxLf5W4t2k+eNnInfIrQx7IQwS7g7bNGx/GznzClhCjy2YqeKvWMniNsqj5jBRWKAbc5NO4Dg508EYYw/ccOgdpNeOlNhUkyhs/EkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745482194; c=relaxed/simple;
	bh=bkPwBdh/3SI0EDgWM4jGVtE1eLK9op23Ra0IUcDTZoQ=;
	h=To:Subject:From:Message-Id:Date; b=Dwm4T2jt1OaFjFZmxbMIbNe5ErGuJ1H0B3DDvMS9RqQBXwHBqgXhYo8CYLjyhjBIAm7bERWZw1wIgxtpTKCO2ERAjqE7VdFmQLvmkhTYVTot29XC8BypIKFeM8pERQaxgK/fTS48oEuCMyHkji/ru1RmJl1a3X3dr2Kb3NSnltA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2FaNN0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2FaNN0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745482193;
	bh=bkPwBdh/3SI0EDgWM4jGVtE1eLK9op23Ra0IUcDTZoQ=;
	h=To:Subject:From:Date:From;
	b=n2FaNN0NTsijziepZeyOOHS/vG1+MRt0yxRoniw5Co4cdAJwzwDohQHnwR0qZfHN0
	 vxlQjTdhmM0sgqG8YeLdS2q26K/CNGLlkyyc0DEZ5FO94N63WsZ91BWb/qtvA81fg+
	 y+OZZJptiDRKsrBq+Q7dW+7klDYUdIQsBld7CKgfqALyraQvKi5R/GwsHMavoBUlFu
	 hKUwUCPBz9ApkKVQTmESid9rdFDTBa5FfRanId4mEZnWBezS1MYsxb/GAwxqlD+FMA
	 Yuup729UIej654OtTxW721VOB8jJxQ+/5vWZ9o+/K/0kUM0evrxk9UBVTHLXdyhN8G
	 Q/rqqti0R48EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9271DC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548219358.18800.6597578926798515365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a314cd9ac04e63740e439567234cdb1c1e21c3059c5732c84bb3973531810372
Date: Thu, 24 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745482193
