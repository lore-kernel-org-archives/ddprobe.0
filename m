Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B77178CF2
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721997354; cv=none; b=hx4fwVRfPyes1KFxOD+DfzngiL3f7eC9vvhY+xaUJIy1NWphT8Fmixq/qi9pzOslfAkKe50ZkBs0OrMSL/E8LFelhuwlCwFfD/4DcAT0+frZYTulFxm7X+I8DTEakwMjttCDjeCWebDW6512EhOe9pKI0CLdIuRo0zXpBDlkZsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721997354; c=relaxed/simple;
	bh=wDxAcBUaSnwR2AGIwo/e0ftw8hH4lrhrjzaDqz1ECCw=;
	h=To:Subject:From:Message-Id:Date; b=JU4BlT6SL2uzxwGZcgI6sGTbSLYCnI+dC+2ruERg6AwuH7/7piNCyeYNMspYSv4uaszp9UHtb0i4Wf7LwrQ7VDm7t8OEmXDdjTELiha9oV8ULWrERh4jijYBVrRvMzXKX3J3LXScWCJAJ8zUPRpvU5NgxMtpK37WznBtYCigZwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDrRIZFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDrRIZFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B555BC4AF07
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721997353;
	bh=wDxAcBUaSnwR2AGIwo/e0ftw8hH4lrhrjzaDqz1ECCw=;
	h=To:Subject:From:Date:From;
	b=DDrRIZFcZ0OIHjT8zUDXRd15nNruznoaUgUMlmTNhoduRGWFwABy3P+AXCXucY/mk
	 JcabLnmgxg3yOFHY2qjQKJqcsgfpK3afTqnxjoLjfFKMlJMbQDUvfvtaU+MOYpcYvq
	 E/2aI15bw9Zy9Hlq/c4BnTOIkOUJ8B2OQ6036RSOPI9krLkKJiaQWctvqnnWZQOmq0
	 YKw2AnAlM8n7cnattfDJdLrR0+dwCMVW/YCxFZgCqg7mycjoPODaC639GIm4bHyP39
	 4HiTXa1V3upVA6BudagPwqWHe7j/9rKQhMEMxzWyQB4XqFJo/UmsjcfaCemTd0LV79
	 h2vgmXG2ZlGkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10CBC3DA7F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172199735364.5556.8908405223422363565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258bb2e316688bc10f7259fb2dc99cfa4e43bbc385d18d7e6f992ca22ef80321
Date: Fri, 26 Jul 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721997353
