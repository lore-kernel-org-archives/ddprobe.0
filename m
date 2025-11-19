Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8811534D4C2
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763560314; cv=none; b=j7Mxt1ewcteiaVMobAZk+jCM47KQVdfFzuXqL4Z80p8TIGngQRVzsPuhvyNLgbGwrcoUW14+Cb9iTbefQpbaBThN3iNuxWRQiSpqMrugYa1R9IpPsLTrRQ5STa3WT2/K9UZsjqIUjbZB/Fdx3xdbg3a+VSXFXTFxJ+fvWi+06xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763560314; c=relaxed/simple;
	bh=JPG95Jr4PwkOpYE9R0Dm4zhGHh/87TNBaVSjvsC2Q/8=;
	h=To:Subject:From:Message-Id:Date; b=QPuTSvEDqgG3/KwuaWkSsyHmbafTUHczHB5NVSnJDnH0GW7rKt5oIHCPVz2U7mJcU1kPdZBrK/AQW0LvjDbqy5DKiW9A+FC5GSoAkZW7KMKkWDiRp3I9RUyNL6WOxutLQ2cHPzlqeTN7XDjp73dr8+7ltDMC15RbwJG4M0itYTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VW01arh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VW01arh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B11C19424
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763560313;
	bh=JPG95Jr4PwkOpYE9R0Dm4zhGHh/87TNBaVSjvsC2Q/8=;
	h=To:Subject:From:Date:From;
	b=VW01arh+QjIFtRZSNA1f/0GdkENFQ+qsXd8hqz5/okL0aMa18AdEkeU3qRieDtFte
	 2ZAzjf2w5EkAP7+e1DVWxUDhFRFhUSdZlsn8MmnSZQ6vaPAWWSzM03IqI9thQeY8dg
	 5JC9DUmhLIFlQ+VUyUfutKsoPslWXuTID7+QRmCwOU4HJ7dcTKaDCMvEsksrQrAKAZ
	 11sm7JCrWhH/rrS+61kw8fFC1brSJfN91fkqxrHmSCvgjCNVQlOVvGG58cbzoGt2NN
	 bRxsbuHwopbP3VLqyhywDLx3F1clXL+k3d7hER3wbyIqhFz8BLv0Cwm9VuU9fGugRl
	 exlpscXrzNvlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC3CF34AD
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356031359.14899.16134458995395756314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5314956d341100a19f43ca230858e4b085a40108f6b948ae52883357cf79cd7
Date: Wed, 19 Nov 2025 13:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763560313
