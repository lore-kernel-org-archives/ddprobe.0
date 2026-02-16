Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAA130EF8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771249494; cv=none; b=q0RxjjYy5hW/KhJXlqwOR85dr8UKKTjd6WfjTDJVD+O4Wgwy15afzsNjshY9MNUb+aklViHzxHcMldScG8pc6eFx3fyvJ70sfPef3XQM3ZiyNNPTqzGBYuclG9c0Sh/rO1qLSpb0vdELvBFMHYrclbPdt8ndJ5Vh2PwqcclAt94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771249494; c=relaxed/simple;
	bh=rDklnoUPNvRg0uskRmNG7jA8SbTZPWA2xzMHNzaPisg=;
	h=To:Subject:From:Message-Id:Date; b=NncTxn7MrK7FzoWHqBWrTnONneSrLkVTZv01L7PMQxZvwE8s18GIgob8VBrwYUaRdYjpMb1r5aDdI1kqI7PVb7uskyDtJJNawEnt+esHIRLiUj0sUenes9xbmDt8C3zGBgtD2/vAbBp+bA2DJkDEIVTbt4z0qpY0wg82YmkZmdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LS+vvrOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LS+vvrOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26D8C19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771249493;
	bh=rDklnoUPNvRg0uskRmNG7jA8SbTZPWA2xzMHNzaPisg=;
	h=To:Subject:From:Date:From;
	b=LS+vvrOkALMGz09+DsuB8j2YLjvW+R6OqRqQTjkZylukhnunZn36FzItz+GmOKLSI
	 4iu3tj8dKefeto+XVYWrLPyW14ga3xfaJE2xxKfUk3P8zehxmHIkQgaPyaFShsaOOs
	 hMcNXGiAQqhCzs0iJhDWqxeXsAkTPbja/X7y0bWv33N9n+MphfyRBQC1URMmFBkjlj
	 zj64lIhPlgezBCRCaQERekT6HfSf1TgYTZfqNGYBRDRQU42Mz2zG7q0l+jdOAjNFn9
	 PRWh5sCbe2Azr51pc6FyYTxQmYHs+lSGk8lNHxPQ2PmYFnLepSQddX6w1HSVK8Ggt1
	 Pjx1MAJig3uqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E617E7BDBD
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124949363.19950.11701363730559533847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ff791a59ff2a8a347c85746aee57a39d5652b4deaf0549a2b013cb56682df9
Date: Mon, 16 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771249493
