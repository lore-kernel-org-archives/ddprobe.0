Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6E718800E
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723483553; cv=none; b=Brhls+t7rvpU89W9BkyAHexT83v45OVEGa/0ALDYEiCQYsA2M+h1cdJlk5qQfpqUuky+Su8OPf0IMSf3PIqZJkCLKDc4zdl5VVC9AFcZFwfsrSNM0FItGdyfV+34gw4qibrqTflaK0BQbukhHnHol0soldvTjz85A7rBPUzSYr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723483553; c=relaxed/simple;
	bh=pLUz6qHieaWF/+41YrTM+Vqumgq2BgZ6rycPox/AeF0=;
	h=To:Subject:From:Message-Id:Date; b=bVQfuS0M29hgI2NpYnmPfpFhO9ecXwIf4R+eCI4srO+3bD1W+kPugmxhP4bhod+hwpYRZRRgc6bfPYuRET79lu2vhcrhzarMP8UU/Hj8zb7gGfSM8FOycPu3b0Vky2WC7Z/kOojAI6sKHP1RrvHCFVncmCv9auk/OcjdsCp2M8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeMM0Hgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeMM0Hgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40BCC32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723483553;
	bh=pLUz6qHieaWF/+41YrTM+Vqumgq2BgZ6rycPox/AeF0=;
	h=To:Subject:From:Date:From;
	b=KeMM0HgiZ+KdQAIcouBjWgyaSYUjOsKe5q0UeysxuKm9g0UEpvMQgA7Em3nSHm4dt
	 engZpG+AGFhTwnqL45bfd8qG+/sm1XjqYkXbNtEwn6UU8Ij2bQXkQyy8O7MfaD9lcS
	 UNAkM67JscI3nkrZqHc+iOLtMGbNYUwoIq1jkAzdv23Z+5/TFXWIe1J3PkLYNG2fgw
	 G64Hm01lCExF6q2HgOSbP5TH62WtO+Lyx3363DCeX41hDSD8g97qn2mByDF3WsPDsG
	 CKWY9F3k6pwwROhfs04yCaPP964iBfF4ibKJDAp0jspGQdqVSj9LdYCJjAyMFdBS8W
	 IDNKPzwyTOUzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955BAC3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172348355360.9189.15890226345330684468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1ab3a77c10dc0ed71186233355069b2550ae6f4e838bebd30f333847723c84
Date: Mon, 12 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723483553
