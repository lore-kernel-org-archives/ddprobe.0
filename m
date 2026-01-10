Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C9F1B4224
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768081434; cv=none; b=TkiMGsobfZz6camnOkSCMvXMhPlI6EAqj7tHlOjU+19HzFO//6ithF+I1X/b0qtVvhTEq/lH/Y1BoiKVtnHoLsf7P2uEdCkB/V0hk39JJyGF56Y5EWNFKcZ6h8bJ9tX81Nm/laz1cg3+p5PHdn0kqGXtn/h6wh+yySDn/McssPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768081434; c=relaxed/simple;
	bh=QDgPBUO4x78nqtDaxlphkzhk9D7VnQtLZHSuh1R6iWo=;
	h=To:Subject:From:Message-Id:Date; b=HvOdRRPNXc0ox+MSyscHPufb3kub1UzvTC1k6WKAc8816W+PEDDCoH+Wwxy4ZslYJGxDo0z7zHdQrcuqgQ808p+VwEaE5s1rRdCZdCB3oF3ILPwooMAtY/FauxLOHBEMUw5wfcCIkbgD9AwRBHmnDd6DOQHJqBYHDqJ+NNS4/RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enjdh+7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enjdh+7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6212C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768081433;
	bh=QDgPBUO4x78nqtDaxlphkzhk9D7VnQtLZHSuh1R6iWo=;
	h=To:Subject:From:Date:From;
	b=enjdh+7GTUmG5zPtrZISUjbFVvojSAdfAHm8CTH7flKy7D5vQwcZWEVSnIhyrlqH0
	 1dRX+PQtv0XagPFBO/iVguvkI1qtKS6ePEPDu5vM6V6MI0JXeOO+Y2hRIb4HpUrYAo
	 ukkw5rNaSP7tQgeXqKXwyLLdQLi5nIqHdqSOghVQZGBYRA03qrHqLx86FH3ihSC7KC
	 BtRKP/kxR627mFVofIDifjQjwWmDCK1He5f8BCpCIu4Uc9kJ2g6L8wtjCv+Hb1PCLH
	 jfg1GuA8/4cMVI/aGoju8+GIPUgy1WxNZ57nLmZuGfBrqrPsorqdSCPOBWgPdxfpb4
	 +DtXVqno1glFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95270D25022
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808143357.28420.8514340368034449610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eedf51948822a56afb54902e681a47a96150426ccf704dc372cc5090e353f1a0
Date: Sat, 10 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768081433
