Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D372E92D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750796994; cv=none; b=dUJ8OxRRoKd3UyTjq5bUKruVOR4vhOXDGBL7w+RE7DcK1SJNgqwp/Y7v9z2Jmu0NjjBWnv2riWG77iI6tBsykkD5fYaC9OrszWOonMxmrjRwxPIcoCIa/FYM4MHaOre/p/iNe37I51iXZkRry/lQGA1GI0C2oX/+BbWlT8ZkBSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750796994; c=relaxed/simple;
	bh=o0FcQYbsLDWhyLrEcPnRftIX5FPIZepvVr+rHhjmrrs=;
	h=To:Subject:From:Message-Id:Date; b=He64MBpcG/ILitDS9bYwXvneQQ9y6UZYwRMrCJAnC7glxOpN2JBTI5uErhKwnmYZcGS2L6yMVI3BMY2O4z1QwobZCctBcDekPOtHsVFBywVSvXvy9VjKOQoMzpyI4F+KPONvPLTbGK9cwVnTcgBLGMUkqZZeddvg0fQjdU/tpLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nusuHpB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nusuHpB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A823CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750796993;
	bh=o0FcQYbsLDWhyLrEcPnRftIX5FPIZepvVr+rHhjmrrs=;
	h=To:Subject:From:Date:From;
	b=nusuHpB+p2hB0VtVzXXCB2OU7xMynAX69xX62/jifnhYtw6w3pzVQrwqUSxxpru11
	 ihZkLN+k1WI2Pa3FjET8YY19To6JLtohgL1/jP0xT9Zhfm8noErW1mz9BzgQVTEEo5
	 +ugPGtO3JtPX8L/p1ZjX0ozF/Ptofy6neBozmFY7wKGi4jXCsdiIbPGczYiJO9oyga
	 NIloqN7okY9np+V5IRt51wlvgRRmZtCI4CkWdAsVsj9P9Urohq6qR6aooflxIu+m1P
	 lpyj1l4qBSrSFjx33Zk3pwBs/LYkP0CGVWMWo/6R/mp6sANjMfIJFjGPRJwpKNc+ri
	 nYzipSx0AHVLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED0C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079699358.3367.1046670327476576670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9653ecd93f9592024a7b2fab60b8d0c5a26155cdc896cba21cc6d9ec21bc2fea
Date: Tue, 24 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750796993
