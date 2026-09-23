Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911B22D12F3
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790182835; cv=none; b=N7QloOiezJCNH7nIB+RGswneLyq9LkJPKpj4d0t6Vk2jSB8+DZYLq9lq/u67rLvK8pSekRdnw2mCBLIu+Mp8rp04WYvJ042Sm5ls3pbGxF6xuA/X8HGpvaQbT1oSS6FXUdq13jxfs63kDiWibXd8kBI0+kxe9vewNLSB08QT3wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790182835; c=relaxed/simple;
	bh=d9AssDIVl5DZYc1jiwLgHEwMNUbQx7+IyWYYbeXIH7A=;
	h=To:Subject:From:Message-Id:Date; b=im9feEp+qY9Q4Z01EFJRASbVKSCXvvtbundQk6hoFraBjt1J7MB4rTaMby7SdE/FmWy1PoTUaUGXmzHanriWgl0FGPk/zw3K+5g/pIngMeDguzIjzLHGqsKaTsVruzqwlBmvAvk0IboUAEVuapEiHw4iuIZ3H6IdP0wPqDaLKlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itgn8HkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itgn8HkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA60C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790182833;
	bh=d9AssDIVl5DZYc1jiwLgHEwMNUbQx7+IyWYYbeXIH7A=;
	h=To:Subject:From:Date:From;
	b=itgn8HkD0RvUT8LFgW671YD41rZE0VwTjGhsX+cMVIjZ1Qw00ot1yoNq8D3JYJWUI
	 5XeMsZUOkjfq8WVKD2veWx61qH22pRvwj7WxsG+6Y2Y2TC3aXa9xB6tvvf0SYGpOOU
	 i2z1CNJdO0r0syNXElfO8YKBcViutLzndJp/RcDq8FMl7LKZXVph2sEgQ/R9oCRkc3
	 UhSJc6PeYCrSEI46ydOjq36vUEonWfyIVvj6RydDLSwezDSEpwD6ytvzfA9s2R6sOz
	 pSYAOkA16XQFD5toaar+BTuPmMqWSjrZv2XyLGoFp6iB9dv7mnbwuS0iBRRRStz1fl
	 LdsBQEKTr/e6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66C1C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018283372.25878.11387788788500458714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c1ed72d8f4b080d193f482be2ab760d4d2de6664d117a5161a6357d019ba2a
Date: Wed, 23 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790182833
