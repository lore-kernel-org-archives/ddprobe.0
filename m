Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3751736C
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726880754; cv=none; b=hz50USq+9E26AuoKCpJnpaC0ACqNUNYTBRQNM7+gxKn3aq20Nv/9G+2ojEk0apI0A9QbXN+yxIu3jxKSpe4bJ3M5q8oqddd/e9zgZauobfDrrvYKDeEzdoUk2Vd9SsPh5JrQsnHgo/6OakMAOj7m24QJSaHny9Jm9wCRTr1u62s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726880754; c=relaxed/simple;
	bh=xE6kQ1MESi8fvdlUXqVqh15IBmyAJFjJ6wwL/WU2IFE=;
	h=To:Subject:From:Message-Id:Date; b=LjEcvJHCwg37TKnaH1FEmTDzJy7Em/swIoVTUaCFSSBuCKi/ppDI1ylPpV5+7HEjCOHCU/HA3wVrkzy1EBindb0Ut8k/TJj0iyXtCYkz6V14dRpW0sXujK8FNEIlr4Ch0yVKeS7JrJRWf5xUWtbXDWv5QmYMCgK+QDQ5D9aOgB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYVbwPsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYVbwPsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF66C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726880753;
	bh=xE6kQ1MESi8fvdlUXqVqh15IBmyAJFjJ6wwL/WU2IFE=;
	h=To:Subject:From:Date:From;
	b=CYVbwPsyJNpujNLqufUmD7GhF+mYgYf1hCwWlrEIvy5wy+JXUvwWeIYilT0LBtgke
	 ngFW0enxoKUccA/JDsxnl4i/o8LoST9K+DO9lMPeQHSA2QbLKvqQ8bipAIOz2ISdss
	 3LLBeNEdaBbAdEflUUMY+xWQ1heyVhvaCYGY1rI+h44sOxVOZFj2Lg0VKhzLrpYyz0
	 ZEYYISwSEUf5WoxlNV8dwMb4cTBecYk2atHbkncjiZ1oOwEEFsfOWs6YSOGmNJiL0H
	 hkLfup9PScF5NQDCojiJu2GizeR8RPWOkrrK4WRIRw50uiey+b03NUz0oPW19L4gmY
	 qrbh+8Gd+dGqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9959DCF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688075360.29375.6317089965845358837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f2378ccfb2a811ffa150a4b55bbc2df4b9ad4a879adcf7b371dc2660ccb188
Date: Sat, 21 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726880753
