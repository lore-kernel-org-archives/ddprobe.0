Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4610F3C0B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737730554; cv=none; b=VGRrdBjkqdoz1BkeA1A/2O6Z29RT4reTcsNlL29svoozUJu+t0LK4NHssTgrQFgm92MBCAIVyg5JlMsnKWrzjKkqIxPHocs01x3we+xXb/o+CyZa4pE5iVe4n/lqtyYAOtMNAG/4lgOUjTw6+9D9o87OuKBYwqLNNzFyoNbgfnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737730554; c=relaxed/simple;
	bh=/0rMBphSjNShAZtQq+9JSNtu2wOBWJtmVDcuuhV/fa4=;
	h=To:Subject:From:Message-Id:Date; b=ZPDYgx8IV7UTW1NT+KJ0iaklaZTlcS+PUH0G4DhFLb4bnr2qQNXZ37rCOpvATA28GIlacM7nfs5sc0sBY6eSg97/DoJ6pfaB+UMjaeVZZy09gXDEzsB2QAXf3h7fQb0o/K56t8tKS7eONXsa1Luhl7HTUGPM37FICmQY9pWuoTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdjlh7Ac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdjlh7Ac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78B7C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737730553;
	bh=/0rMBphSjNShAZtQq+9JSNtu2wOBWJtmVDcuuhV/fa4=;
	h=To:Subject:From:Date:From;
	b=jdjlh7Ac2ud6uFonWQMActZJ59ckdcdutKwd7tURsmqa0E3z0loYd8rdoxDoJITQi
	 7DGdgB5WP3qLqbitP0csyGDZUWvjh89cx0yuwadAwvuTFsg1n3cPsgS3lQPkJ/zNbP
	 3DA0XXdS/xTfQqI8PbxdGfnWXu7kIo9iL02N9TlYVFgSuJNwjWC786olBNsf0ldW5z
	 wfobGXNXIgnngL80tlv0/tCAGzib17UDNLZ3bZA5oOIWhXQIjH2s8b1Enl3kBYAz2H
	 BPE1z3/iTF0BUft3aUtp2KidALHrsKjFsmO6oN+RsRDgUQjzqtlhvT3Yvfs1DQK9ka
	 H7LSXMJxdxNjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F6BC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773055362.11892.15045748767553493220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a5e2a546b13d5bc54b4a3af678a9ea6f20ce33403374cc254653dfcba1043b
Date: Fri, 24 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737730553
