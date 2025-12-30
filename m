Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFCA2494FF
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767104034; cv=none; b=HQ51Ym4fftxQCQ73d/60NZCqZFHGRDhQSfO9Wtmj32NU4dsmNFeXQ1P+z8Jydb+R6CHqCqJ+ypyLsUoyn7M8+kFJhMxOimPoXMFcgYMVTATCX96Ale57oHXUnPIx6U5Jr7I2TSMvaTlmQAD1uhNlLzk+C5022tBjApatx0lZ/tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767104034; c=relaxed/simple;
	bh=a/cHCqf0lAQCIlNo5GU9Pvc25htItBbTq5OIRQBYaTs=;
	h=To:Subject:From:Message-Id:Date; b=Zn7awTgmQFkGEqFi3zI4E0iXzAUWSNV9KRyc2mnNbp15MgFAaNK+kM+fMlrBFyE/0UU6hYzxxRP54cRWmJdyhla8E+IPg3wtDc4qObccV2K3VlRAjtS5KkNqnv1ar25o3fiX2hMJcpyKjR6ZJXvF7UDBKsNB2srzwL8fvoxeUHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljMKUrBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljMKUrBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D230C116C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767104033;
	bh=a/cHCqf0lAQCIlNo5GU9Pvc25htItBbTq5OIRQBYaTs=;
	h=To:Subject:From:Date:From;
	b=ljMKUrBcFHPRK/diqxjlDQnXvzBMFIZN7cLH+uvldIu2mIpwh55snMcN8u+UgMZiY
	 p4ein6ybhw+bQMBvQLfUwjh85BRFaSBHxlTXnZxkeF5ErJlovMdWq1P+/zMSFOKzXD
	 xLZC30LpSXpqa7UoJ4E/dLfMq0U1kgc+fzkvtaJRDmb7Ze4TXHs4K6pUn8BAVAaPnI
	 TmZR7XZBsziEtfCZcHbLFNpvvE0W7PUGxKU0+auv5G08Gec7Da67FSySOaP5LnWosZ
	 6GHdjQ/hULhtOUT8izh8M+oqb4ptYVPLP63qKTZfiyUUYdyxsutuqh4gx50S0cs0pa
	 00+1NDV5AApSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F112E94121
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710403357.1005.12642460462633712289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8750d7031568bc22003ac87a734880fb4ef53c960532433043028f3bf6657f3
Date: Tue, 30 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767104033
