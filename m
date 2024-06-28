Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413031864C
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719545663; cv=none; b=rjkZBRr8H2Mb1n/MKPyu66autn6FYvEjvSVgOtU/f3LNhXa7AwO+PRjcFUWrGeavd/Chx+Vsf+y5se0PaeMg1+DaDoSAVXB5IcLMFJZNSjQyzePUo9s3tq9LDTFZv9h8gGCYT2P8sQSwWBV9xRvLU7jQgZwxDNmoK77V7LUiNTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719545663; c=relaxed/simple;
	bh=xmznl9PvLZH2cRrRE8sQKFgD3ZD+MPZwKRhINEAP00o=;
	h=To:Subject:From:Message-Id:Date; b=YKzf2uTegSPx3umRfKxXXtJN0OqcXVjGj1VpEdslDctDaKdikt7pnyIwmv8LHvlZjIK18FM7S1cZB6v7QJtiyF8zKxgX+pr8d1Sgwps20zc5vtP6OvYdkMkhs7sMibwgSOowyjR/ihjNFHavz0i2JxYA51QtaYDVcAhW9k2ZHmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndX6zCgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndX6zCgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D17C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719545662;
	bh=xmznl9PvLZH2cRrRE8sQKFgD3ZD+MPZwKRhINEAP00o=;
	h=To:Subject:From:Date:From;
	b=ndX6zCgLfgTquy8n1XOgAkbApPd27+iwKfRlHOuiAADlNlsIW5EH7MlkPdQ0pwmmO
	 kSOuEadI/9RYtUwqMtCjS5+4UfIQ+X1ZF6WciWhpPtrBpjQz9W+CpTNWf3BEBP+BTo
	 X1CsyUDuYMfI3P4JJpeH3pAOoDQabK3JFgbClWNckHqFc4tJIo2Rm3gCTFKmA/Hzff
	 BsXFcB/7ao6nR6HwbkOl3m7DfL9zuKybJI1CQ0J/esAP2wJ5yq6mqISOetPskhlWdq
	 Pdh8+efQZOESp1hxE9+lcs0C8U6duKgLBkq5YIDUT91Xz2Z5x96nRLQnQTLp8cdR/R
	 qKLnNHwF7xpxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF53FC2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954566275.23853.13710287863801303914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae234f06457cab0de56a35df7ef7461bfead996fd772243b4266723cff666092
Date: Fri, 28 Jun 2024 03:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719545662
