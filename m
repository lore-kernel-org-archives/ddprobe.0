Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397B312B94
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736318754; cv=none; b=nvp0zOVgP3lBhjjxhDZDc1ZhnlX4bpwIfJvPTrTKqTBugylgxVAZSQdMyRVRcG9LR+bdhympMzqEoLMxJlDTEBXevOm8ltLZnACr4t0vzh+EbEwOlxpUr/V5AQrmIhsK6MWA9l7UnNIsTx0IdoyIsA9GoAfLg9BcSQFw3Zw0RFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736318754; c=relaxed/simple;
	bh=bxAh5jp3PP81UPS1GtGoTv/IJCCJNX/IbhElLQvDr/A=;
	h=To:Subject:From:Message-Id:Date; b=Pn0P0kvp2JAp0b6oRKJmB9fpjMD8YaqSJXNG+GHGR04HftxCqtkzuiCRvfZUlfs9wNdWnY0tuL16ML+36doySdmZyY4rVE9D17rB4kkNH0dOplexyKjKes5j69JsN3BK8sUvaklpRt3fjiZY6uoI8muzvB5oz60gbCtW7DlMAj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bce/h7u5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bce/h7u5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C106AC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736318753;
	bh=bxAh5jp3PP81UPS1GtGoTv/IJCCJNX/IbhElLQvDr/A=;
	h=To:Subject:From:Date:From;
	b=bce/h7u5r3p4kqUMKxm/ye+8CSeaav5dWxVWz6vGK8JNrWCO8TX/HEfZrBA2RzapV
	 6FCzgUYaIMez/UTf80KEDLhzrWAcAuMQ2ADsri58ICLrwBtwzTwAWEWwy1LTjXro7k
	 6J8+YrGWNMtjNm6qW4fRnx/z/u1cLBFqdQ/in2EWA2zNXB3jH8YRbN38lxHQn68XwP
	 h8JpTd4OWMbRvZuM4qtyXpBzdgxrdDIcK4My/X+Kr+yOYigxNkPskxVRLLQ2lJ9Rey
	 qUpjJ8xmxEB9GtWfa66ZCb8uNYr9b9ZKf6P8vQvOKmKeR0mUzWVsDXxF1vN9RdmQCe
	 DBKlmTMmE4HXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968F0E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631875359.30970.12176582747892113561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 854f0e3887909a5f28c564dc5f6be1d3760f78ee28dfb8b7f7421e4da85e90eb
Date: Wed, 08 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736318753
