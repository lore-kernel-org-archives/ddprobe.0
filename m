Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19985221D9E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765247574; cv=none; b=ikrZtqEBjodMrHoBDVWAsiQya13p2WVHcgFof/hQfjdVUUMfp1Hnu1M0wyVC2jO4HwRfAqeIlYwtSiUrO7DH3/ZX4Jh8zKaDqlrFTzf6OoS69nWUvAABawEPWz01ZmvHonqQuPhB47x77LkqAUKsFVfQh5tMfaONrXOu+bb5LSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765247574; c=relaxed/simple;
	bh=4kXUJ8LENJdNX9LJcv/jXtrPpYWjFun27mHrZh6Jqj0=;
	h=To:Subject:From:Message-Id:Date; b=bJfspPo+aOJcdwQejmYHovT4zMihv+NApSzyKEgRie0iy9cSKHee936mQkoAkPmGq+OdoN6/Sk7XQLfiPkUO9XH6L3VLJva6Aufh71CbjKeE5QtJg7gaPcuiK67n7Q10yvtSXeXt56WVB2WQZ29bE+Sre88VAqekDHxu3AuZUHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHNGQMMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHNGQMMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A370EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765247573;
	bh=4kXUJ8LENJdNX9LJcv/jXtrPpYWjFun27mHrZh6Jqj0=;
	h=To:Subject:From:Date:From;
	b=YHNGQMMqRq+ltYHXHQ/KPiIuG/FwhNpwTxKJ+JOd72qsiDNghWGr5FxPK+GtyuwtU
	 lXtvvtkX49NA4hV5KLtR5qTsAU+HZ3CgvcgP5fBA977TIe6aLoB2JxOD6uP8acydDE
	 PJTnKLwfSjEpT4EhaDmT4Y1Iyv5jwqdrAe56rmuqAVNBcUmaFiimfeBDOrs+GbTTaT
	 foBry2PPDKB5BdvWvEmLl7WWs7BzSjYU0KOwnr6CmreI4zk/J8imWPdHqggisqPG/x
	 ccP8+RUz1t2hwO/DfqxXEf/LEBE8sEoMkYpUnpyC3+ofV6L8G5O8ZnG4eM7sVkBnsC
	 v05AQKmu6yC0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC9D3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524757358.27387.13864940432379922695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6590505e261593aee339cab5c00377a25789a7ed4c25fc3ea34b7edc361db7
Date: Tue, 09 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765247573
