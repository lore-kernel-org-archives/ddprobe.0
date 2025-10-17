Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215802036E9
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760737194; cv=none; b=m9BsJ670KqAlj8XVbZUg4jjwjW+umhSYP+vEtCNFydqdut6Hronl4xs+6eHR4Ft9taBhXg3ZcRTGxWBuschND0fa00rq1qQSHfEwhgnBR2fkn0XLimDv6UbuMNdjnduJvGbKvxWFPlhbIjv4hemp/MdE5xCicoWPU2NFUf8DLO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760737194; c=relaxed/simple;
	bh=aAs1EK4bLPS4JhAL5MWbefO41uyUvnxjj4m4idnpka0=;
	h=To:Subject:From:Message-Id:Date; b=LgGHlkAGUI5npRIpnqRHOs3gihvkwzR63pj6oiQ4rP1rL2DXkvc85Jw+8Sp9l7GRM0lYNS/E9BNR2GNi9XXS6RB4FnHRHzDMyEkvBMyJb5R4TxGivuy0+YU7TjmClzJplSSi0U68ZyPIdt1SLl0UVdEAB/W8NgmajZ6EOfHquRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfuNLZqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfuNLZqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05B2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760737193;
	bh=aAs1EK4bLPS4JhAL5MWbefO41uyUvnxjj4m4idnpka0=;
	h=To:Subject:From:Date:From;
	b=dfuNLZqDDVrSoBflaMUErO4Lc+fV4NkXhxHGfSNfgdqgCbLXpJ4ceOGZpU/u3UQWj
	 DcZFKNW/CpQVIs0SuSlO3lX6LINKFT8d9r1li+t/qNQx12J5m8k3si6vfPdbelioCv
	 MuoSOc2NE9B5cDHvRIcjBc1rkP8AMBsoqYAw97t8YJ9J35ZQh2P0HI9OcqLvsSa4Bk
	 wx0K5N5yRNUxpWZ5MSCH2OfQFfbXbInXzQbDXqS3xc9UgClr5ACYzPiz6VlZnwiCUX
	 6l76zAl5/kOUODK4pkgH8kfDMUUUOqvCPO1fQ9cTNFT9/uqvlF6TjlMKC9GEJi2s8T
	 EHGF8Wi3YBVXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC10CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073719358.14570.284533460311941642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf569f435cbb4067ec45bc854611fd66d3e3b09eea62b1fca8dcd76ab56f789
Date: Fri, 17 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760737193
