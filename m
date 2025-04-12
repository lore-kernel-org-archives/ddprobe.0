Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0A8D26D
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744422594; cv=none; b=ll49g2gtzY0BpG7ADVljW1g0ZdNQ+ezSqk/GEpGsYdOVUmZ9qA847XgLy8jfER3QQdwzZJeWlOBmALQIsU9D10fasMSWDx339Uiqm/HyM1/xcBuZVcvx3trAcu3+ucF5R1GrYxkOtMJdMp5eIYkO2MlX8fLaaeRdZZOFt+n94QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744422594; c=relaxed/simple;
	bh=PqS7OknT29RhcmoKmcWmVFz29S4UhKh1AEpioI8A7p4=;
	h=To:Subject:From:Message-Id:Date; b=chRIf+BsqFzsrWIfs8QxIYwmR2GmyBem5rcdhlu482V7lEp+48xo3J9qRYlXrufENBrUOrwpWV8Md416/okF7QIAIToZ5dpkhylx/JQs7dI+ZTfKY3/6Ts9Tb9jKwQkCWEnr8eogZqpQgH8xeFnqbSgwQMPQw2XIVuNOn1R9/jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOeh0MVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOeh0MVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F04C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744422593;
	bh=PqS7OknT29RhcmoKmcWmVFz29S4UhKh1AEpioI8A7p4=;
	h=To:Subject:From:Date:From;
	b=oOeh0MVOMkpu28W8jKpPbb/Hfdvlo0n9f/1aGo8INc8jQqWuLrxcn+5lUkTHlQyKA
	 qxslfsnEk5bTJzlDtb5dZzpxNP9XLo7MOj136oAJvaIaNswltBgftjVxkIiIvqlxFg
	 yq+Eqpr5+ZrClJ78LfhOJk6cSZaZavG0pHXOPHLllSZwifX3cwZL3cPTydLDsXciqv
	 QnOxHlygDd/z/Gwt0tH2mxCq8Gc8Gg3S4iBnFm0M/yb3T0s90x+jN78xWONqi09C5Q
	 MIstRonI/4aJDUBYrT7tgx7kRWnL5LAQ6YFSpOVtvIPO3NsNPn0VvrFkW5wtV330JT
	 F/O87l5V+gmow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C4CC369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442259359.6318.5918371184197699680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c386898272d4166d07e2dde0cda64df8849c6be1853c868c41748031636d29aa
Date: Sat, 12 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744422593
