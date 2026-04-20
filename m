Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2082D175A84
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776644254; cv=none; b=UOcqHDzoPDS+a94AesMkGe3xA4F0A/ET/uBqKo55DTGWefidYO5bmGVe8O0m0jlRb4QQlPJgyLh8qIdV1fjMiz7PlYjcMSBojaLa4jNcENr0ELgEXNG5B2lb7SPpMkxuFU7gMUepvKuKx9ePMs5ymUcMzyKfkDSCSssz9OektR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776644254; c=relaxed/simple;
	bh=Z3PY+y+iJ96HbgVp4LLBwMyqdYFWKwv+Jv8cAj4YTRk=;
	h=To:Subject:From:Message-Id:Date; b=E3um5Fk+QR74NTwYpdo0NSIdTY2FTQRYMsGzXlxN7WGgGPjXPYUCoNhHHslDCDYs4lJy8Cq8GkdMOvloEtKYCYaj+4yiKGjfDkWBmII38uResgM4j3naOiDImzWBM/m2nw7eGsTvjO0CECSmGbjrvkLT7xICNYF/RKeO7Z1Swu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJ7eJYeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJ7eJYeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22EAC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776644253;
	bh=Z3PY+y+iJ96HbgVp4LLBwMyqdYFWKwv+Jv8cAj4YTRk=;
	h=To:Subject:From:Date:From;
	b=AJ7eJYeH8Ne8gebG9sgYpddhKOmD5UzAbxVW0+GtIPsM5PK1DMnTHE0PU2rOKZb5w
	 zg0oZJpVK1yCFitOt4OIlakmFqs2sDNjSWughrIL8TwKX7LEqEcux/xQcaWdLIH221
	 9ei8Av6goI9E1KjH/4Gi9mWetaMtyFTsB8oMBkvUErDugeqMTJoHh7a1Ej3TVS4kYC
	 QLzOkRV9hYpEzgqA6e8uxy0zDdi2Ppdqa/ap/HhkYfiU85Rzb1KA2zTlW3p/qX3KlS
	 0RJYnCGH7aa+yfCzfsaNOy9V1bO4t3YCYEWjGrXnDSlhcZ4FoHXI8fI1Nw9KERCS38
	 s4rccLCFBHUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD2AEA71B1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664425368.24200.7702361537423132870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf49e21842a23b8b69c96addce3999e41b4936a187125599625dbc7f7676fb07
Date: Mon, 20 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776644253
