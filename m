Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4DE1A5BA9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749203994; cv=none; b=S2qHeskeL/xjUYJ7bN7hrIcWZyOngofnNN1MCXfIAVFL3VgqxRzZ2anVDDY6tD0Gx9KuJkYH7ueRz4ElpenjrKRScwzxXZtjV4cqK6BF9UXbMyy4KyMcfMM4KodVeRhLyjCxjOg67SsZXDYb1B/TsZxbA4QhjJoVs3u0KkcXNoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749203994; c=relaxed/simple;
	bh=tynJW9IucPLGAwE0yWB8j0YroxgeoBiJblqilhBPh9Q=;
	h=To:Subject:From:Message-Id:Date; b=JbI4PsFaJ5l2U3oSB2zTfGw+09D53Hi+K1tcUYh736Co72Tj9PsXJXkqCqMD4ElAewsAJf3kSk5n1aoq06auH8fN/hSd0ucrOGnxaPLEzlVqFG+/Lf2POIQVophokED9ynmOu+MOt+1KhPMU8yAQMCPmjcRwd1bIm2fgstz9iQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbvXSFHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbvXSFHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F31C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749203993;
	bh=tynJW9IucPLGAwE0yWB8j0YroxgeoBiJblqilhBPh9Q=;
	h=To:Subject:From:Date:From;
	b=FbvXSFHh9RWuijYGwskSWA9QcBFvxiv1ZhpErQankLxSd9ggmahfFeAyH7GzauEc+
	 VX2rbwz4EbAXqr2GOSmNaGaguUslUUCwIuAp18Oa3PYUp2zg+cWx3hcevDcsiGg1tS
	 3c0TbtnNWe5x7Y9PyqYVa+zKX9BsbwK3NQ++yemYrIEIzbOgrYIIVDj81HXEcwok/Z
	 88B//UqXDmymM+AF7DrLvvccApJK35kMktwUantjysw9TcAZ8BjEQmrXh8GhFh+mR9
	 gVKwb2jw5xSD8z5AwFs56jq4YuLnUYumKkWKsLVS9UqThdCgYhrzbjXWphHN2JCjFT
	 +Z+D9zTTFn/Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C9C5B559
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920399357.27072.6245582619311430753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37c28c9a90db092bf1aacde97b503cf6c0584be0ab3c6e81a366c75c2c0ec46
Date: Fri, 06 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749203993
