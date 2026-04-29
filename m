Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58320387371
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777478854; cv=none; b=EhGT7l6fktYCqA6QBko0RzJbZ/NhJmLnVwrMCEcAmW8Mo9+BBLN4NREd9lUTXAzO8HUIndpBuDHA7XjQEPQffRy8aNXdapQ4bkAvqFPSPqwBfpVGojyEJWj6/7hPwsiI61Rp19pbKq3jZJMYCdaJxWnQMne5W4IWXOfHabWazI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777478854; c=relaxed/simple;
	bh=ml4go9LwM4zu1X0l1XeqftgNz+2ntssxU99EGl35AbU=;
	h=To:Subject:From:Message-Id:Date; b=WB0xBWQOeXPDzYvvBlBgdQEoi5tPe6XU8a8Q8w9Ici4a4dXlFrOGAsoxfKOKpeTo10h0KQbFcfEYJkMHeKxYRGA6DNMdKzhUo84+QzDyzOeqcshgoLdgIBQuMPvO2141+JhXjfzpFWpHXxscf9c0Sm5fhxvZKU5EYHyVjDXoocc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEPbKx+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEPbKx+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3487C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777478853;
	bh=ml4go9LwM4zu1X0l1XeqftgNz+2ntssxU99EGl35AbU=;
	h=To:Subject:From:Date:From;
	b=NEPbKx+mXcRBu6dTG//XOyG6t+CU2WgVCOfLR/crnDy87dgvNj63JzoXu7Of2UIjc
	 sJO+Yh9MUT7Hxnv/HVp6eTDTW0UPUe9FSVwQ7fRSGYU9nKhoYPbvTmCfSOwBEKBSM7
	 OKsdNYwv94mBbXnASQ0/UFTxkLePH478scCDtt6gJeMIC4XJSrWbSZwfA1Oxoh9w35
	 UUk6VuPDFBoaTqL/HTIOo93sOt8JaFsji6t+Vj2SN3Oktv3IERQmuoZwf4jWuOBDzr
	 7cpfe/uI7yk/d4mAldrtt3K6yrVe66hVdihmLsD7jsOXWClVgW31cn62n909sJASsm
	 rk6LA3IDWzH3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB85FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747885369.3490.8641327990909840429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe3680514471caf3c8937eb97b27755572342e0f8d09bb478a73d41343aaee8
Date: Wed, 29 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777478853
