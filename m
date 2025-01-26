Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C1B2AD22
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737921954; cv=none; b=neg7y+oA5yEHOAiimgQc3UWCICQBBe0ppa0Qpjf5IJLBbvi2MdJ1ubbFKgN5ApHLWN15rmiyOvQBu2t3iaVxLEnECl05rxEIALGtPblI9HhzvGqUN2Ma4bkN69BHHvjwXXYIUd8utEaM9k7akhirp7xA+ZXcgJttSccS5m9vYuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737921954; c=relaxed/simple;
	bh=1LbvhYn4R5hziHNvozEINgLIMVuNkH+lkPmYvFD0zqo=;
	h=To:Subject:From:Message-Id:Date; b=Ig5MyMq1RJmhEy4PbDG9AQBrfTxnt4UK9M/tsdTYrBO/irYbiOxxAKJbKOllEgiHVebAL7B26wDC1PM8/gKDTumxjBpIwj22fvV8lS+ekrDlnAEkJLxJqrl5Xikr632X6UlAPhofZ6gkIjOxU+P6bI6bbZ+YBzjfSTs7kABP5dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqtpEQfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqtpEQfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E7C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737921953;
	bh=1LbvhYn4R5hziHNvozEINgLIMVuNkH+lkPmYvFD0zqo=;
	h=To:Subject:From:Date:From;
	b=qqtpEQfQYP4kTsggBm1UgHBt3YmQ0VAqpqftiaqcK1WIGMl09ckt3tFEGE1wP5z7g
	 RCWTx0U4r6T/qDz8rD7+rFaTGDf3DC3XnhXukNRjSmXRRhyRJRi996FCqgpZnUnrNq
	 25HX6AmThoVwbWwEsPwP8LffYF7mauC2OU6bPS7zwakqD+bgx39bCyhr7ZG6JVfyX0
	 yQGtXUq8lVusgpXiLbdYfNENpB8C8psoMZqBeBe7KF+K+Zxf14ciVPQXFOvttpkNzs
	 x7n0gfLCsxs5oNH6fIRmNBGKyCEGofxk4ulX9ugB/YHmEqH6EX+5fSAILWjzYAYam7
	 tkuqqYzEAED6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91240C0218F
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792195358.2309.15035556815314281928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed636f1350333b54eba17dbd6732978267ddd3b5a8dce2fb0c86c61f7bae502
Date: Sun, 26 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737921953
