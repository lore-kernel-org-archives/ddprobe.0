Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A693E51C1
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777918653; cv=none; b=S2QPVnL5pAQv+ykNqI7SvzFcVd9qhEmZXQj8b1CefCenlfip2Takz5bMM7Ip6cB2/6yRXiUUm+EObIKsPtD3iQFd8ouqNOPuQHNuZD5ebr/wGX7YraTA4wLIjugrMtLgxWhveRYmc6YWLp0Bw1WrjQB8+ijLoVrLiEAlYm/6l3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777918653; c=relaxed/simple;
	bh=ayoJXhLNWj3LNeKe4jwRZ9XF5m5tj8spL7YBAVYEq9Y=;
	h=To:Subject:From:Message-Id:Date; b=lRYVYWyaAmBpFFf9ZNRmQddZYopeuJCdGtk9JL99oXkRjRHZlJSarF2pislb9ZGAhBiTygRF+9Y+JSevaPyF9sTPY//fALdsBU4feoyxvO++D8PWzlWM2QOw8ladkpkncbI/nmcQ6u5r48m3EhSMM8/qvvoHnFSz5jxedloa0Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8UP8oPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8UP8oPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA18FC2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777918653;
	bh=ayoJXhLNWj3LNeKe4jwRZ9XF5m5tj8spL7YBAVYEq9Y=;
	h=To:Subject:From:Date:From;
	b=e8UP8oPlZPPyV8f9yFyx2XJvHcl310yfBcfUutigmtiiA4IAF9xf94aQ6b3bmViFx
	 N09o04Znrkxfrd0OcnvM4cKOrUhv/yIEjgzUqdVTGq6C7W9eTel/EJh+zY2Icf8Ul/
	 Jalor9muVt1Z6RTa5sNdRa52sVndzvjgf4uV8h0ajsalzoYGx8iGGyILYT91r9RaC+
	 uKJSC5dKHYRz6TtgmbYM6EeeC//CQEuhdIuhl/zTA679OReARrNrzWLK3x8ou8nzVQ
	 tj1tmlwKo8w/1Rax/ffKqDPY+o0csjz3cKQGjAotkiWhcZHBxM2vkEvmhqorqefiYy
	 8C52BuM4etPLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E2DCD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791865368.31232.12123015785321777688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15eb2a94be1565bf687042c8ef76b05407ba3ea7c55d88fe31f1e5fd5ca86a59
Date: Mon, 04 May 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777918653
