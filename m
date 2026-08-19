Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644AD37AA9C
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787119234; cv=none; b=hiQm8lD3PmeW+ZG5DUgLqqKKges7BQldXZzhCyquApGU5MRazjMrHdHZzpAXZHBqWhu8kiX7sdl9FAqfzeReGtmIYjFQRbadcZsajc82bpEwZ87O7VTb9ZZ7Spf30JWf//m4Elz4LPDgQQVzg96Y4aCjsdmUNHkq73BLGF/fIds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787119234; c=relaxed/simple;
	bh=AqT+h2ZzluDlraEZWUZ/rMcJcxdE1MvtlPyECUgdmPY=;
	h=To:Subject:From:Message-Id:Date; b=HBIQu9H+kZKUzYg0qAQWEgbkakI18CsIs7y9c2H2Ek2MJ/yWCQG8KiJyy1/+mM6z1q1h2OZx74MOfV4Sp04JqQm+OHrQGCVciy/tAtt4eF4thSsgxResQoHqR6hkPmm6udKY8mL0XHUZD3Q0OSUA1lNoI9VZTLMhuPNwXnBABNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9quxU3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9quxU3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE796C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787119234;
	bh=AqT+h2ZzluDlraEZWUZ/rMcJcxdE1MvtlPyECUgdmPY=;
	h=To:Subject:From:Date:From;
	b=Z9quxU3F3oXSMLJw8jUCwlLEy0WivKBz+0plotYi3DLeKN6DFtvvaO/QWbDSy9KGc
	 l8bkZzKPQO3oUf7GwxIfZXQUTcMTBBrDxOKmDoVnvaa9DKn4n1ZSiGNLwMTfGaJ6gQ
	 pF6fWKQiLXzIc3ETXJTejkAS/80joIC8VScYIkp2b77rtxo8hE9sF488MK9YQ7eC97
	 QWMCcG4eL4/MsCol/trZaXrf3IiUamLNGDSRby1jdV9DFMaXyGIHsrGQ8ycGvyi6Us
	 vnik3L2iByLQsJrsyJ5gioxvcpehirJ0SmLCD2BLp4hOEV0WBNeujZhf012rJDcdOm
	 BaBV2LYyOsRPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA145C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711923374.26719.424760211511202402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001616f06ff6efb2415fcd1d7e8a8f6f8185a5145fe966afd95e5f31ab4cb79d
Date: Wed, 19 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787119233
