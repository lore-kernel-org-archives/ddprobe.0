Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AAB64A8D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781924194; cv=none; b=hM76cFBMkdWTKT36pHRav1EOWTyeGV35KGCWjQEZNjGUGoNQJunFZ4ChJl+nqNxgYF28ejS8D4J5zDkUd8f5wqcn+I71KdMgj0Dh4k1HE1ZdeianTvu0Ujfh9SsexKPNTIlX5PRhQFx9XZftwMb+TOwBgLby+qky/b8BxNPGFes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781924194; c=relaxed/simple;
	bh=CoXDk/3mXE+CMeQmLMvBPlZOVCXAWWSGMBn9qbEG0ZU=;
	h=To:Subject:From:Message-Id:Date; b=S9CqL0/FUW8gQ/o5NS2w5WH6dzbmy/kCr8rF6AlKFynscn4NgycodWlAotxVsOqclvgxc458yPxaiOqbV93b3y8tzeQQuzjCYP4o3nQ4dhKrZlnzzF2dZmzNrATGpt3r998osox+zGGHxHgXtAPFFOko4QZgz4VReeXId/fZ6NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6mNl5sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6mNl5sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4554C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781924193;
	bh=CoXDk/3mXE+CMeQmLMvBPlZOVCXAWWSGMBn9qbEG0ZU=;
	h=To:Subject:From:Date:From;
	b=K6mNl5svXrINYRuOGj+h8HNv1kUxKcwFFhuPP2nqe3qnKBJjqMlWTw0UQZ/w/wHFQ
	 krWQUtmVtWRIyxnpJWmjHBWLfQ/GH3aFDruNRlncJ/DAckrR7Jh02KXWlZ1Rg5DKj4
	 d0rnzhqXEgixgGjgMlI5lEWcVjgSNJVdKLptL1sg0MLXVNUZ10LqCBNkw5aIEyXfNQ
	 dX+pnTzvee75QEKXGI+mkvJlqRrNLOqU8lQmdvN0oLTOGiwxEDC3ikDV8/730uNLBO
	 cOWRaH2GprUwOF8B0XYMNxkwfc9Tlo1WT7aXm2Kn4dXiUdea3orNonKbVLQe66zFU3
	 6bmvV1Q9TQXJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB081CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192419369.9934.11856877473400267469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc170cd41512bdfd7887cdd311dc615205d190ac57fa27dfa34579aaf1e744a
Date: Sat, 20 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781924193
