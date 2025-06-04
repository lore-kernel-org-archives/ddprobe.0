Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F232581
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749016194; cv=none; b=Ivwaz2QJ3WW5YphVRCzElHoufqXl05Y8Ut7qNFpO8VhkBSkTg5PK1BZQNUstfi699HHjhIorbXjpyfkjicLOoMK0mRAkWRONop7eI/DdT0MY5k5STi69W9IvM9r2fqz77EnpvbGhAEUOkuY8rWeADMpi1RctkpkxDYXcp+yXTsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749016194; c=relaxed/simple;
	bh=UZD9wnD0fAsdZvgOYFgjluihizzYxXR4PtrpsE465VA=;
	h=To:Subject:From:Message-Id:Date; b=reJ/AJJ7ilERT8m2CTwehEMHzc3ucXsc6D5LJjoSqvDLvcoCE+GIUQzlYxEV6mM71MFecTxYlQDqNLE/lf++3ee4vqqe+xLRIREOJGCcf+mJdZtMF9Xh7mhZL2l9U/H28z12w9++tK8FAjSq10EGakhHasj/H/oL/0wJKK9PmPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6siY9Nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6siY9Nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3426C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749016193;
	bh=UZD9wnD0fAsdZvgOYFgjluihizzYxXR4PtrpsE465VA=;
	h=To:Subject:From:Date:From;
	b=e6siY9NmAYSxtvjIeSkIIp99vMAXPzzQjZTdP3uBgSiCWRBw1hIBNvUg5VkjUZFAW
	 FUMec8NxFZcgL20DUFob/bsAF+CUtskErEPpJq8LRB80sLj7qNG5eaIWKbv6DKotIg
	 eQYoVQrvWs3W6LoXKdXBCjaEB9OaVcEBtdPQZyvAaUhQNN4iELI4pK/uXW6KdMkfXv
	 rjEihSjRsCntuUMJoNhop35zjt8uQgfLAqS1w692SXAhwrNYO0OfR/Xd+JbcQ3V6D7
	 xi5/ODqr/AcmBGGikHhzQ8q/Xq0oA7RewDktG+JZEe7qEFZ17732RMPLGnh5iHQVno
	 yM6bSh76osmYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23EC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901619357.1575.13280041574091416187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85704f1361d5fed3438b878e5b121911475285275cdd6860e077f27f7de1ab07
Date: Wed, 04 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749016193
