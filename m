Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA2943AA0
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716878063; cv=none; b=FJXObflPdbocjVa+ouPRe37PnfQHgAO0YPkdQgzGbjqbEz8XMSsYDIKYMzZm1wjJWRUjLB3nfWi/49/ho3eHVTb+/X83bfWIv+H988wJuv+YK46siHfc5Km/ygcqOGwmUYtKsGTqUelNeB9FT+/9sPQXvOKFBW7+6tdKACWOdXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716878063; c=relaxed/simple;
	bh=oAy3xWWqohmwX89XfSz/n7X3ZOnRw7sPGMmPgO5ea1k=;
	h=To:Subject:From:Message-Id:Date; b=s5TeqrK7eEKZRPc2C4awM1VShYYVDrSIF5MiS6Fqp+OZfNFy60O8UIVKnXHkOmln4s+xCKrHXP8PkDs6sEBp/wotXRA+4LhCDGmhkfG+qMz555H+tbbW3tw9gYqxSi1mr3/GUpfo0TjoqbQe09trlszAls9i0OYrfjawcxe1WpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dh0FDP/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dh0FDP/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06A03C32782
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716878063;
	bh=oAy3xWWqohmwX89XfSz/n7X3ZOnRw7sPGMmPgO5ea1k=;
	h=To:Subject:From:Date:From;
	b=Dh0FDP/kNx7LpV9luyYby8iC/K0CA8CD9IEejD2yp5U3llNpnBxIgivBGCxo2qmcH
	 Gvi5WAnP11FVL5ugXrubL7Ux/+rzQnL/9JvGq/LAGYXXo4gAF0ZA8Har+PMX+1geiS
	 7nNRhiOKdHto6nvIlt8C9H2XQ0tULpu1bwLNcxKX/Mc4MQNrmA8RM4nI6A8SDqEC3e
	 8LHOMOEITCqYOD3kE7Dsa/bXPXD9hpaFAbOwxDJhFNlsJgdMANQ8ng58FTiDroxIXl
	 q0yfDLAxqLHXzIl81Wda/Zk5hNBLH2cBsczVQz5L65p2c6Z584G4mzhL5c0oJCP8ZH
	 zkITktFOm0E6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD73DC25B7E
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687806282.5798.3855541522514972115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c513bfefc0e6f9beca51157108963f86e85a5c3e9c652e554f8a629b64c070a4
Date: Tue, 28 May 2024 06:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716878062
