Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6CF30E0EE
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773928494; cv=none; b=uiSJIbNdAqarWtXuAPHSb3Qx+zI8aCS3Bxr1wkv6NrEBmlN3To1U0RX4DyvrwOtBhij5ht4eGIdL+fElzXrPJ8PYhCYy4sgQ+zHK2/8uihsesjR4UFj53qdTDtaiV7TWxuF1ocU9SlAjFHaLmXCsiCy8R5ejeHzqG+d40XUWQ8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773928494; c=relaxed/simple;
	bh=Kff+3CMLjU1SWYdmSse1H31iiuaXE3waZmkkT9zctlw=;
	h=To:Subject:From:Message-Id:Date; b=Wnbhjpr7A4MQvrjOUFW7YyAnuvttRMnhcbKVQJAH3+5O7Cur/Gq7AZVJcZQwDI9DFwgcQADbJ1ArCOPiksz0x4rS8lrjRCf9HM2PUGcmOrmLUjqpMiHelaJgs5hnfGFlueHzbgAKgy94zojomSZXPETGcN0108fEO+nAnXf8Qhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzJMwdTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzJMwdTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2902C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773928493;
	bh=Kff+3CMLjU1SWYdmSse1H31iiuaXE3waZmkkT9zctlw=;
	h=To:Subject:From:Date:From;
	b=nzJMwdTs7QoBYWePWL2fVtIdoxphIUz+LluWfWwwOoTDktHF7SYEmV5qKLz3ChVTE
	 VcWcBBI60pJJZ9omYBpucS+za4hTiXEJGOzCiMNH0/5F2r7sowWi7bwIsIdlBfubAe
	 bvrV2y8r9NXOKovaptRapw65+ZlzDVcwqx9cjZb+VXwG3psScHiN+ORxFUc2oO30ZX
	 7KGaWYA+zmT1lr/gUbwUjsBlk3a/Lpzrgzj/y234vydHHpTGli3frlm+dYlWEgki+l
	 wZUYuyGSvuxzACl2koE1/ets0hLx252DU7D+8QIvrdEdtn84mB3llOPja6pxlfFhPT
	 VofREHnZeNvCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C36109022A
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392849358.6932.17660754192897148919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea7659e5ef424bceacc29bcb454d8c527b6ee850498c9d8cf366685ef514329
Date: Thu, 19 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773928493
