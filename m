Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369A21D63DF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753397394; cv=none; b=d+YIV49v2EvIUUou1E00e1NUd63m9NZngwtk+oh7x1bHxj0xPEoZne2Do1Ax1ghAdiD++4V4zu39J72k+8EUTJB/AI7QLS6Ayl6LW1zcxGTEoJT2BcqyQZTCmn1q2eFjRjHdCb7mA5ANvE3zvRABuKhXqhtUySAqShoNgD7SPSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753397394; c=relaxed/simple;
	bh=pZUKoB80XCLnnYl0KVVa5Q4cf68T4cYCQryKq3qgsV8=;
	h=To:Subject:From:Message-Id:Date; b=L1Mq7Qgbs303cz7t83uFxJp6PNav7+Oc7RxZlWuAWn95dQJgApwsCC/bo2MDfgMw7NlygZGAx1e3xs3Z+5+WDXvoNfMBbUhFZ5ggJowMegMlGV6M16qLtq7xfb+G0K1PsgxrX72ULY6pROGvRccesBdeBLQkkOZQyeo2K1LhFws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UykxXVlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UykxXVlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3354C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753397393;
	bh=pZUKoB80XCLnnYl0KVVa5Q4cf68T4cYCQryKq3qgsV8=;
	h=To:Subject:From:Date:From;
	b=UykxXVlBW1coDIeMScwHs7Z6M1sHswIGR8IGNS3HDdSxgQIg1g9leNDjBKk87OGbR
	 VTKmdzbrwdwLc4Ua/zWEpQNnTL79LXIlvrd41hk6XjdKkS6xiz6RMJjumCRBBdOeCH
	 7dnrNrliebVYhAkHcomVUjfGfTfpunY+cQSQKeUKKUtG5Iq4oiEpvebd8m+vAtTHxR
	 DrR/bSnahWK8V78gvVmsBblJLRUfyaYLjt6JIV3afDYxFJWGjFQQA9i7U7PKTD8YoP
	 mMLDjimV9Hw/4degreU9Hd+XnHnlFKfcnrgxcw93UoBcv6d30GUiRaHz2rTArHJYT2
	 /XR8lzUZGzQ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC2C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339739358.28984.307382647618772935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8bcdc21407b5562bf6f562d536aee9bf95b2d24305999b227578c63dfe6d3b
Date: Thu, 24 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753397393
