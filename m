Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249681DF261
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741945134; cv=none; b=ZKJfatvLdhjW4NWK3ByVsP0QtNNz/C+iQzmhb3ZswNRr9NWA6setv0OTXFGtPEGxKuwDvP/oZh6P0kls7YDnnD8XH/mp3mSIy+BnvQC/m+6b3hYpB5BGyWQGYeap1BkEXIfbN/vvAkt8mEx1LCY8O/RD8xDvY0Ql8bAM3C5w4p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741945134; c=relaxed/simple;
	bh=IL4jpSbU9Kw3d1kQyZhgkN1mGBwlB8Uv6BjnoZ4x1XY=;
	h=To:Subject:From:Message-Id:Date; b=SnvI+RBpMu/TftMc1HRRw9T++5RUvitrjeBZf+pkSsvJmoxt8XzbtuXRmJ73nf5ifSutZEpwF4FPWDHSxdliaRxy7Y6Eqpb+BoTgFg0/cYSKI+wp4FQGzBSjeuAIgS3VtktHcnDIngRyf/3O1z233Qx69Td5EHPgs67HgxNySsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EK9aZMBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EK9aZMBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0344C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741945133;
	bh=IL4jpSbU9Kw3d1kQyZhgkN1mGBwlB8Uv6BjnoZ4x1XY=;
	h=To:Subject:From:Date:From;
	b=EK9aZMBTNicKa4mNP8RSuKlmbyqgScbi3x675OQUleiGV4WKIK+q9HbE2qzxxOwkG
	 nWkxJn+prwIi6ue0WoxrIPlBVExVpV5L99II/NPXgavvf2z3faI1pEaKp1mMjRMbIr
	 BpdxTliqFuM+42peMsQz2v3ABJPLhKhZ67DJ4B6vfDE+gy86bRzPKamS9wB+DVr6sL
	 l05MZ75/IbgJ/VnpzGiDdzE9KhsXD2nycguU44TZtJQOHkPzA0ee+cQZChGbjPj2sF
	 RfEnOB/PZNFpQUp7BkXK5vCaTYeIqbSL6Wuw3ehwNhyRF0R/S++SkxEYIep+3nXF1u
	 i2TMh5OeaoOXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B86C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194513358.6080.16729243065119552153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1704173e9a3f81dc7488b7add0da231c6858af4da10a490c4be7f8ff88881d53
Date: Fri, 14 Mar 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741945133
