Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4943AFCEC
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789239034; cv=none; b=CRCDrhwKRE5IhXhq2cXDWcbriuWfpN0WFaBRGzanZ1QUx+QIbrxC9OsxEXhpayNEhXKM48EWLpFwdpL1OwoYLDfYtHQkuPpWw2UGPYNhfW07RGGLn2SxIk5ts2aA+ThDZnnBoioZ/emlUjHgzleA0syu5kh1+2mcJ9LW4dXOOi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789239034; c=relaxed/simple;
	bh=hMkAvvssGAYUBEpqDHMbyFllSXOq1vYIngSVUUp1Wm4=;
	h=To:Subject:From:Message-Id:Date; b=JX/rXhVDdSRfjVqDIBaeu1cNQ+7eNjjAoPU9EEixGKptIeh/TRU1E/NPH0qqgHgMJ6WY7K80vae5uFS02lJHdcLaPUXAXjKC1xpWxrmuvJP47ozPhGIsRyMnmMl3Y/LjtCWiTCQm/nsufSJvp8T6n/ntz39Cm2D/mN9ZhyrnMso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbtAFA/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbtAFA/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A2AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789239033;
	bh=hMkAvvssGAYUBEpqDHMbyFllSXOq1vYIngSVUUp1Wm4=;
	h=To:Subject:From:Date:From;
	b=dbtAFA/F7yPIOUcXv130IAL4p5geLSGIN6bYFXg3m6funX5ddqbiSwWY13kiKPkv5
	 LvZP2u7FZoVeD1WwZ9wF61Sl0xn/PuEkflEUkL2yHX0qdCnupmIDXJlmEsI4hu0X4o
	 nUC+SmHfdvqrlI9wLdNhTAt+++B+c7eVaLlB7mdlx65EgXPeUEDItLYZXW1gR2N7fy
	 ZcEUeFEWDN7K14YKss6hBOY0h1RCtWqot8XbIvJpohCJZ3AKHHeNMD4M7A1+qfSbwI
	 Cdnvom2NrImgU+mhMvI8jPZVSnmFVwhhMvvl6NqT53+QGIy/yPplg0+5vwgoffTAKk
	 76Hf9iQO+rW1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCEAC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923903368.23993.15519901312515442342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690fdbfee7dc64372074bf4e4a04d7dcf89e3a606e878d3a047c91341b7da374
Date: Sat, 12 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789239033
