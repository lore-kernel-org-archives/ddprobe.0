Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F76189919
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742982594; cv=none; b=Djwpgv2aBXrR7CirHt1ixtf56HYcVdFc2rdcTEsd89DVfXJem17FuI8W9okRRvePrBhVKg/5sgkDiH3V8LeAr843UILTq0iM3vrUyRCwAbiKYPVbbVvD/oi3I79sQuaVXLaRnzCCWHT+rIjq9z0trgHYVZod9tQ2ZUiqSAyVkSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742982594; c=relaxed/simple;
	bh=bVe2hMQy7lKo1kocjVYadYd54LfL6MwdtVfgRdY5rJI=;
	h=To:Subject:From:Message-Id:Date; b=OxDzNgave7d8KIu3yzwfAn7V15L5VsA1l+icYNg/G7jG2pVcv6qTOZiEFgO8G94Ao9KXhsmtrM816Dt4ocu+E4sz9IjMxzBm0cP1AqrFpzn+Gawnc58xVm80cuMxTFmoQ7+4GF5GWq4G3Chtw7DRkXHbMJH+ftUTg303lHAS2S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWCdk3Wc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWCdk3Wc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B3EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742982593;
	bh=bVe2hMQy7lKo1kocjVYadYd54LfL6MwdtVfgRdY5rJI=;
	h=To:Subject:From:Date:From;
	b=DWCdk3Wc34IqqqhoA68GrA9sw07+gUar4EL0JmrE2omledLc7YObrbp4dzZ00xUHJ
	 uV/0zdn59G6powT+BELNz+JcINtxyIM3UHCFAZIxGGhFRL4RFpfG9Cma4azeeQTOgp
	 Yo76ouUXOpLIjwvvPzvdUxQUJ+wWIXX6IXTklgIB5j/9/znNe4MgvTwbIIQCaNJzFo
	 LbDc+TVV0XSPDF2caYjqslvuMECz/ahB9NqwNmpg6h2RGAkWN2wj5XZOWusY/QNNM8
	 H7dZYWAIH5su+PhSgOiV24gDueHMySRpBXEdMQn/m6WzpUVQtqBf+JsHknGn+ncd+6
	 tFlYaVY0aexgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99100C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298259361.22607.2604139617308871791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee88573274b3c3322a2c9ded62a2b12c1a5b809691dbabfb12218698d497fae5
Date: Wed, 26 Mar 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742982593
