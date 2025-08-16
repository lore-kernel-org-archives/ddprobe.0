Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378F32E3719
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755352794; cv=none; b=YYS/Tal30drLkQuIXrLVVv55fUBEUT+P3nNAQR0jNA6aiobNXhNyBh+JoLAH6BKZlGq3O1Nwby/yBypIxPI1akudVcKU9iBeJbSlaK6CsdJGljSq3C5rV8Xdu6m5Aunml0/SQDdTxr1ovZ5aDUNbR8aXzVE1edoyxGJP29Jl7K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755352794; c=relaxed/simple;
	bh=hiYZvjDzn2SgDm43UTLamY4jqTXl3bTlOdZ6iEEqIPA=;
	h=To:Subject:From:Message-Id:Date; b=sFwsnLUogzB7FHD4GdpwEIQCMpUl9SjLeqeywCpNJOmNzJETs0thjgAZk9LdPSjF1E9ZtorFAyCxZh64IZ017e+yVnGtFW1I3s2ly/yic23VNHnliuwloR2ZXq9xCWrsF42mxmvbDUw6sT1VyjQI4vkfmic0v5i8Ge0ZeP0HvBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvNrsI9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvNrsI9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A41C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755352793;
	bh=hiYZvjDzn2SgDm43UTLamY4jqTXl3bTlOdZ6iEEqIPA=;
	h=To:Subject:From:Date:From;
	b=PvNrsI9hdqUIhWXewvUUuRjVVGuifJSpZHIFarwrsdM51GMdxT1DxCz60sW3aWm3F
	 1mVQzi2+//3b2rdlDqLiEv//m4I9AsBLtWY0E+2jxTFtuvnt4LTNDsQlL0bpbSc91d
	 J1XqsQxsugxjmY/0W8Zd9QGQZsS4BIwFzwYPje1mHAv+E1wE2WbZ2bx1pwK1NRlpxE
	 QZT6Fx1i3GaDgwIJRc4sJ5/grKgpVUFOZDTu2eqfPwabQ/xbDcjctBJ2+k8WSL59LH
	 OJKPkaEifWrpA2D1bd/FkZHwCRJbPSWzRUA1h4w9UazU520tShtg6aa3Q4K+UZcM+C
	 IY6G0R1DI+8sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA1CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535279357.25463.8747458477259751457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f644a31ac10ba9b0bb4c3d97399a968e40f8aab00bf8d6be990441a08aa6a3b
Date: Sat, 16 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755352793
