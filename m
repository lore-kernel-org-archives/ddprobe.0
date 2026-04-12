Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E33E6FC3
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775957854; cv=none; b=kJLPgPyrjY50cQxnoHBcUp3HL2JS6u2ABP8RyCZ27di1CCnwt3cnY7BQOZ6oy1Cmr/48fQx+Ri749+rcOMaZwhAaoLyRh5O29OhLuCjll5WSj+dwksb6Lr3BoTrPp1VzYhXLaPn5XhcpbZ/M9gMxHOG9bJrUKXpu7HyNkmWanog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775957854; c=relaxed/simple;
	bh=T7VDvrDGjj0ujnhJRI8otvWnGSO0JOVdAtJWgXdOQlg=;
	h=To:Subject:From:Message-Id:Date; b=NHonMopelb6rAEXy6wr++9DI5Zissy4Ej8fpRV4/mWWweKlSQIj6bpJBHNy78dhK3yUjtlHstq1YYk/c6rQFabO3P+5wsdPR9Pzmt5KJ0ZACrL8knP1G6pswo036owCD234/LM7i/nuGcZGR86eIXtNgbiLqPBubj9Khx6UlAv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROPSGP7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROPSGP7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79F7C116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775957853;
	bh=T7VDvrDGjj0ujnhJRI8otvWnGSO0JOVdAtJWgXdOQlg=;
	h=To:Subject:From:Date:From;
	b=ROPSGP7XqTsumfi/Mtc041rYA1ytwDybbuDvSGhGBSz8trhZgRfluG5sK6BOoK9l4
	 BO7Zbjtx0FTZy9aGH7uOHbs7a9E3f3FUtnvj5oTE24k8DM8mBgbFYYvGtH/yX2PVo6
	 kyuH+K6iGV7I1NSO76vLUMnZ8PPOIe6D3Z/pCcKC0U96wnhk6NA0uRxjOs2NfdZR9I
	 Ijh/CEQQblP/ZToHbrKyx5JJHnlnKK3xny/qO9/y3g6ho9A3gwsw6B4Vw/0lZY0f5k
	 8IXjItkTzBC6TO1GsNXQgC/TO7L3GAJ3sWdkUb8RfmlAHY9UF46Y9TBZ7x6PSmSYk0
	 2sEcjs6SeKLVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BB5F3ED4A
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595785368.4714.9937411701723774549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7fb797c029fd63521dd2aa5bd9fe5ecfaa1381c957a33760a6fdd3e294850f
Date: Sun, 12 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775957853
