Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C518C30FF31
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768202633; cv=none; b=rx9czfmHY8F7/sTDyAiBRVAFWQ+tOawo90zQuHtmpk1EG8wLjCSt+IQn+y7YkAlPEq9QJnJAozoQajdAk1URRVZWayzLSdgX7n7FlUu76lIwRXDmBHOH1c/NwyHLYs1lcr4uoE1qlH9drGFlEmGdDLlEXQorSkyua4fmq9Frals=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768202633; c=relaxed/simple;
	bh=SS/ENY8KkT2Hzwh3LlhQarEBKA10xGp6WyK6WFvV4Iw=;
	h=To:Subject:From:Message-Id:Date; b=e2yhO+umIhl2RCHqS7obhh7kWNUfNnLWrrqngwL0EgrOMdTX7vJnE3Fp6EmdKSuCWFUDoQTL0A+gB5GOESNOQfUtxzi3WeJU8wrEa0kSi/VGZDf/2OiwBJM+TJIIomusgowbGvTNPXX+FWT+24CX+pKSpToZJmAMZBiWkCxe9xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+OjKyai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+OjKyai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1A5C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768202633;
	bh=SS/ENY8KkT2Hzwh3LlhQarEBKA10xGp6WyK6WFvV4Iw=;
	h=To:Subject:From:Date:From;
	b=H+OjKyai4Q3uW3NpE3VIftEJoiv5q6NSm1JmY3EaEUHe6WX8cv9QO19sCZKIk+0WN
	 e5TXazW9nAQV53tRxWKHWE4nNjquv1hyYGfGEGyfO9HKnIh7va7tqgYf2Kht1XwNVW
	 U1nK+9ZPAd5nas3zMIjQ3RFimgc+M577o4+gE8VMjydXcU0DRU/NwAjomzXxVpV2k/
	 XFkW5XCLKQv/0MkWOFhyPSxS6km6Sdkbw+sEqC51NVOJauvVN94v6gs1CI++ocXtbv
	 hCRRFBGHrwQyOGS9dJSO59wWwdlR6kqy0nKSgLPHO7TmSeVQmIkP8J40XgGsJ0tJQR
	 ZHziJAOqUfiWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F72ED2503F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820263358.30713.17186183660313502898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a739f6e51eb5c2ebc3147ff7770fb48e64790b9e3e14b2dae72b81c223c341d
Date: Mon, 12 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768202633
