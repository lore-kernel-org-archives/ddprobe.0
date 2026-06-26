Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E9E3E2770
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782494914; cv=none; b=cVz5p6rdAdx/NCMHmGW9bAqrSlLcQeodGWbBinL7GQpMmxkjZ2IhVmYIwij3X7I4M4H2lXkQoyWqnFIiN6ULHe1noJQzZlsfHA4cvN8HD/nD4ILbz9ocSlRLSKf61Ms0T9Mq059Umd4t9EAYT1Lt7wSr8tCX+8FIgPhFonRdvTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782494914; c=relaxed/simple;
	bh=OfyzmCg+ObQoFby/E4C4NDfYizWItoBJghuJpFRELg8=;
	h=To:Subject:From:Message-Id:Date; b=seAP5sw23sqgrKMMicvUTnsIvWO7xsuCBw3FYXsQaTyNwVLAsVAoKNvHL++HKmjlud9gMaG5xGzyA/iAKqUoWtsUnmljPrbyzmwSB5TjLywammfTUm2rbXSFTvQkaGH9CFaB7kDmaNHUU9aeiop0eU2P5kOu9giAFuDzd3VwIXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2ypyOUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2ypyOUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 067AAC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782494914;
	bh=OfyzmCg+ObQoFby/E4C4NDfYizWItoBJghuJpFRELg8=;
	h=To:Subject:From:Date:From;
	b=B2ypyOUerPdv/XhhLL86HQ3GJku4Kzq2Y2Caczf8kusMzbp/b7oAE7Mot4vlmbEMR
	 OD1z82lon5iLhqcENUWsS+05TnF1IoY9BTebxgYrg2lubFUAnJZDpmDN054HkkN+fr
	 tBKeS6jaYg1zXYwzg+TTUaB5TOv7qO4Kc9g7FxChOW1LIuBnfGMNp387IsRCAgmUeG
	 C8E+n8izDPWpiV4vCJ8foguSymRhw7u8QERGQHv0mT+MVc+3GDTaI2UzyRtOhOq6Xs
	 EBLisbdbmglVnZ2p+FQ0+bE31nYfJV5cuQUr3G4gOO+U9v3sO32mCC19coB4+wHiEs
	 eWrNuNvpFnnFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0381C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249491382.23523.11866944909321420214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78e3ad01dfc238fc8c9dd9d6145a48e5b1182d572a1a55b5e9393294d49a6c7
Date: Fri, 26 Jun 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782494913
