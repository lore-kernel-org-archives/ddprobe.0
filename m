Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD0F3B47DA
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776908856; cv=none; b=TXkCvM1DLRhPLPBVK6cpj0UTGAPpz1KM4P/s7WLmEa15jVAVebrarOjkxzCEa1FLTK67VWB+KwfLQ0FzK1Kx4d+9MSDaFmo7+RO7OnHwUxWcXnogeCbz4ZmbpJ917nRox8Qs+SDGkRtSsJqxmg2e6KRKiJwiC3y8RZFoyDq0U8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776908856; c=relaxed/simple;
	bh=sBxp47TbmBAKvDo/BsLfW3w6R3MD9BOom91xZuiI3M8=;
	h=To:Subject:From:Message-Id:Date; b=J5ogG/WQbPdRRZrGp0V5OzuRvZR+3riagoz7R67JopQQulsUaOTdbZ7LLb+BYt4PspJpsg04nP3BDpM/vA5YGYbbHrrpC82T2zoK5+BL+5dMOna4G/us2DiMPdw/HB0Nof0vgHj9hhKF+aB2MCRnxxu97fjk2oAQMloXGuO4EWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWy9SlqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWy9SlqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF233C19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776908853;
	bh=sBxp47TbmBAKvDo/BsLfW3w6R3MD9BOom91xZuiI3M8=;
	h=To:Subject:From:Date:From;
	b=GWy9SlqM6zRkC9gjpJ33pBEyVeAq0BMbIG549S6pgWZH3rDyfOnlvwChMM1GUcYX9
	 S50LAsFNbChSkzCU5YtM9XQCsKvxUPAo6HLJcKv/ZXFfS7k/6tBdRTCBP09wjzw7eg
	 kFu78YqDmZ02Pafolk0N0sU3XukhehF8Y2kXOEnKBGK0FXRtaIe2e0g7cxteilghUQ
	 eJ3L4KYzlG5wGy5xUIBi6Ii+jm6J7uSrPShzOlWse2p0dBEVtSpVNbBvpWg++ZUfw2
	 IepEBnxi32EAPG0hepSsdeQtA6/hkWn2SW50nIXdTew16nDk6w97FQKevfeEFZmrlQ
	 69Z4yov1+XKRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC257FAD3E1
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690885368.25315.5898600401510590150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847c76fdc511dbc73901208db6dda0da95cbf9b00f17786a6462e1f09b0260af
Date: Thu, 23 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776908853
