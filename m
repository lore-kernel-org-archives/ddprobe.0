Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B1AB658
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736099754; cv=none; b=ZGlIQyYYW5v8ZoHKsn/OB3yS1HuXSYkyswhZIIgP0nqTQnv/5GTktLttcgWmRZcweEIrTv9JBGGyBpFb3fTrLd9IYOFGmyypVz6pew2XqWIy5p57rIC88n98N9oqsVyBmgbkLxvFJjxcu52yBs+mdf8UCswnvBO3ak9biUdWZR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736099754; c=relaxed/simple;
	bh=tdGWrJnNi/FQ/H3Kovab76HKH3RolmOPc/4BhcTUbZY=;
	h=To:Subject:From:Message-Id:Date; b=sxbMo26oQNObmOqIik7s+Ux6vHV6du3j4tFJ0oYOGlNhqMFygRBhVbhozob80PWSYXS1TT6mQHngHDcbEyMcfXb3Dbi2V+itg1d5oSfQKYNF3NBdgkGzHEYzeGmFz360b/IUWOh6J530s3iWjCYIFIVTOkX3QwG+eTQpLBodvFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxG8jSti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxG8jSti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5878C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736099753;
	bh=tdGWrJnNi/FQ/H3Kovab76HKH3RolmOPc/4BhcTUbZY=;
	h=To:Subject:From:Date:From;
	b=bxG8jSti53A9/M0ri8J/3c8nMN9H1M2qqaPZWbpZdzw5RI8RUaq5V8IqDtQd6snuh
	 7Xo9wU0m/cpp7YDo83cqXnaLcjfRTdVG8M1qzA88LOB79WDGElVzyZl67BlWf4HeUa
	 BjCyyWrbIK7HC8WDbFuHMXwBz8CN+mecQK3kkxBewlHITZ+smu/T/D48G7T+MasCwS
	 lDHt0fTip1u/l89Ay1BBhqjIovkKBqtNPLNsWuIz8eNMrwewC9LqdFhJCrQ5l8df1J
	 eJqQZKLQG28Rj3qmR8pJud/6hIzibOD5iG5bmZiN2QPhCwEhmTan8YdQoQN1GZnsz4
	 AGtf1+sm9BD9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95913E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609975359.2709.16207932464165387909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66d9578780873eb791edd4f49d90d9dc6197e02aa6a490350ddb2c82956ae40
Date: Sun, 05 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736099753
