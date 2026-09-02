Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643B94772AA
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788348634; cv=none; b=U9sZPlOrmU8/yb4w4sQzGFXPld8QVZz7/S4RlHQRq2BI2wLVtm1lTPytOyVb0yeGxnUoFJ+7ecXKaz/vUfJMiju2fqmaef6VgpbDdfVWyx6+5MtbmWaIBSzaWXXAJntwc19wDrewRjj3UfQA1/mPlLHn76rBLnPIWQ2mkxMNztg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788348634; c=relaxed/simple;
	bh=rCeITcxmPhJ3nyC24qedDAUL5mmtWk3ecTWmbyfwLLc=;
	h=To:Subject:From:Message-Id:Date; b=JIJ4hA4m1YG2J7TfgV38TXkFO3wQ8YA3wXuI0/QsxQOIoP7tie/H2p2a9fANz3NY3fZ0JWkBmsOf+cdEntNoIlzVJTyLAZRbkVoqDZ52AzmGCtj9xqkhP957aPNT3LaSz36+5vIeFAxDDqsq+sHoXoslr3MCTghImRzSar95vVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=babdw2bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="babdw2bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE173C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788348633;
	bh=rCeITcxmPhJ3nyC24qedDAUL5mmtWk3ecTWmbyfwLLc=;
	h=To:Subject:From:Date:From;
	b=babdw2bd9/bn+fVEMv3BoE+/wKxSulMLxmkOodgu/UEFJv3SYeDH6hnLNuaAWW3FJ
	 +hBxZMoQqjKrO8bPi+rMBL1GBo4P/gFRjKqQgNDwKY/BzCbV85jH8/6QirYa5ofV4g
	 exLbkGVDYt+cAX4umrpapemfgZnVQ67KOmQLHIZ7S6xyTK5IXrbESlclyq5RrEyVFF
	 Sw6+C1ansbtdMhGxXwSVD7cn9SgxvVaMgXhT8wYghWpvUFXKf+cxk+9ZIsgMHzloA3
	 6s0PVnKbBff/NapUbJwVSacQH80vNOR4uKqQGfb7b8dLxr0iylzzbyWVP7ajj3EpaY
	 jY+QUT8h7552g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD04DC624D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834863369.22288.2570201848573215602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a761fbe849b66d0efd14520ae1b620a41b751ae08f7c6cd066e04a090cf9644
Date: Wed, 02 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788348633
