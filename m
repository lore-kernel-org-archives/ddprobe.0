Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671835474E
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791170434; cv=none; b=t+w8/FFQRuew9pqP5R9WvEy351RpyeJazykBG2RCD/MxVUC1ezbjLOk5WL/zT9/qH8AKRRXGwub3hKtDQm65jOSl2Ahoyaj/JOMynbI6DBaIDOlwBZpk9/lq2keFVeBUnDh0ALts3DEcuP9Shy3v4lqTmt/SuwuVVq8FkB09K3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791170434; c=relaxed/simple;
	bh=EMpgDJTnuMgR3J0911/kRrZDUB7P1rF8ZIpVo+Yp8vo=;
	h=To:Subject:From:Message-Id:Date; b=DezLT6GuNYY24FHKMl8QZ7a2OkXCtRtCj4HITrP2I3p24wHG9n+N/GnCcCHwfXDUMeti6f6lPJZtGavoiTYt8vDu8Tte66G5GViGuUwQ0CfmHegtFzJXlQk+kyUeNiNt/kFj9XaSUqEc2McpZjDVeI8WXUW0gNBdQgxoA9FV5u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHytwjdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHytwjdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3100C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791170433;
	bh=EMpgDJTnuMgR3J0911/kRrZDUB7P1rF8ZIpVo+Yp8vo=;
	h=To:Subject:From:Date:From;
	b=fHytwjdO/Pkx7/vQR1Cgj/maMXmBXm75v5TTX5N+9j/8DWJeCOCgnrqto31Jqgkhs
	 UnIqp5RJYVL5aJndhSPVmboGKQdBLrsgWo/lRWDXoedvN+WIstIFNwqHYWikW2kpj2
	 Qe28N8zJ3zGYEnDm3xKLt0ETnM98LjAnnRxu8DhJJkErsRNCMntZbw7csT+HOHbgpY
	 628+cLERBNcsf9UREx/22xL59+V/UOC0M+yIaglNhRQK1Wqy+j9cJkyNgSMMkTpCqV
	 zbptWlsaxd/9wmVQdlaSAEPQ2W79C3v09/EfCrtMobtBX8ldQGT4Gl/AfEigiI2br7
	 k1hhJXsQVaT2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BE2CA5FE2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117043368.18666.7480376843970047569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db93ba2b526e00af24f41fd239477a859e538d7ad3fbc461ac61f3b3ab328a8
Date: Mon, 05 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791170433
