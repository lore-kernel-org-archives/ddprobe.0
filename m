Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AD72B9A4
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761300594; cv=none; b=SgEWlCIsYwGmjoIYkP3Upfb094qiLxWDt1m49UpXksPJqN9uRNOUl+zYfIF/sBALSZ7Q0sAZh/XlBFirCDy20VrdIS44DuDKujhm/5qd/RCSrbKeccgrfxgYVLWkbM/U7aOZqBU4BUKRA6EPYLuXsTBCNzjT+B6WmAJSasJzbsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761300594; c=relaxed/simple;
	bh=qjSfpzPyV2LFvmqOtwwEZmIShwXz5Z8fPGrfOsZ8qg0=;
	h=To:Subject:From:Message-Id:Date; b=tLMw3m/xPXcBsHSSMWjiuNsCVOq5QBjZ3Kx7b5/l68tus3Jg4/HsO5fSzVwjXWKPR69ezJp8NRItAwqmf8xwvzgKc1wSQTipaq8MbleHYmdc+Dp2gb6GEZTbHXj2K6EJgKaoh+3vBaNckx1uot5nCkoTvvbVFMNrbhkRYjZIBFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTIDENH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTIDENH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FB7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761300593;
	bh=qjSfpzPyV2LFvmqOtwwEZmIShwXz5Z8fPGrfOsZ8qg0=;
	h=To:Subject:From:Date:From;
	b=DTIDENH+1m3+71gdNQApRGETXEWQ8Zhwckg6GlcbiL2jLpYlSVPeabPO4xwrTPscx
	 a9g5J8k6KhNOiE7quXqmcWXno2wGEIPscd95WDeFCThLk1qLpMEtqbbBBaIh9GNxWp
	 4eXFccQjfPJph/D8cUu/1ygYNnSPrwHM7kKCOJr0EuBQBqo3nmn6YBSnJEnMY3RS/z
	 iwb8t2BBLSrCT1wWRmm5T+KqBoZZrsgQgo5g855khf78ryW15mEW5zLqxVNpsVif4a
	 4iLZ3YrJUfQCCgGcro2JiNzpDQEfwGf8Qg+UM4mh9NQg0ROZ1eJmIOsVsfLSVxw3ZM
	 vq7cs2B3VKipw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9069ACCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130059358.25831.18385567453576788478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622139fa72b90b7c26c8c64572f475f6f8ef46d8517ccbda6c68b96d07e6aa6c
Date: Fri, 24 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761300593
