Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A411D5CC8
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725390954; cv=none; b=S/kNvDqli1cR9M6ZL9udP4WGNFbyzu+7o8b672NhlXMFBtFh1HNTkQyR7XgHMZiSFb6oqako6lxLmSkPLPGs5BdKSeHgEuU36vII951Qzk2F/K73yHW4FNLUrWrpN4j93yL11UImEgOo89DnMcnQpe3AcJ7yKCfcXXhK9PYj684=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725390954; c=relaxed/simple;
	bh=c4y6maPinadkyWpq1TGlw1G5adu/ey7+Ge4paBSo0rA=;
	h=To:Subject:From:Message-Id:Date; b=jEDHuU4lCmf2DW/GRSze0whJsLD+11q45ADtZAtV6wVgC6mr4qSzGHIoRRaWXLKk1d0DXhkTRyzKTQQ1vVcVUbtM7kwobGVSubs7/C2MQCW4e4ts/Nn1xzdricB2Nf3rUrfMKQP2WrZUynX/DtL2WKZ5MgKGsLVSdtRtJJ2pD5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpdaoy9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpdaoy9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B242AC4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725390953;
	bh=c4y6maPinadkyWpq1TGlw1G5adu/ey7+Ge4paBSo0rA=;
	h=To:Subject:From:Date:From;
	b=rpdaoy9XaGRRaqC6fi2oFkbwuNaRJfzpEuiCBiw91A2gNnhjennWMBNMkz6WhPLD5
	 S+oCdeJptyFUHZzW3+9tzuMEKS2g4dh9N7Dfrf8flO73+fvQ/xJlUm4loAGycJ2LWC
	 1FDskUCO/kXvhfC9dBJi8fFMUjaQkCa68EQRhGpjJQcYM+/M5zb+78Vks8jTJVY+cc
	 1aDCiutRkeoKBpFfEf3b9VZ/hZK7VCkFO7VeRe2rFbQMPWHJ1GSMSV3FvYbzxz20Ey
	 MC9y9fS4WW1JAKoI1u8usGpLAI/D4S1nDxvoGySv0wvXic5ZDWGLg4sZ+G2of9gIHy
	 zUl8NOw/S0Mog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E512CD37AB
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172539095363.20302.5146082132393704527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4538e3ed95dfc4f4779b3651f4081eb11302856be75c6f79427c75743ed8d57
Date: Tue, 03 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725390953
