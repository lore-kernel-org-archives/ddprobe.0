Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A883D9DAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779369034; cv=none; b=LOPe5RKS+gG9wdFpDpT4WBeSPRC8QSfdEZTBzCo9d3XU6ZXytYF9c9q2YSPH/dC53p42qT7wqDeiWTapoM2U+QpxcAn8LSn5Tk3GEffiPq5ZWhmWdIN59rsBfrSVbuFLx1uSKuh5A+PNBBgvLd3fuBRnwmmJSm+Y/BCNmS/hkC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779369034; c=relaxed/simple;
	bh=CtjyXnzBUKfqLpGAuzC9urw2Xbu67B34onxTvv6ypKY=;
	h=To:Subject:From:Message-Id:Date; b=U3WfFrRrPKnhZNF2ah35eW3EcYSm9yBliaj1vcmtRkdhi5ITerJxRrMYrh9AquTQLi9EiqhR7tNKujZOcKYjd+0HuHqDHCqWBTHRCqAD3IG51jC4Lblzey6LycqxNhRiC5iuw8zaJeLAx0/4StySND6HO2sPqqRkc0acnc6FkjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOgvDPUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOgvDPUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAC12C2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779369034;
	bh=CtjyXnzBUKfqLpGAuzC9urw2Xbu67B34onxTvv6ypKY=;
	h=To:Subject:From:Date:From;
	b=pOgvDPUT5zXZ5A/Fx9h1aMX9xOHf2inJq9F2vDUX8rLb9WUDB2T15ASs/CxQmov1d
	 7GwRfPFi2uN6tYrEIBHs591tg6nryhuNgh10ZSPaapPNEBD+g9YAQ0wKeEG4AYukR7
	 FOmsoedBbwrZKtW3ByEhE6foum4kI4JIbkqT95TJjFqXoCQXkQK/ROluxiAeAjdTOR
	 78jGNZK3V3ojRUR26tX+jJ8DHKEoYWv4g3R1IUywFIILMDwltaLwOZ7J2EhRRntDuR
	 PouWrqL4O4trdwOiI3eP/lUjD4wH7eNdUIfmZECOgrNkKPOaSuY/S/CwB2UXHHlrR3
	 UFPglpqO3PMoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C46CD5BB1
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936903378.28062.16250831899652591296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387206873cffa0ee1bd91be9d0193d79a5cd82ad5c7f8c48beb4f257db6548a6
Date: Thu, 21 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779369033
