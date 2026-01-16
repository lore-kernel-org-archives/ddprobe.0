Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B94218592
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768545834; cv=none; b=lFUCcdG3JgpDzY7ZUV9Zxv4fMzkDMkFfA4pLdHutnhGFNLoOIFICbNJgmOUwxx6gG1CzPjgij6LtbCR+23brczeT4qm5zZkwWaZcQETWT7DojS2ZEYfYU7apYCwuDd655hT+3+ZPeXEt2hFbjIdU/reGrSry3IjUncd5Fzi2lgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768545834; c=relaxed/simple;
	bh=1HCmonyaLD46gzc6CYUU5JLOUAw9d0dHGkMM7x5qtJo=;
	h=To:Subject:From:Message-Id:Date; b=ty402PHNcwac2dfiBHx886yGVG8F3XdTcss9HkXa3yevsoQqyReNi2PrJn0DVlCfK86QZcq9SQaWKP5t/aZRJt+sQpVdrGIlEoAC51lX/jeQZokA/7dUpz63M5mdraLGdlY0lb1A9RqI8WRaYtmlb1+6ZwwMXjwDSnv/NNVA7Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgqDmviM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgqDmviM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF6EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768545833;
	bh=1HCmonyaLD46gzc6CYUU5JLOUAw9d0dHGkMM7x5qtJo=;
	h=To:Subject:From:Date:From;
	b=YgqDmviMboal9Q5P0/okKVVQFjGlqEaJj9aJBN6CMOtRLb+Vc6ygWm0bfPnBb3ESs
	 X7eCn5gxSv7x7n3UFLCcqZWlDC0OEd/1+NrEAJf3AJxsYLu1ACprhpMTFkEdDhkOf/
	 OmA4MdcymehnyaTyLxGyVzGnkM+ZI25caePyTbyTSC+zYAby+Idr0LB8BAETaWCa3f
	 WADMF72XE/TykQvHmJlJTHWK0RRg5pP4DkQstAkzPi3cxsgkSTlTLXqkmzofPozzpX
	 574EmNgJQmAU1H5ZyGcIfMZfonFrbBBOdJ/nLuWLjUi4RernkAtR5xHKYdnZRTH529
	 x+oCcF7wpo6iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3AD4A604
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854583357.2136.6774187866649533461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7603a04f492fb2f98695c36c3fb361368a33b82ec3bd7aabc2c68e705ac8c54
Date: Fri, 16 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768545833
