Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2815B30F7FF
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792269634; cv=none; b=hd2rNyEOI+5vCAxgFBx5G5e1svpabJLhV1pH8sntGbD/ovucYE8c6j2h/PX/KjIim4bktAJkknPrwvJ/DB7q0GdSpsT7LdxEI2VhDhd8WRYupU1p7wv0ehghZ9EqOZXfNBeH6BjN7T5vXbQR9eVoG3FDlmehjURlVz/2IAOdiBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792269634; c=relaxed/simple;
	bh=WRdBEKN6GrT+tk8oMvi/opGxvnjF+Iq6q/ACXlr6iYY=;
	h=To:Subject:From:Message-Id:Date; b=pEhr3Hvfmw3piMcjaQDIqT3jhmP57Gr5S06czcKp8ea3SppwjzhHwuNBs7T5bD1+av/aP4dW/Ql9UO8Vks771Vu5t3hLnBeK9xeSp2DoE6aClQ+HenyhEtHQ8g+Tv2PxjdYkQ4T7+EG2D5EnKOPcD5CYlCiejA+ZKr4uUxtaz50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGZUMZKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGZUMZKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E59C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792269633;
	bh=WRdBEKN6GrT+tk8oMvi/opGxvnjF+Iq6q/ACXlr6iYY=;
	h=To:Subject:From:Date:From;
	b=uGZUMZKOssd04tTnVtLqbGsl95Aeapq3rvX/yQSWicbTqSetIozZfRhsy3iQFtBUF
	 844DDaWPc1BO4snaFq4A3r7Vt9trG1puPhBO5oWwqoy2F5ruhZNQlTPWAp1xza2JTt
	 fRlsRCRYfV/L3RVPAcilpWPH5GTxKThHwnDI7SZyzKh9j5GAeTRVjtvJujApAS/Zt6
	 sRYNBv6Ty9D7WDMn19EtBS8EE0WJ2+WYosN7jVCd5jjpMdQgrJSsXavfFxrgyIMUwr
	 Qyq0ZaQt3S7vB4GBqRmO0PyITRYOxcHv39Ss64F4S+z9evep7MoCLp5i5FuL33GiaH
	 GVG91tvPchB4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA30ECCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226963375.14240.15005280326282923000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567299b15430c1c709e93b5866e378fb31770aa7cd7129fb71d352c607daaf73
Date: Sat, 17 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792269633
