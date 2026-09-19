Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EAC92D595B
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789810834; cv=none; b=s2PZ3eWe3PrQ7stIeDpv2nm98KeyJgPMiH1XiutPXTyt/3SXvTUkvj6KCC+SmAMpBGw3mGK7rHaiCQ2O080eSUKc9YVPnue4ymTOAG9PmrH+4+3O9gDwDgS9nbRw6p+UAZjtwUxTi6SAvlzA+M6TZv6xqZvRJgK6lhA8FZ75vRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789810834; c=relaxed/simple;
	bh=cjIsFpk8SVZIPocDRDFYn0fwsLfWuAR4NsmflOAsyPY=;
	h=To:Subject:From:Message-Id:Date; b=TtueO/ccbo0k0Iv3dthdmiKxnp5f4XaJhcOSJDpEWcx0jbwL9YGCj3VeFKUujWqpPv27YQDDaPMW/OmicsnHU5hU90NnCsVaZM337XAYnP+hFTtSENCD7vZcsPyVJFEg9vGSXJRDkRNSW4QCp4lX0YkEyAnGmUQ9EPodl5iU/oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/5ZVOnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/5ZVOnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFE4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789810833;
	bh=cjIsFpk8SVZIPocDRDFYn0fwsLfWuAR4NsmflOAsyPY=;
	h=To:Subject:From:Date:From;
	b=X/5ZVOnzFz9/0KC6LPNGJE5c3qmJIag5ThfhH32UXZGOV3caC1rBsY/CP1O0qYp+1
	 5RquLtvePpv1mfmUUPWVpWwC9OWRuiWLZil4IvLq4MXlcgE6mUfseCydm+M/maHgN9
	 qLgI10bCYYccrJRHRcoZhUxdJX++wcG6JU6utmtMbIwRGJ1tmIw8XFH94OyrIrwpxb
	 ay+Lgulhs2MxIpaph1GBzXhQhd+WiBx4nkM2vYg3vZdSZ9GXFSu9BxSAOO3FTWVguQ
	 Wzk69nM/ysd7wHKZo2JxcG1Z7qrXTZH+eiXZqHFAVIRipl2yVIqSOdeidK1Td0jIwv
	 BiTtU5SKISYyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B5AC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981083368.29353.8581238377111488964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad5562bea4f8427cdd8b8c5dcf455471b91d705ae184b4ae50d03ee038e80e5
Date: Sat, 19 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789810833
