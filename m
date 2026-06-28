Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F132E7377
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782677914; cv=none; b=PSZlDR8ObkYUdfi1hRztw/icR2pJf/brTDmIqmu3qKs7if1LkQjDAkZvcxWbZtW93yV4f35NXRQwd7Djsledi0lwQD6mDdx01J8HjJNwtwVC2zIMxi8+nN15kqCx9/ufJNB7qobR0jB6ZT/egMLBe895koAEHqpYt165bLOsIAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782677914; c=relaxed/simple;
	bh=ytwzJC2AxPcM50LUIAjrxxWStfzPaPTEr8iaZXNgAeM=;
	h=To:Subject:From:Message-Id:Date; b=jCyDvhRGhm5sm9+ZXc7CNBPELaJQKTumOLWCYsLGWqjkmbYKjA4keGR7JQ4WZ3jVWHrUcMup87x2XhjCjYDS5Jft5iPWXLRpS8Bk6LId6QXDWl/eURXRrZOjNDOUf4zvwP1EtkJpWuH5oQd55/d1mUHykLQweYP8fieLpAILfwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAunL6+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAunL6+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C667EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782677913;
	bh=ytwzJC2AxPcM50LUIAjrxxWStfzPaPTEr8iaZXNgAeM=;
	h=To:Subject:From:Date:From;
	b=YAunL6+77bnHv9WXmqMW1REWbBsoRmBWDhwTc42ziTNgUon7fUSQDoL0Xq0PRULWQ
	 kX5kP0Da83XEAZYe432ss6JSJst6trwFdtySz0M6fZjBVBTOyZJKHQKKqKWS9Dv1xq
	 nCD5nQIBjecdbblIZ/EKlZWsmggssaGMR1MGqF2F88ucGfBYdonQqihMv1rn/IQ3D/
	 6+T34P/06EGB1grzEWXJn9Ho1pBuKNLWRajLEvxwW0TMkGbOeAFKknZJZVdCfjqZSw
	 19IrWwAY59+dpg5JaXy5xIrLNstp5MNPLS3no47NB/EpWVGVB56lqgHLGCXmteuDNf
	 bMowAzaNdQKsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0AAC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267791369.10557.12519021012970775752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b300d0128b0ae94dff9a42c63135965ed4102c32ddfd51f0919ecc9cc0014546
Date: Sun, 28 Jun 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782677913
