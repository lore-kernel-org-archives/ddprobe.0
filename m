Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B16239E6C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781334394; cv=none; b=Wqfw1d3rHsn8r4wTG6ueZv3pzogtnYt3kjgdq+r7Nyy9imzDKQljxSogbpht7sxgAYetGX3B66uZRA7sgti7JCv73vAXer0zwIPZOf4lsC/BHbJ0uOIyDBEtpoXNeDw2iniTlGHXrZRE7r/8C3wcio8nX67SyrBbOBmTlMOrMGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781334394; c=relaxed/simple;
	bh=12JxmRl9BKYC0xG7vvi85kYp7LXp/di8ZY1oqbYJa2I=;
	h=To:Subject:From:Message-Id:Date; b=lHRH6DDoLI0aJgR2gfbt9S0+zUgRuMDbdAxWuB5Rdv/z3j41AeT2vawB9vastlEv3grSBjRu9K8X+YpYRFxsDh21X1Md+u3m9X5KFeEdykuMZrgA1uVaBlhW5Z4LxKBitE5UKM/JugxzYhqefrUm5cbZiF25yoHJl4ER7ESS2k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOLA2yOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOLA2yOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CFCC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781334393;
	bh=12JxmRl9BKYC0xG7vvi85kYp7LXp/di8ZY1oqbYJa2I=;
	h=To:Subject:From:Date:From;
	b=uOLA2yOs4jsoDXSiWoqhvBjq0D5UARM21qrMVCJKxWRjn+6SHAwTNgPyoggOWXPZv
	 mldrgyXJZNYlYvjkLvawyRFjlKI4jFUUE/w9z06CYitwyNAlHvJz9MKeDV4Pqu23iM
	 R30g1snu70EmcwVO+l63i3eFaWhdSYvYQsXnLg8QUsx3x06HmvoAaexkdzPRqDAnII
	 QGceoDtC4OqPwcePxLyUkxZ9AMUIVeXmWTdl9p6VBxFxOq91rpIUI3vabzhSU5vdaS
	 qYK3EzScII8jrtzyueVC2+MG5ZzzHb+yNhGaYDyhQ1hWRkGZYr3hcK/VH64m636ii+
	 d4a7lxRzmAmdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EA3CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133439367.17116.5444078056084959137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d162e32be1e6409e61863b1936dfd661ee5ad5b104889526a0003b30909e87
Date: Sat, 13 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781334393
