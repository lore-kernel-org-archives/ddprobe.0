Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258F62D837B
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760381994; cv=none; b=Z53w425pIRaRHl2jSEsIhq+WvcorCQukzjn4xqyyoc7pupW4DUA9Eu192MwsmuHnIyGDBGLeCVpcs6eqB03bsTMX+3APft4ZD65AdZHYHvouqSUPPhj4jjx/aKh2MuqaiLUPRwl+y06MiALK3tSbkC7022WOAKsZwkWbxRbamsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760381994; c=relaxed/simple;
	bh=jzZftp6VVA4Hh4IqJp/HEp2BrkoyyS4Z/k5zCOTOFog=;
	h=To:Subject:From:Message-Id:Date; b=vFxQuOwHyjQ+ULwLOVADELcpH6lJMmlENkHOfjpnZ3tenALVfVVy+ysIm5vL6vW8/X6D+O+MNWES++3vtrw109hsgu3XC9BqI2HHd3sCx1lgyGeEX/jXWuoWBxVEDlfV9ktlKnt81H1ESqO3OYcJoSuvEi0oxfVG7Hw2cD+B27s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggOpabec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggOpabec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0BAC4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760381993;
	bh=jzZftp6VVA4Hh4IqJp/HEp2BrkoyyS4Z/k5zCOTOFog=;
	h=To:Subject:From:Date:From;
	b=ggOpabecc/OjryrSuev9C4JtA0pZ5Eg1+IhniNyMkkywZrIQv1YyHUAphbMWXhQEN
	 cdWh6Lc32a7zs74q1tw4MoH0eaRuYXmpA1Q/f51Co4TfOY5kJjstrG3dvZGHQsncFw
	 eES6tz7BUa1sdX8Ks55s/ykTydFUzpAnlT2avWWvHFaKOoeUxvuIUlzZrgAQNh5Qym
	 g02NA0hQp0QoVXCrUxnTKYoUzzX13a4BuZmk0rQldBpB/EXSlWn0xwRbQ7o2NdWjEl
	 iReOE1U0wVB/cfetp/ox3zJBCrFIlNU1gi1scwqn/1QLWAjTKWXlvdn43vvybxgsVO
	 njm/HWPTFa3oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C5FCCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038199360.26289.8752537775113702117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0128ecaf30bb67ee59c4215b43da012893af481c5164bbf93d078c6f507366e8
Date: Mon, 13 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760381993
