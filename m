Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4398F40B0F2
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786005034; cv=none; b=AzwT3bsnDUkvUKfyaWVZ6UGidfLMbqPc1PY4T0ME2L96xcYP6p4q7nzWsW/MCZYXzvKpMFHxLjePs0oxfonXRvFT0EW1zj5xnqrw3dnOK5l9dc92pLMqx8GmHVpOJpSZzk2mt3GX+SdsU13yykjNFn1byqT98qDnrwfWjtU590w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786005034; c=relaxed/simple;
	bh=c90Q1VHLPbToileQZ4U+tVMg4Qip5EV81P351Q0ncEw=;
	h=To:Subject:From:Message-Id:Date; b=Sa6zHkwzBUe8kCejfuRASwULqVpJQGbyhvj0T5PNNXqZsLbQ9wEVl8txkaCO6ht0ozH1FbOgN3/lU+WYsZnDmA6T9a4s93QOiBUyxgmsUPnr22IGyOcRIDvQZpKu6bzY2rNEr+/EnffLVv/v4YsyF05UcahKyW/fm6gcgzdss0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHqLaDmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHqLaDmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E5DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786005033;
	bh=c90Q1VHLPbToileQZ4U+tVMg4Qip5EV81P351Q0ncEw=;
	h=To:Subject:From:Date:From;
	b=WHqLaDmxIHl1QLIa5zBP6mRo9vAjRKlSfeox5X4RQx2kErGFnRZPjUd2gqL5/ebEq
	 Q/6dJpzv0GiXnkOYXgamggtq0YFOCNa2oxt1rPL9ovkBkHERJ1Twq4v24pomNZqXO7
	 jI0F8wNMBplfjCb0wzfc/8ldSPl7TWre2KzFt/JZvpAXSW5uA+ypzgukffDO4HSh/R
	 FI/DAS75lCBTl3Tvt4HPsp99PkTBldcsX585YZdk+jkVoyIxmp8SJ/RS80pLuUZXhM
	 MI74KPUOh2MXMt0LWnvU5W/SKxulFb/igFV3x5aOBzwEoPICt/1CMXaXqV4pV0+ZvX
	 Buh86qvvg6TCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4DAC56203
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600503369.14602.6885337132150686091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b693a04a8f8a629eceb589c042f4adc2a974a0019bf890679860e55cd07f2ca
Date: Thu, 06 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786005033
