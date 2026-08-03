Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4541E38F92F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785765034; cv=none; b=Yh0yvl1HIKcgEbrfkljaE3b1y4RSHYvhiXlEA8WlpBZSK72dYUo1x7ZCXuf3SkJI89HOfHlzS4sE2PuHnGs1SjSvw7o3gd0+pgZlHcU87Lax10rSqGdj/vouagQxYlm7xJEb44QTja/+fAcbZhNnpB1yRLupw68jaXYt3rcC3Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785765034; c=relaxed/simple;
	bh=XJCD+FC/2mIBF6K5lN/SkBHI72UtS19rYkVHlT4BrYA=;
	h=To:Subject:From:Message-Id:Date; b=r32E9SUq34Yt2biu5YgTbSZsNpdmqnVe4oX5blKCbTxOvrIohmOWeFLSsOYmslRpt4NU7A/7IGPVbrUrVB2laG1xdNjcmdRcAwvYwmt4dERX6Pnc3Be9fSdBcaygZrB642wnkNiRGNcSleLA0/gLaqdmGjOawv0blbgZmOXOJDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9vI+MtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9vI+MtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5B3C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785765033;
	bh=XJCD+FC/2mIBF6K5lN/SkBHI72UtS19rYkVHlT4BrYA=;
	h=To:Subject:From:Date:From;
	b=H9vI+MtVjtrbCO9CUYFbVzEs22aTyYI7VIAWi995P6qW1kYeud7M6xbyunNopUuQM
	 mdgMNlEFYziF31ZxxpyWib9Uz1cjOTSLfPm8KzzJvE42KM35OxsCJ5ldIzdApcW0xQ
	 Rn6bpFCIY0p9Q4KkvU+4ANy7N5A2miRXD1LNm+og99GXHH9/DYOAzN1iDRXUr4CnpZ
	 f4Vt+nkdXpQyhqX+NtPuhxcAZV5x8N79oovrt6QiThHkTUl/PUjcxZhc+S1qchT0KD
	 NpCoxX8+i8D86wa/u6yhUQJAEd2qSPvpPp0X/Q6xOpKEw6PpymKPhlgecH7jrSIlpM
	 jJ/yYWzvmcnow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1E1C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576503369.11679.6188131796884002793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1193f9efe30e6ad0d2cd7d9da7f91dd0779e0982d1565b3a08f58e60e61e694a
Date: Mon, 03 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785765033
