Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA75F4685
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748475593; cv=none; b=QXXxHcDnraIJyYAh7NULv55xVMvcH94e+eU3eCIxzXFnOdUaWLwnd9nvovA8jNpzqTG/syEran4X1u2RSC+q2dZcAdk1eFhQJ/qiiXn6klx1Hn5Lfpl9ItsNWuIKyNTfVrUjQettfuZK5cpt2t2NhlTN/adCR4qii1klug0gpXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748475593; c=relaxed/simple;
	bh=PrJ8qNIu9YSjiAvTQnD/RBfbOq2SLoVjqPP2J1uT4PQ=;
	h=To:Subject:From:Message-Id:Date; b=Xz3rFZIkYPLtgo2fYltK0d0a8tUHvaQYribZ1rQjbS0x91O1BEIWG+LkhMMor6Pw3BOCkssxki9XUJk4SWY8djv4Xi3LhNXGO4HGiOko7KXWlGpwoNLIzC645xwN63jJSYCHjwAlau/kmo8cUKfAqU3RSKLFr2rCipPaK/a9F3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exQd0xCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exQd0xCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED5AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748475593;
	bh=PrJ8qNIu9YSjiAvTQnD/RBfbOq2SLoVjqPP2J1uT4PQ=;
	h=To:Subject:From:Date:From;
	b=exQd0xCskft5NCmVnVJzH7tDn3m4cvA7rPthaULtOQnlVdtDKd3tvrsDzNftKc1rB
	 OUwYJCgGpiD6QfRdmnSVpmDAwG8vwS5LrhhDUOi5Pk2Fxw+ehuzuxuA0YEuIA4Y+hs
	 f58HMY/z+482d3han27oSwloW9DNdJC4bJKIFG2pGu+Au7HF/jstLwRlYY9URGVcMq
	 duPXr2oaIjdrSGOhT5tcGifvdKm3HbVue7mO35Fqro1Wck3CGzCbbU5dUvnDPPoK6i
	 ETrOLYfjHz02pEgdB39jyo2L8uyJDdVaPdIwuTbnlZrxYqp9FBGiTBDStAy1UJSCy4
	 S4+tgUmou4Zjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCF8C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847559357.11482.3791074233174946265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f323c781c2cfec861e578bbfc4398a2f6bb9a43818e0cc565270f823db6316
Date: Wed, 28 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748475593
