Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C8C12CDBE
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782705514; cv=none; b=rUu1gn1v5PYk+x0C29VAt6DdKUkiPHBjbdtWCZvzrTQNyIGnvA4XNxq2Yekvl157agKF3fWATcB4X3t/KUdmN2mAvjx2uZW7MkYjLWdK8UMFu5MwfH4iSYXKVPaVzwAuI+Q3M43xGqzEWmBmBmptvNzeEG631GTUfyDPZ3OUQ6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782705514; c=relaxed/simple;
	bh=nUbH6JkIVN1oDiDd9ZcPbdJhFPKsqfzB/pXZFlyTHJM=;
	h=To:Subject:From:Message-Id:Date; b=EE4yMpPYqlqrQFIClcO6gfn+UjgVszs1epjP4rdrn4pbtl2obgIDg2WF6Er3Kaun8prK7B6himZpkuqPuZVM4OhpvywIsCzrryFRf1pleXcm6pUl6BPMdVK04I4A68jdZ+BQPUl7y3qnwcuPPoXIBH2lFjv7hX0SJlLRJtOIjLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcSwKmrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcSwKmrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B92C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782705513;
	bh=nUbH6JkIVN1oDiDd9ZcPbdJhFPKsqfzB/pXZFlyTHJM=;
	h=To:Subject:From:Date:From;
	b=fcSwKmrxl5WIn5wklF1rRkp2wdnBnN9aGkwJMXFMQt8WrfTppmeGKJzYoCabnWREv
	 axpkMoutJicly/S2ROkozkrNhVWYlkZU7MdEfZBHVhEa5cI++TrPKqxaVpEgOj3Z2p
	 Xc+Oh1d0nHKBfIkgYYCBBCEffwj5iYL7caeB1GN3hxX6d9KGXqHiSFsBRHGIhNSJh7
	 rmDXsfV+MNtenAwv76oPFdnPdbpqqxnmG2R+WYkw0pzIs8RBwKhUEPjxKuYP2UGXEY
	 9UVnhHrGp617rBnil8SU0JN1KQJIFyQLgH22jn3v9/YDFMB+0SJdm2LIhlw97sMOIO
	 3NvSouFIg5aFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA99CC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270551368.24239.6327846335917768266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0dbf662788e30c3aaf86e98dec2208a8c0cdb6bc4e96e3cce561a66d964ed1a
Date: Mon, 29 Jun 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782705513
