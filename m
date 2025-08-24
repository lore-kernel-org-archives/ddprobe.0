Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D6A13AA2F
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756070394; cv=none; b=e1Af/h7t/i0MsZxDDo/HvK5paa1sFKDC/Eo/ljp323h8Xgdx/jR8aOAAMqH/FdOEpLQiez+nQhojPY2sVaFwsnPrwOiYqgAqnuJ3VAK3vYsUaQV4mOCB/s/F27R4f6TeI/+F+cCy5PXdz/rGNAojdlPY38rYCBE8TpywFuV0pP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756070394; c=relaxed/simple;
	bh=2lIRb8OpmYQm/XAGSXX3Q7os09awVcDYN0GlwAgCmVI=;
	h=To:Subject:From:Message-Id:Date; b=Sr2KHCpjXjmr91EMyUn2usgppJZOTVRjJ0/jg/U8C7oJ7C7N0wUCK6sIdBkgd3FMIzS+XZII1jXIhrfDQhn5LoW/ap4FLokvO0GETuGmKMCZVpihLgtxEiUycgICYdjvhJjvPGQy5YCvR4FZYWOxQARNwuetGEWgCu6pOb8RPO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEhAwE2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEhAwE2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A145AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756070393;
	bh=2lIRb8OpmYQm/XAGSXX3Q7os09awVcDYN0GlwAgCmVI=;
	h=To:Subject:From:Date:From;
	b=TEhAwE2y+ABSHdSrK7bvByf/zdQdo8Pgu2NvcIFw0yrlxTrDHu3iybV5oyqs9nf8b
	 asu1uJQtZi6NGXlvDTpmxK48KfZo4kMUPc6qb021weVyg3soydtCqn4RhUv2/NUpqJ
	 P6G7aVOHSa9b3dy60u7jngpXTRK2VA5SjK81M+8xL5fqhB6kgNNzYKcKv10stLp3pl
	 JUzHMVOF7V5H8/ak7/p7KqyVzPDkHFwaGLY6BApC0eKKfpCCF1DwT/Vb38w7P5KGmr
	 7iZcVcqB9ETGtCl8S2HGqrLCdrKdnlVG354eeRYtIJb9+KUs8hVjmZojmA0+zBrW0r
	 nNtv0LnV9JG7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED2BCA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607039357.13730.4893431817501932234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3c147cfdf45914be6c76799f1006729de0495bf6de1d8fdc6bad87863fd2bc
Date: Sun, 24 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756070393
