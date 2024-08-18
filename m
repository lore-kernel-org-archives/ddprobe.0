Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349D115624B
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724024754; cv=none; b=JFM/YZLJtz4JAQNppWVvlY2CrxcWDgi9MFqrlibj1m26dug8d4y8q9Kfsj6DLWg5D+n+imbOg5wc+z58sW2QqoDMCpo8MBIJ7LabzgZpsM1s1kegTLynGRw1/ztnzh4uEDUUzRw7wdUeb9r0t+54lgL4OLUiDrdgYZOU6nL7zqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724024754; c=relaxed/simple;
	bh=gceHMijjQr1TNRE9wkRZJ4ax5X1dcnKePQIYrP3bkCY=;
	h=To:Subject:From:Message-Id:Date; b=bkh126TuKmeg3nSXfLk8D/VYtLbQnAH4PB1DnYfJvRsu1SuqRIccfm9SCAenwMfzgOWzRF/rzAWLyhBBXxJlA8xhnA7BB2/y1y7g/3n4XWu9E4YJuDADdHM96O+1qTmfuQx+sT2L/GVrBVtTdWmScpJsNz8XT30/Y1kUProeKKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brpeHSU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brpeHSU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A96C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724024753;
	bh=gceHMijjQr1TNRE9wkRZJ4ax5X1dcnKePQIYrP3bkCY=;
	h=To:Subject:From:Date:From;
	b=brpeHSU9QCWsaN9LclsJ9DLaIYbCweQ3eJzTGm0h6MYRkGhbFUTKFgNbPI0z4qZkd
	 MipVPDt94I36qyXmf4dhZQfug9bdmJcyHwkstCRqj6Wh5UeydWycFZ9zRA0i8wCz+G
	 MlzNgm/maAHU7O5zm4v2uNO3hhO7aSJnz+Lt9jRUxQGl1D9TAhwj0mU1pcJwgRjLn8
	 qariUk8C+hyaK908A1sKcHagwsZPvPIlVv7HepVHu8NNFRFWE6aq6U0v4H+S2um+Rk
	 SByap8csrBJet2gZ10jymQH6E0nAMNxmMDiuGEaU7mRJEX0Dy4kiLdN66B2aJU8tUh
	 P0ae5o4B4pDXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D66C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172402475361.27641.8837226457571781191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33599cc0af58f6f921f655a20561c6b2ba56aa67fe400c7214ad48eff8814089
Date: Sun, 18 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724024753
