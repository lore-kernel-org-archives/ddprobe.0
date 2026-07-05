Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA35345CC9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783274914; cv=none; b=KBovz0NHxTp9Fin1Z+ZGtofTp3UCg4dOTRinEvIIlcfGCvQh8XwxGKytVx7wDNLYJoroGVWdMhZVCbPSwo3s2+CxTLYiEteuo8dLAQT/ccQvmId6vwAGVkoFQGoZQPsa9IO53bR7u0WD16ia0MgybYBRs2Mo/jN3/ba8YzIwKog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783274914; c=relaxed/simple;
	bh=I+4RNcLBQB+8KNticcvHAPN0o0pj6kxD4u8i6c1Sisc=;
	h=To:Subject:From:Message-Id:Date; b=lDGPa3OZU2CUT/gZmddtmYeZSa2gAZW5OQ0EuZtfEo/DHsvMcJt3jsYi9S/B5bzZ0ligyLkMxvVcd32XYb3rRwknXUM72cBnzYW04NW6uWgVkYYRwBx80zrgex/gMP0Irf4E3FpubxWJn4eGJsrJnPhfkvvDv+dQ5PoUsXQGvZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrWuW21p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrWuW21p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB82AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783274913;
	bh=I+4RNcLBQB+8KNticcvHAPN0o0pj6kxD4u8i6c1Sisc=;
	h=To:Subject:From:Date:From;
	b=UrWuW21pC9F2ZcJBYyyRUUQ1bHQow8DgvFlFIVP4JKfZl75KaZRlr2xxR8ZrWlck0
	 rA/m0yHozCcxABpSJsaSCsxAdtet1L3hVRM1+NA6R8GEYFqqXDZJPqaOPnumfuE1+i
	 nfSdI9NddQpMY3sIQlmklWb5e+89HaDXpgmtKwagMkS5FiAHzhLerkt5VN7s+dCzMW
	 T08ZfaUXTDjMFpWgjS+PNtIiNKOduHj2+qXvbLUzwtdmwiMg1AjOAB5mYC+E8DMzDg
	 Z38vIQyR4hcRxjcuRVaWGLs7EZoVzNw2T7WGPrEln5X3f9nAvgKY/mqvoGHXOmxhVL
	 DMjVp1Gv6+kZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8047C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327491368.23138.6663812477642489234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23a652472a61f265256e0ba94fbf4cccd743d4affb121fd86feb4f0f4c6e8ae
Date: Sun, 05 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783274913
