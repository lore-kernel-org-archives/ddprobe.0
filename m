Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444FD18026
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723597554; cv=none; b=aU9XdYn1UbdkvCW+RCJsrpmsmTyf3+KTWCzU2oDrAseqQ+f26DMPbY6AUqH416LAogrYoYoBh6gcVAH4NArAyDKYOe10J4o8o6P2ViXHyxR8TzR6kyOU8DXznEL+GKU+uychS14nKGLQQ6m3k7VRs/nk8WjBx3BU1cj3DGdIfm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723597554; c=relaxed/simple;
	bh=rLZgVa3PNrjxCdI0cUKeQXNQD4R6QtQrdEGUkE116WI=;
	h=To:Subject:From:Message-Id:Date; b=AUoJltT50U+XYJMCVWfuEGX6C4VVLJLSulTJfT2X4AsyH5WqDvS2GPtrXLwTEweEdyOaHknt30lNGZheNjzYAx+96hwnuEODV+dU46xoT8qvq+SNRJTed1JjRr0Umw3j3lEHIMY2O8/saXlsIFnYFGG98It56zNla549xW7FYxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBTKcM/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBTKcM/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F0AC32782
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723597553;
	bh=rLZgVa3PNrjxCdI0cUKeQXNQD4R6QtQrdEGUkE116WI=;
	h=To:Subject:From:Date:From;
	b=YBTKcM/fwOcyERfZ896+MqVSqH4ZSTPhoG2nM39GiPKu96XvkVvlmc7cMV+6ULgLv
	 d7wpuYY3w90lK/TqoZpSWEAxMD6y7AlDRCcB+GZCxUfB0OclpgvN2kOuRZKQtZTVbg
	 u9q2oRimGQhYT4EUPn/JtQ8XLZKIMfXkFJBozxrYyPn9BmnUHsfCVjFwlRXARu5jNg
	 i/ieUtVCYIpMOdx0ExRwNwtzIQ0y9qheA3OlQhzE/998uEWI7/0C/IOVIT0ZsqlaI8
	 8xJjA5UVQU2JhYscvSww4/D5piVwsaV+oTC27fWNx3QC1dRpSQMoTvRKlTMuD8UySV
	 tnIUWV3xtq2fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9085EC52D7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172359755358.24951.12290729481445030299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90c9e62dfb6ca8db2e9aa2dcef62a91c177940f226692b2873ab64d477360d4
Date: Wed, 14 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723597553
