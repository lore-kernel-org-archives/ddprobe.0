Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0507F79EA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757901594; cv=none; b=nhv9ZK+ZxOsJ/6BG1VLl9XztIW5lcxSrB4q1iHkCUPnKHQCj1AsZxyV0cHu2x0a0zBxolEKpXoBEU8DEnJdLPWjipTD/hftoBTiRLypYEXayEFLDAsfBhifsdqfNkq8zOMjfisgix7o7e2G4CXwYNx5LvywgKAIKU/n908QlbY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757901594; c=relaxed/simple;
	bh=btZq+ULn6Qp2w4GZxHYmby6BiofJTRDdiKI46oBpKhY=;
	h=To:Subject:From:Message-Id:Date; b=euFz8jZfrywQsUzejACNaX+7vLYSYOInbKycAEAbkVW3RqN1WrbhwQv5IaS8IQkJoXc7KTpouIznG9BkDxGrtB72gzp9EbVR8ixMw1wKVAjub8ZlYGHevEywV6/AmQhtL3n5Nmtnoe53PNhYS9o9tUBv0rwXiA1yzELqnoTXyMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZdrJ+2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZdrJ+2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6EEC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757901593;
	bh=btZq+ULn6Qp2w4GZxHYmby6BiofJTRDdiKI46oBpKhY=;
	h=To:Subject:From:Date:From;
	b=fZdrJ+2Mj+DZSxa1aB3kR9ES2QZh29gPClqmQ6EWYwoJey9G7HoS8Kz68EZDiSKVs
	 b/a91zPh3TOKgY8fr78CZ90Wy/4S0wkw7O2AZpxhCRbK1NAO5zGevWmAh0dY1pI/HH
	 bDEzP4NPuEqC4OvGWcICRKY7cFT7l7RLs+LA3KLmpgQStM2oWbm0dmPJhPeeEwRnn8
	 T5OaZDfcuMn65id0DwYQL44+F5LD9rvZEdd82vDvJzQb3tEh0osjsdy5fnL+VIJ9dP
	 wHiWT3ex3kWL+dsdWuusev+TaklEKNmg0QwzAk0GSLINLqE/K0qcIZdrfvO8EQkKo7
	 P11UKR5YdweBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC0FCA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790159357.11842.13391021608456708949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e5eb8d0cb83a33995f2ccfe209450a50f48c89e654a6cf58314c5fd466e8e6
Date: Mon, 15 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757901593
