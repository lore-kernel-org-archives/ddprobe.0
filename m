Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147592066F7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773547494; cv=none; b=umTBBHwJcPm3wH4cmrPXoGwG4jaEtWFx0KwFQBEB7x7vBVALQ/+/ykn7XUxf8f9AEujS49rnBTV47cfyOzozIPCSnbQlvT/2Hz7K9QdWsv8/sHtM38r/bm8hHnM5cz8kd50ChYjdp4jbY3ihUgbRJPsoNsHivMDio3gpLZlg8sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773547494; c=relaxed/simple;
	bh=1Bve1iZaDegGtr/rF7qxHuapcZdZ33eLG0oNa1k83G4=;
	h=To:Subject:From:Message-Id:Date; b=RtqLBXZQMVITy1A7yh0MEU9NzltIJjKflDRflIvRLvcmXLj8fzRZWjTLoqtwqfZatYGM1DQKgedCCeeL4xWLZb8xfDcrpcZlCJQJMqHT7sjnFZR6KuGShz6VXYBhMWTHk5pJwSSbV+0pTF89HZL61zJA9jzGFScgKczULMmdJdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bv+IOyWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bv+IOyWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E5AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773547493;
	bh=1Bve1iZaDegGtr/rF7qxHuapcZdZ33eLG0oNa1k83G4=;
	h=To:Subject:From:Date:From;
	b=bv+IOyWS5Q0UqTYxUJvUAy23hSwJSLedAUOLrKpKlLEA4oQfJWB4IeDqGexZiDyF4
	 xU6mPT2SW/w+wtmf+Kp7X1hvmQaC98tmCkElGHpUeYxU8GhrzG7A5DkcbdfFcJ2tqE
	 4m5gVdhKkSwREl0teBoFCWw3/2x+rJlR0pZ0pnA7XuG+I/5XQP2Kcx0eFLVJzmIMae
	 BbwEIowQDife3ZvwSvbIkJrTxI6OnY5VokB6zbrZQjR6NG+vNwzZOyq60Gk+y4y7gM
	 VgkEzRgDWFYhDn/60xseRnKSPLusEOeQjACPDL0v7li68FljfRp0EaykWxTqJTF5+S
	 RwOLSDnwd+x6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9189DD58B0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354749357.28065.11444718127060146191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f8118f503ef81f1cafce8b39d9ac1391caae84d8de18b81d846d5ebf6e1f99
Date: Sun, 15 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773547493
