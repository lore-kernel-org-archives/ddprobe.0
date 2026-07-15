Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDCE36D510
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784082514; cv=none; b=q/G8/YoELQUaU/+vG0HOvVh+tCgURYa8HlhZUuwAExso6ZrcQxluQQfNlJBOatAefl7pTVFYeQSjStUA13oSX16jiXyjLUfTA8JqMNoBM4MS8LCTl2FHscvgq1aPfvx57m8fl6tZta9jbRySJw6y97S4dzz3c9CkF89GclrWP4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784082514; c=relaxed/simple;
	bh=LhBrdLGmW1TgJhx7/pJs4/2RjBQlyc7FTWZxr26ADZM=;
	h=To:Subject:From:Message-Id:Date; b=u4yS+rcAToRh6Ss1WQWkzkz6dVX7bgnS7g6YyrSzwI8shdvNf3XKElBoTgCo4AzJbWcTjTFncE3yoimiV9ptOGtmuJ5y5J3qUQMn+KLqRimLnNhKgR9vrY7skOZSybfW/D2mFb3DFqjPTQlCP1lxuCEhE5ivqsZeDc+dMCnosY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAXwmXnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAXwmXnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA128C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784082513;
	bh=LhBrdLGmW1TgJhx7/pJs4/2RjBQlyc7FTWZxr26ADZM=;
	h=To:Subject:From:Date:From;
	b=JAXwmXnnXt441We1fHRSsxkNG4tHeusRestfQfe10FfgNLIEmjBRPTpCeohjbUZrY
	 rmfVVcQ5gAFvrhbhmmSvuf67XzMU7uRTyVIuNtv5i+tZlIXxLLzhPEzuCq8bZXdd9W
	 LIsS8v+c8DuNQslrhKGfJtjFpZ+yx/1Ox5toaXiVUqueVIqpZ/WDXQAQiOlrdGTfDQ
	 ljcvgNi1mSibJTt7Mq1qjhtNkec5AlpmYx1D9pXHzWucedfcfDDIVxz128uyYCU3Rl
	 UqMS8SHrMBkzCYp8Ei6lM88o0NLmbIdOIhBZlj8B0uGTjRSFp/BVXPRlIcNHonHj6B
	 zv9i+vS4ilkcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87FEC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408251368.29212.1483042154403321889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd08b4694113838fcc8d5d5680d46e84c64929567f3b57ba4c5dc5ff8d9d5dd
Date: Wed, 15 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784082513
