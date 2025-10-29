Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3140A28695
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761739794; cv=none; b=o/48QJIA+qEFaffzRVmP+Zc+Ae31fJcDrIBrjv32lZIBHf394YW8rd1dWjnEbVMqbRuMEQEO11JL/vZla36NOhaRoEWuyBikNRVBBbQN6R9e5ljtCy6mk/1QZ+GxwIZ6VSD7Py9Kn8CHRbqbdjakcllT3WFim6pjAvFoczznUVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761739794; c=relaxed/simple;
	bh=R4qUh/uhDtSF5hyg/BXA+QaFNtSzy629GL3qz4xSwxg=;
	h=To:Subject:From:Message-Id:Date; b=czCDV/NE2pRPHXLK8bYKuCFEsSoQkWUH0cLbMvQiNpYtRsdnu6gKVOtVsKCXrEG8vk1tB06w/vCNnnGLBUuOESrgyj5RvA+1VjlZboFcW18gKLE5QYgSiNFrk6OrIMAYNV4QPFjDuqa680cmt0Bf34E0BH9PG+4UpSkKmH0PmlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBgByWvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBgByWvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B36C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761739793;
	bh=R4qUh/uhDtSF5hyg/BXA+QaFNtSzy629GL3qz4xSwxg=;
	h=To:Subject:From:Date:From;
	b=nBgByWvxlDs1o/ltnuJEfMgISqmABwVQQaupy/uBqON0fw8LCdsWRhE0yQ2mL2bcC
	 2xJU7pYXpZ4bNDU649i7ut0lExCJ+pwgFMmdC6PVYsMrQYkwn+UwQ6w0ZJ8GU/17EO
	 g2XGGmo8xwwpdFFBR514lUzfxd2yVgQJN8R4Z3AY1/C03plkk1q5b9W49WXtP1cZlA
	 PD6YwNJMJv3wCf4JbvbGQp3AxcqP/iSoaF94s4R6FycW3PS/FC7g3FZgcovL7oIPi7
	 nep3hDgxgHw2SN6G9vZ51fW9Cw0JQzyCcX18oFJISfayPxVnO8UyPU8lxA5MONrNKI
	 CL+YVFoSsmNCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9285DCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173979358.26578.9994787341780749808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21f8e9a15ffa35a87aed775681323c1ac0c95bd5b8cdf8dbad27ae942e71031
Date: Wed, 29 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761739793
