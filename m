Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3373AAF5A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790234434; cv=none; b=UtJyqsXQnIRMgsGhrbgK8bAhyDlK5wH2YbKQ7LhC0xeIrQ1aRcPnf4QH9BwHdHZOTO6UeGD/tG0RNk/pzzBTFmDxqN5mG9FDtl07J+7vgjmxKQ+UAmC1q2MBzzgIFLHbu89MY71B2N+1dPvy9vRjDEhvkqMwl515OApWa0rktJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790234434; c=relaxed/simple;
	bh=9v17Kd13Wsh57BTujYfFlk3vBHH1QTwwREi7ZeAman0=;
	h=To:Subject:From:Message-Id:Date; b=TBZBUTKYTLg7REbR3vI/IqraUntuhNucZfqMYhKoALhWkUed9Qek70YBs0bxXc8woLjV/Jzn5HtfiswkKbE0PYoJy+1LPzhqbIT3+ozn8e/bgM2IPHb2OKvW6UQOzgo3jU5d06RhlR+TQIKI6K2vVWDDFDwzdwGCexTzDVAFOPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5pzTBdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5pzTBdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE416C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790234433;
	bh=9v17Kd13Wsh57BTujYfFlk3vBHH1QTwwREi7ZeAman0=;
	h=To:Subject:From:Date:From;
	b=f5pzTBdMyC7hAP5nNLR2gJyylbDq1+jVZxwgiW9OQiSJVnJktIVDvf5zY7MMytISY
	 47zhmap/fuvLLyutPLknsen9XVL/GorG40pqvBFuOzUW81nwadh5vGvy+M+8gLTa5E
	 X+O+ioAGdmpuue84gpp4Sy+gF18mTFWgE6V2BjWihqY+CX2AN2RHf1y3b2CGigZ+zu
	 5l8ZOJF9acSPvUDtEVMq5EQsGD5QnD10pLc11EwCLvglhR3NcW0nQDqnPn7FARUIhw
	 x5X29odIFQhXS9SyQvi2dk01InfidKy2a20OT2YSbm14ONFgRgHa0gEFjvlTSGhnH8
	 KYWnDTMO0mt6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2BBC98310
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023443369.3176.12951907326863928934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b2b1fb5a656730ef62df3ec4a8d9c3aa4046edc37efbd0a2b60aa102e78e0d
Date: Thu, 24 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790234433
