Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AA317736
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765150974; cv=none; b=U8XAZrkYRVTGQuqoZbGmQ6w3snEx05/qnVAX1PyW0oTzO4UT0M7bPQXprFIbVPNlS3maWqmE26X1AX1wCNLg2WAmo+EuNt+2s5hHERmX5wJ5HTsbI1d/9l4EMXAJVFRGYaXCc4iWG55KKq7evvJjkqxL9xzv1AopCF1IwwSiP3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765150974; c=relaxed/simple;
	bh=Cxn5MSaHOUpNzcxQkwafeIjQT7ubPcYz55H5aA/sTpM=;
	h=To:Subject:From:Message-Id:Date; b=mj+P5Ai2169sMMwKOsQxxYpEbdQEkv8DNSEHoC9sk/wDF3J4Gg7niUwbbLZOtwReGS7rzKgbdl/9S/CfIKd0uKn1l25cWVmw44jk/IPdvwOCdO9DmEoac7x9NroM7PvGFWYb2BjIupmC7RoI9x6TUe+TKrBdZZ0w92efI/7Vu/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNg2MpQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNg2MpQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6D6C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765150973;
	bh=Cxn5MSaHOUpNzcxQkwafeIjQT7ubPcYz55H5aA/sTpM=;
	h=To:Subject:From:Date:From;
	b=KNg2MpQSlF7zbM7bOlVmTeTtlAzR0BY0W6TGeUY+VtmGyyQLr5UAkE/LEiL5lYTj3
	 Juwyl5KwDmgDN+e6qRqTw5WaXiUJGIixS5qBWG4IE0mGRrSfpowF01B0jzQijXzpH6
	 I78KjytbUOEFmyIt6FfgFE2wf6FjaShbpu8/XLCHkFoa573z9ZCdcu0K/IbQmjGPsf
	 YBcZVkpncqyb6Wwy4Dwin3Exk34r+/PLf6XIVISs8+lZLTRNRN1L7DMTbiWYAAsyMl
	 I2NnH5cIlsoPQN2ufutvwQN6ixDoZ2n3Vck8xGuv05Ll6XHo6B4dhPRaSERpzAR2gD
	 n7tepBqAzYyXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9407AD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515097358.12592.18348569446541821088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70078f56bc0991e9144dd08aba4f4620ec2f86768fd194e9f151eed35613a598
Date: Sun, 07 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765150973
