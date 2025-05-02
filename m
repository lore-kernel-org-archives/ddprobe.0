Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF3B136988
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746149394; cv=none; b=niLyhiJrhbxkEiENjMwJbhOnBOHBjesYGwCV6bOkpeETZmzQ1S8dEjbVgM3N97b5qtnhdcad0lL3oVkhaaWL6aOOeoGmlSoX+2ROAWOSUgdLc6FxMxE3nXAChIm1F4uKSf2jrFge3oGQrLdCA+j+6gTDALQWMdhe5I1v4TfHXpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746149394; c=relaxed/simple;
	bh=8dncNvdjkMNWtuvs4BKQwaEXgz9Ha4FyJLu3HvVARcA=;
	h=To:Subject:From:Message-Id:Date; b=ZsoWGdts+ep+6Ilml9fzn5wVWntqnzYajwXDhQQGjBVqDLvYpX1WZTmtA0F/tSE3dLQMd4VrZ4mtNAmXCLO0SaOqtOx7bNn3ZUExc5cGp05AlynYXFaszSITJp6rn77cvgXGKjiJjUyD8He5IA1xO6QgQo62ENLDY+ZDkA2YHEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rImxJdeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rImxJdeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34FAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746149393;
	bh=8dncNvdjkMNWtuvs4BKQwaEXgz9Ha4FyJLu3HvVARcA=;
	h=To:Subject:From:Date:From;
	b=rImxJdeQ26uGlYJYD8wsH8l8UpcfJMAtm8IbQkbSR3jl95X7ARhPwQkNn8570UO9+
	 PcO9VAEuoq7a2RYE483NUq1nl/EDhNjlryZuhIJqfx6g80uddg6L5ZUnmR7795SqBy
	 DRoyul+5nHa8p3mS3QP+Z9rV3hsHjavB7ccATKg4JhHKD3I1wZxpFp6n3Wk0U48NPn
	 GpnGES83U55sPY7nBzOJS9GsBRa8brv+dM8F6d69KaHkmI4XvYkEYnzHZoEXl6GdVz
	 2fD3zfc5m6Tfp2GRfqjzbc1JZ/qBksHd+isubwgHdFS7oRoqahBAT0O4ViL0K8eCIF
	 IOln4NAfdLmFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B4C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614939357.16142.12497123812489301583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767a41e3b1cf1a3f76229dbc44aaf3a2a10e926ca2a47d446e792b1616f7cc9d
Date: Fri, 02 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746149393
