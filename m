Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C95E800
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728259554; cv=none; b=rfK+qmPFLAPItCaSU/wtyhz4JT5JL1GrAgHgeDJQvvU2No8v7NQ5fhwcJugHeFCYil4bCv46UjJMTV7mpDF90VFCjHYJA290fFOciTqMNBvHaFRFUoUSjN1/E1xg/e7s/y4Spedrij/uTa3jZWI2Hn9DklEt509T24ZQ4iNhvWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728259554; c=relaxed/simple;
	bh=Ei5IC/NsEZmTd5zHqZHi1ynBsDOqHrf3FuQrLE0khI4=;
	h=To:Subject:From:Message-Id:Date; b=Et4NL9+C5D3zfWkUjLzQzBLg7v1SH99D2AEp7SxlO5qgwCrqWoROswFzECBt6Ht1FcyFNkQHFjRJxZMuGjJeFcANmJ5gTN2TKrf3LI0NsCg33bbDTypnu9hPPh89m03T4mDyVFi2msgc6UCHEk6LYHeORfS9sTRMZRcggx6ap4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDoUe4go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDoUe4go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD61FC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728259553;
	bh=Ei5IC/NsEZmTd5zHqZHi1ynBsDOqHrf3FuQrLE0khI4=;
	h=To:Subject:From:Date:From;
	b=YDoUe4goAUfge7m8TwvW/dOsUZWctsD/D1+/VlYryldizXXLc/S4pwbTa+IBY1wzk
	 Z0PsA1Zzvwpr9Sw0LWzQAQN9WxToGoX7BP1FY4lLMdr8+54vXZ9XNnmV1aIRl/O70W
	 n0IMF5c2VgDQZLkbXD4R13BPuTQQSuAHp99ESERUnu72fYbJe3zX43b8p+CBwddTkY
	 iuLqW+Y5sj2+wH9SsNd1bNl+Tn6RkV3kSeEPgqss8DWVN0+PHjefnzgq/VN7kLar5A
	 mCvJTHZhpF0nTDLA/QDRkdWuKmn+/XhT3OFwu4ZJ3P0e/b6gBgaGprGhGgc3B8PErS
	 Sb30KA4wR0dLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97659CFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825955359.9786.5090351967541594661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c1e19c5f4cbf463ea52fad21cf1f162ca69073a43e0eb42758950d8eb37c24
Date: Mon, 07 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728259553
