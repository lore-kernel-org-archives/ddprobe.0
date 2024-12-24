Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4803F18AE2
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735067754; cv=none; b=PSzOyD90FIqDPQXv7YGA8NDE+KgfhGU8Sg60CCY2fyyDrVPQyKyBcpwseutGeAM5zbSRE3luPdigsSGFiVcLTwLpVRptNBpKOlBiRiU/uW91supDwbdrGK8G7/3kYlfRBhrMo9o04uSKDZzIAf49dM3iYZRx86V2fYETz6fV38M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735067754; c=relaxed/simple;
	bh=xF2QuCkZGhz9/2BNdQJE6QetMw85TxVzm0Sv5rZm0E0=;
	h=To:Subject:From:Message-Id:Date; b=LdZaR8yXnQsI1L1NsAfqrkF8YensxkXlRtzhVINFrph+mNmWwu/F2xC5qk5XQPY+zKddsbaWfHQ5tKfQzdjLA9Adzhy+yT6AVgzsMmrEcq770FWcv19sMpAxtQJLsPUUHUbW8kNq2WrlFvCLJqm0KOs4eclYlqel1dg+RL4zBQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbfLZYNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbfLZYNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC45C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735067753;
	bh=xF2QuCkZGhz9/2BNdQJE6QetMw85TxVzm0Sv5rZm0E0=;
	h=To:Subject:From:Date:From;
	b=YbfLZYNuh3no3ZNw225ngItcweCmcv/GlDqynW9BenTensgSBUtpnMGfXqZCWnXci
	 77kQIQGkpy361XP5dj5j7n9w5Md7TmTavi9FwYY+K5JfGJ1/QZlzznNC07UU1zbBZB
	 k6lJotu5OdOFKb3rrzCkfUp2cUYopHTLD1msnzpV1a/TQ3sXT6XgKkJ1ZoezopmXmO
	 0+glrJWrq2Vbo7XlPsXcsgzyin5Ha1I/+alBjMd3YSPEnVXxbdQMht/wGi15Leyguy
	 iu8ZL68k7qnww5X+heWqPuHPIuKDza0GacpjzyEIVqTlYDLdvtkHnYMowQMUmITeJ+
	 YOOJBvSlITtJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6FCE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173506775358.5192.18419750196583577219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8991c0ce792d582e57db92338e26d6044f40a0fd4ec5ddc2aee1ae626a5f6304
Date: Tue, 24 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735067753
