Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1911F55767
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706054297; cv=none; b=AC3v5IXRgw8IG/vC59NKOwvOs+uGWbw4TdxDi77As0V39DP3Tox6NK8mYb5N+3mvOw4IQ30Z4aYzN9YP2zj+SFZSm9p8BDAXWtSWE3bZJjAhzaOZtgofNOgpXiC/obVZkYinHlTjbR1HcRIhVDeNhqAZtozSghl5qdg8uGQCclU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706054297; c=relaxed/simple;
	bh=VSH0KMbJnFFLAyL/4n790cuZy7hQSIfGD0vNnJKdxnM=;
	h=To:Subject:From:Message-Id:Date; b=hUe3deEKDodI7n7RlLqHqbzBfDm76WAd4jkP1tRFVKQDaws9FGZhorR5jYP5nFaIuhTl5HhnZKaYJRK+o3t05u5YXa00Ch98GOkqZbHfkPeY3QUd1lkMrxXg3E6Lfcrx/zTjlm/5w56eeT3l75LzarqnPJ2M8j9JiB4OfhWfEQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltT+qsSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltT+qsSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74739C433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706054296;
	bh=VSH0KMbJnFFLAyL/4n790cuZy7hQSIfGD0vNnJKdxnM=;
	h=To:Subject:From:Date:From;
	b=ltT+qsSKjm2KQ4tG8wBVVfeZ5VbaqjIektHomdma8mca8epPYU50bW4voxZx5czw+
	 YWiYJa6tRJK43xN5IaKKmRgohF6JE6l+ggl47Tkippj68LYe+oYmrxMBTRKR47Z33k
	 mAQPBzakrI+WHEnFfQd9draW7JWSt5+KIFhsVognc1srE9sYuwFSXTfa3cnv0s6ffH
	 MW40DBb8SAKBZjmlp9qLjzx3qn2sVi5zdADHMw17qoGbWkDYFyBU3HgMGnsK7OFZ7x
	 lRlvYRfYWTAPpnS7RTrWrCv/vtQ/tu4qBOoXpMpnY7iwiWericcrz40XxyAy2jWmg7
	 vmqVVjwpq4kYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B0FDC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170605429636.21349.9065150276152128952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1047530d50d7910f1d4185c153b68c3bbc24ef8fa1d1182f3ae62d1599d45140
Date: Tue, 23 Jan 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706054296
