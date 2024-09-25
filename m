Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5253F9D5
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727304954; cv=none; b=MF3UmKE6JxdMQnLR3nJiGyA0GXts2px4OBo3BSan9+wn4451E4MjYW0Fh6jSEIcv08Wm36bnMUy7VVibJE+dvqpO//p4cnLpPZGDzOchfJhBEnqMtJ9CtBPFjMXfdMQNS58qaNPHnqxHBgjJci2IGXla/t6CdrtWehEMaO5119k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727304954; c=relaxed/simple;
	bh=NiISOnNe1cv0q68l/wuldrhNFkpiYi+cQPWKWy3ETKg=;
	h=To:Subject:From:Message-Id:Date; b=X/nm/xUcr84osx5VSrEtSlx5tnsCFrVtI6dp718ojl+EKmjdzJyJ3bD+HAqxoRuydHxgTpVr9h4O58aRt7afYFZ0e7naNkLHvY7eAqRiynYggWastuVd04hUsv0yXgDnnk7QBbw4UoQ7zB4bzjpAv/f5UvGu/9p4cPF5TtWq7aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipw0I7Ns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipw0I7Ns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A56C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727304953;
	bh=NiISOnNe1cv0q68l/wuldrhNFkpiYi+cQPWKWy3ETKg=;
	h=To:Subject:From:Date:From;
	b=ipw0I7Nsj5GhfFg17V4Yi5mg1xnwnuA7PHFwjZpGFwm+QUM7zKm6ZuNQn/UFVNOCg
	 0puuAi+6hHOaq7cfHSL53f8QXVlbJEsmPf8/N+4iQV/wA1wbGgww5Dr+sH35vZvYw1
	 zaOfpsDNMTLdaQJgWP8io02tNR+h/3sV6Y8rW8DtPddtmbEOJucFHSPJbEZzacC7nl
	 Nt02wklSCSd+kkILz/R3gWaVJZ5Jsbz8aUQLpc8ZoJhZkiCmzKbyZcLQouZUADaJYK
	 3PkULAdZcJpbD/v04/SdVfgXedh4MHhxGP1JH/Pe+kkubGvrcjzEu7nqFoEXvvnfOD
	 ESk3IU/TIbsXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91703CCFA05
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172730495358.6285.2282426683992097321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7952d89750c2689e3dcb98fcb9b2d736571a0eacfed8852a518a4df902114ae7
Date: Wed, 25 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727304953
