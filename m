Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245DC18E756
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729321554; cv=none; b=Zxk+DyVyyy9wc/gY4NG/zwkI3R9akygO8tCAK3JaFKKxUAZJ5kgdEb8ycUVYEEUBq/UucsQJCTWXIy8s2wny+vOXKthtM0xSDJHW0/bxjRpAsBwll/c9O0Dr27cFcpyShghq3SX9xQLSjNovQkWWqO8qhY050noMk5TYiTTyDwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729321554; c=relaxed/simple;
	bh=3mO5KsI6yGM9FZbiueo4J6tCE4lcs+iRLFjQnEzG7BM=;
	h=To:Subject:From:Message-Id:Date; b=jBEyiyB3FKaByJnzjBkVlwYq2qiBG7cJAu6Ql0luifZWIca+l0xDaFfX4HrnFDVazFHk3sZ0DyL64Qogp3KpisD7uFyRHbibkQzvUpFyiXstYf5laNpTHJ4gocS5yCEQ7+ftb4rs1nYCOt1s8zrUFNa/+6JwSXpunJXrJ0d8HVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtfFjshJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtfFjshJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BDEC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729321553;
	bh=3mO5KsI6yGM9FZbiueo4J6tCE4lcs+iRLFjQnEzG7BM=;
	h=To:Subject:From:Date:From;
	b=DtfFjshJ/+P/CY4EzDXx5CDzEslkxaHh6AEMt/lcoZ442pWJPqmyid9RLzsmTj/cD
	 5bT6vd5dKEBtt2VLk6EdmO9ro7PD9lP96vZp7ytxy9AolGBro9jFwl0x5A2chvtCct
	 /eYlCS1xav2e+lalnz5nDehN4PcD9y8ZZPNZItA9c7U4rLl9k0D5AT4+bs05n+twk2
	 AqQDpyXwsTguu2VbpH5LERuRNPs28briSLMrsdJV+GFE6Kew42fGMVn+o9gJAkyRwD
	 AD4O2nnbL749wgFk9Sli9e31tDrKalsIe6SLNl64aXhBEZ+QnSQaBJHU9TCKgJXI+d
	 Kp9RzRqKw8utA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0ECD3E1B2
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172932155359.18482.6560596817456071251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3552eefdc3365870d73beced610105428f6e7a6d6e20c8384bc1da5cbce8e340
Date: Sat, 19 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729321553
