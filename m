Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC3D3C2D
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773081894; cv=none; b=aV2NNkTsBJbs9mJYT7bpf3qxJOak6guGOJkQ4Uitl3K5DylNZsW783GHg9zO1uFY9aLheek5ggI+ZvMxB0v19fiM4QzWXmRy4XEmWO3BGpvi++SgvfSiKYULGoju7UYTAIyiGVDj6UZC8Ws01wG5biW4xI5LMz+UYnHySxctFz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773081894; c=relaxed/simple;
	bh=w/MRc7Ww5hW8I63WvElYRQcPgd5zcHm+5j7aLojAFto=;
	h=To:Subject:From:Message-Id:Date; b=LtZKo1qZ1Yi26I7f8xUpLWrT01QBuiZtsMt+qjIFkymaCWeI/pMFefsUlfyEWSQeQrD0TAxouGY3re1GcKrJwAB9EAwyNBt3wLOEgMb1Xws6MfU/5po+jqDaS8xpLwAHcclISHkWDfuej+3Md8ZylDHkCzQDa1vs/BN3Jg6qLXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYEG/pdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYEG/pdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC590C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773081893;
	bh=w/MRc7Ww5hW8I63WvElYRQcPgd5zcHm+5j7aLojAFto=;
	h=To:Subject:From:Date:From;
	b=cYEG/pdd1p4Hq/DkAcSkgFXcJZUHkS4nadF4VqBlg2s5UWVONGz/y12SSzNVkXdtl
	 knEAIcMCeVS32v5DlNEcXBNxu6/JvZMrtec1xv3rodEX8jx0uGQAlEzFzsW+DEWShn
	 cVPpyzagezXIjBd0BYQQmXko8nxGvSgVYYhsKLkO9w4Zo0a58+UA301/nGOSk1gMWR
	 guGZTVkPL+DYYM99fEGJgHtffEi46CrxM4fWm7xNDrrlnVGMLO4R0ovupAcuxTbcuW
	 2IJuPkPZb/CmdEuFlPyer7Gkf9C8iQUKk2pu3KGPRl3ecfT9DLGIcpFa6MQGB1ttam
	 VzilRdxWgWKtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550EFCA174
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308189360.19654.400398426857615759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6794b93fb0b30727ace5a6ee37b499964fa0d43035c36af85d61e1c779a4237f
Date: Mon, 09 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773081893
