Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4599A84D34
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723097754; cv=none; b=JVrV6jK8PbegBLY8h/tVxA3hL5UvuqkdjR5LYW+3rVzOt82J8FyYmD73fcfYwMWVJesjmPMBJUza7RPo8CmuVlonTgZKQfWFP+6JjGlhg+DwnYTFqd/jXWMeyXPYt/bzor3RWNnFOKXudbulfdh/6e96OcIFDyOd0+9A105ryeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723097754; c=relaxed/simple;
	bh=jgu/dRRJ7kNeI+ZVcgcAowDVb0fT8Q3vu03OU87q88w=;
	h=To:Subject:From:Message-Id:Date; b=A5kdt3oB6HB1WEXMIjp1VcFiHxCnou5vu3kEdXK/ZbZ7LYjjE5KnQ9VlRf96RxIqpam418eUJ+zmTCn6Ie21BBXaYpX4/HN3aQzaKb3J/7EvMY0bn8DKIPIQBgQicLwCPFH+kj56qhT9ykImWKIzs9wMV7UU51oDXBuC7vfbipA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyetneuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyetneuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54E8C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723097753;
	bh=jgu/dRRJ7kNeI+ZVcgcAowDVb0fT8Q3vu03OU87q88w=;
	h=To:Subject:From:Date:From;
	b=JyetneuBIB7p5Qa5TGG0L+U8mHpWR/0KuXCmDQ4NNJ5BrNDca7Pbqs619q8+eUtvF
	 Dofa7dYG1psNWx/IJsjPZDLQRPBs3JhJzuyqORUby3g0KxOBp4njSaHr9yySEIOAG0
	 5DoIA7jh1h2N5+u5LE6chzIns8qzCNwtD5DnO4Lb3er018yWrt1k8lMnf//SCl3v/k
	 faCCWpzH9MDVKB9zZ/84+fL04jENoohPv46wAyy6BS9rW5WOmDUWZ5tMHkLQFQoSga
	 msvep7FPGGUaVFgl0qdmQ/fqiO0yR6nDVDtMgH1941XuvP7EOZM+pWeXmWKG45MNSZ
	 9HXRAt9YrORUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9174AC52D73
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172309775358.29926.11395212809464373245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cf06c72c9fc2fa3fca846e3a8ac81c231580edabac4cb0b9cde076ae6cb348
Date: Thu, 08 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723097753
