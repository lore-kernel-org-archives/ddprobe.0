Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F6A2D6E75
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765857174; cv=none; b=dp8jB8nrEB2n5UtQEwzvz5Q8cYDDPG3DDxV3SQ0NBBDSBtUKoyR8GqUApZXN3G6kg1P+jQYNI8pGCar5Z8LQRHX6QVti77tGaUY0HojrjgfI11+kZbQaM63A6nSXOU9/euTFMEDpL7Sj0WqSxIocpoYA8BPc4aLVHpFUUujbj40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765857174; c=relaxed/simple;
	bh=I6c8r/cSyOY7stLNZJgem1po4+XZBaQtSyJ4e7HYYHw=;
	h=To:Subject:From:Message-Id:Date; b=IKms6fiXVk5QJ2FoVO7sY1OsEhvok6YcmVUShh5vorZ3Y3TTw2vhxKCewXGpoiGRtFiQHq68vxa+nheLdfgNJztkeVoDTCaX6ID0YrCSu0HfusHKLmL4M8cvEJ4f6C56Xt95TnI3+tQUWfIg5vgOWXINesxGrfV9A9oI93P5H70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJ6Jk9v8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJ6Jk9v8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA554C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765857173;
	bh=I6c8r/cSyOY7stLNZJgem1po4+XZBaQtSyJ4e7HYYHw=;
	h=To:Subject:From:Date:From;
	b=uJ6Jk9v8yBg/0so+5m1pwadSuLh/G9lXzCY0rvB+cSQUcG0NYpyl21biaOqOgQEwp
	 Y3Cx+8kuk2CWetUI9lJoNXvuh/WI2S3qq8r7pbx6A7pJh1Ga6LaMzAYH5qSOuEmyuD
	 h089BuvW69GM08rigDaIuLbZjFDT+ddgVN7/dffQL2pX82S05ZnXSzyk4yOP/U8VSk
	 MsPdn2uc1nHxCNBYvCjNN1qVAaS2ZgmGEsanzxURmZlTg7aH/1tLksVrV5t98ZHAD0
	 Jp8p1vGC5D9Yfkdkmz4pdtYp1bPkAGpZwQXBnn+nRBM3d1tmltfwOokzNy9d8u6nEe
	 iHAjdfXVF8zag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F8FD5C0C0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585717358.24521.9780136074623925432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8dbb819d3196b504d72a6bb0950143f210a4b5b2644ddcf8d440deaecb6c7f4
Date: Tue, 16 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765857173
