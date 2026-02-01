Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AE122083
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769920434; cv=none; b=Or6wJeltk5OU9NETPeopLgEjN4jVtNN5iCiDds7QVUDyjmLH0QouvB7JnfZB+9laKfJURk0SrEQLYQbOYXq035WrIgusa89tXLOH55LMkSoRhxgfYouDFRCIFep4ne5NUUe858gyqrPXKg4MUR/l2jKnjm+Kxuo6z+QKKbRbNFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769920434; c=relaxed/simple;
	bh=MRC4le5+xaHlXchn6D4+vo0GJfY51AxuOajpIzCi4mU=;
	h=To:Subject:From:Message-Id:Date; b=SGbPizWVJX3QY5LFqsILDcyZh2LQelbIJbi919v1BhkfHZazG95n9y5sDO83sBw6aeC7UEtp8NmYwvYWitAEsu1FaR6wHp8NmrKELRK6L2OdT3l/GOrUPn6tsxhhspmjWPgASdndQu1BxcIWPJzJ9tu2RbZwzMx0uaeRPAQ3JOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RM23wpV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RM23wpV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7043C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769920433;
	bh=MRC4le5+xaHlXchn6D4+vo0GJfY51AxuOajpIzCi4mU=;
	h=To:Subject:From:Date:From;
	b=RM23wpV4mYsXM30cLynP7AftWrpd+p6nygbb2JB2Be9ceNYRuIzfmtYoJLWQda8EF
	 YomBC41SU9m6DyUh0uM7AnpHvzIasXacFwshN2dMTaZxGwDO4EctNfpz5VRsr58C/f
	 fyTidyZ3CK95s6dlUerFk6ZXeFqisGFmUmvTHdQn4678chRu2Jyx1Ut7Jv1MGjboGG
	 cVTZxifgMAhhLGHFB9Pw1tO+4IbbJqyfErfbeujoxNfP+1EjRJqFw0LkAcKuSKkbMO
	 BfzizFXz59cPhPmsjZ6jOUMvneyT7yozB+I4/Wb0UTMxxndy9PHzuZYom3kC5Ljm9A
	 Qk1uhLYVW7yZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471BE7C711
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992043357.1688.3861321174837231388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86fd1115cd085cd30efce8ebe8719674a28288023d98f8dc552abd6e387e8f5
Date: Sun, 01 Feb 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769920433
