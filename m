Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387E41C6BE
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722122154; cv=none; b=e1jyGVOcikezBH9bWYO+EZkBEjNTOCJN8hDvA5iQdDTFhIHovDncMpR/U+0nG3ba1rjwUy6rcEINWyaT6qfLHnZ0UZUZTplo6qbbrBl9hFC0tENugsl4M2VvcNk9n5cLRHhLQSmqYBRgiUQqiw3WRjfNYfqIn81F4vyJK+1JIjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722122154; c=relaxed/simple;
	bh=ccxzCxPXYjr/V9rSJwdmGt2qvzFLj3g0bFfTCHi+MK0=;
	h=To:Subject:From:Message-Id:Date; b=cSigDxPrzzAWCVlbPAKDvI/qmt7npaa2EY/26XeO0GXNo105MmhtO6ICxi+6al++OsXr3X9RJpXESuBW20MlyMMKS1g4J1sDXxuhwvBVrn0jlUouyc9xrBWwxVN5NR2If2V66k4Tku3O1axqkwpBq5P8xDN0Ig9+CYPBVc9RfZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL9/edEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL9/edEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CE9C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722122153;
	bh=ccxzCxPXYjr/V9rSJwdmGt2qvzFLj3g0bFfTCHi+MK0=;
	h=To:Subject:From:Date:From;
	b=vL9/edEuv8EFxzJHOWPcZqVsvqGuwgKnHAZehmMYygBs0fkhyL6swH9uV9MahqJuL
	 RkiyvCXJzQw5utbhCv5Ftxk4Y3CCraez59Mw43uGdM5yg3CaT5BqvC9WpNEn1ryDoY
	 MNzKmW385H9lsVYfwsZKWXLm+T2D5DcY0Ey7FW4Hv672C3EhV2QqmMJZSM09Ss9D6/
	 CVfbZWIYw7kl92JCJFAMDlL44nm43lFnIzRrt7Umhzx79ct9ano5UoO0UGuHBY4Bmz
	 ceqVrh5OGEllQS67mhmWFXIArhzPKKUdTeNdtzINooBRVzQqnoGjiv3MK9/dX6p7/G
	 xH/eZo04sTMMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34F7C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172212215361.20351.4336822786956976824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d18106e2335e8205bc7cbe0b31a532cd098f741655f30d124c72dc6dd03459a
Date: Sat, 27 Jul 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722122153
