Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A7C208D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719208943; cv=none; b=GMKmOGeFE0b9GL7plWUm7xRf1K/MutdPML33Kk5HSdAUBm9Ha4RKMcVcqblyjkSIay5wejOwcEEoCiRWixYcafzqFsYTlU/KDxM60V7IzHRNJi0V1kRZ/WAC892aqBLNpPqT3YVGa0717tKOkfn5l5bQBbXPjlbzgAYh+iu+yzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719208943; c=relaxed/simple;
	bh=+GHHgbCFJJPUH6A/rZalEZ8LyHZVl/5d4U+QnJNZFt0=;
	h=To:Subject:From:Message-Id:Date; b=oKRuOfmgVZaZiLszNJHQpECOd4CnvoT1xPpMHYrkXC5WId+i/5xValJRzF2GciSvOWXVhIXyfC2ymWxxavQjbdQDUVZIfBSuP9YIXxn4/UtL8lDL6Vfaz66Z4FavMvNCKhKhjMr6uiFMmCkKt04Vh34dwwM4lAjoEh/HkjvrHh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtbWYcDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtbWYcDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB3B3C4AF15
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719208943;
	bh=+GHHgbCFJJPUH6A/rZalEZ8LyHZVl/5d4U+QnJNZFt0=;
	h=To:Subject:From:Date:From;
	b=UtbWYcDvzN9QTd7D8MRN327sbIY9M+uR3gsA8ujVnMfxCBnm5hTNnDcysKot6CmfU
	 b/PTbZ2xskApnHHwnjeInZlZVCMAOX2/LIcL8mEfncHJSWKWTJwgrou+lBKlzb3xFJ
	 pts8pNjHF1vX4DBGb7mo3fUPoAppdn7jlFLi61ieny4gBslE2hh10YaxaO/jEEJM5o
	 6EKYfEq+HphMaCoJTJ1MdrkL/qWXzePeFtR65SR8B35rwn91aiIcaHh3mXC7lzrFkk
	 oJtHNf+F0MeLIAzS7xzr7NhjB/G6McQ9ckV6kyweFgbCRqcARIVER1mt4lex2aC0BM
	 AywwMYKi5xW5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A2BC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920894279.7668.10257740910172442396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b66a80c4e7ac0729a9039e4fc8981f5130e71b4355e63cf4b6abe8fe23d963
Date: Mon, 24 Jun 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719208942
