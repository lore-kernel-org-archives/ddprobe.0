Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C80380FE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786358434; cv=none; b=tcVv89qnojvwdQ6P64L0b3Oak+k1R8cvNA3lqnu17grmh9nmaZ3Z88vp3oGaKNapN/Tukq0rBi7zEw3QqAjsMJ45ElyA7ygPvkBwmNm82UIomJNf7mc9eLeaQurWKU9xe8yhAzqzJt70fj0YJ0TAUoiNBrTUDFjV8r720qSnqzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786358434; c=relaxed/simple;
	bh=i14hVJ9Ka0DdYuLXVJo9cAdkmfVJe7A+JpEHYgDQD6s=;
	h=To:Subject:From:Message-Id:Date; b=B/bLMXb3QBr2gLozBzK6ydNefq9USKmx5034N//6Z3O3z533Ns/ZsKawn1o6tUcG7ajjkUDnigw/epBUDYkPIJnaemTCCCe/K57hkv2BDUtMXAJi3LeY2UJs/R9oSmBFTp3rWG5e4PloCyvhhWEecQC9jDF3MX1BvKdyMfyYNc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWPd+pcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWPd+pcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3106C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786358433;
	bh=i14hVJ9Ka0DdYuLXVJo9cAdkmfVJe7A+JpEHYgDQD6s=;
	h=To:Subject:From:Date:From;
	b=KWPd+pcnhSFrA6d9KchVTAfHDVkmHsXPS6MDAwwm3hJfGg7ar0j/3S1CEq8+WR1B1
	 OorlUJU14vApagJhGzmakSQlFYDORsCaBkIZKiC5fDwrg8G359lsXlDPg1p1UK9KVf
	 Px1OR/VVpEBNt0Qn853dl8HJhPUrvQkgXPOzZwIZRk83Hx4M3Ropc/anlQISOm4S13
	 KdYgQcy5mFPY4XWritU69BaW4Bl8ZsQ9hpBzwTWzzdAup8OoRCM2jwCgpsbk4zq5pc
	 T5AwPMF21KGP2PfcopP2odAspj/u/lfDzKFjWGkKI8G6BWKUIZh9XDEK1471AkclHW
	 B4m6sh8oxmacA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73BBC5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635843373.32747.1373392929434315896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68231d8fe462e8198c68bded15b6f9c54262cbe77790fccb6d0fc63fbadd749
Date: Mon, 10 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786358433
