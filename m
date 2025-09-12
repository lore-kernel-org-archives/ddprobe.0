Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074333FB31
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757635794; cv=none; b=LpkMhpjIjkc4fi8cI2UMj8ZlqKKcCXcZRVbp2ZaJtTUdFujWiwrdTMyksnKchSZIn4GJ0iHTKuCFNh7TphG2S13ijqCw3H/x+2RrWfIxDQs3WAw5pUC1rzQCrkZHEnRkP9Ebm5h7vRVQDQZioBHHw6yk+VfvHJl6RRO0emBcJD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757635794; c=relaxed/simple;
	bh=PSnsPQ+lgiMXKZz1p8Tm3CHTXrHpCGa94176Bqi8yRk=;
	h=To:Subject:From:Message-Id:Date; b=HbOtk4sbR2sV0ROlAKbxd1sQn6aWcxQ+5zEx8MpTltpSqtqGUxqPbBJHBxCrEeOxjHYKusfIDZjMTbCtwlE9S/4+g/mK8yPkVfDiWe1Yb2VZ/q0rhqoDIgIzD7V+RqTWGewMYbXb6zNRqvxTsJDy2Q0rjD9IRvPxbCXhwuzW6pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDVDjqhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDVDjqhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E32DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757635793;
	bh=PSnsPQ+lgiMXKZz1p8Tm3CHTXrHpCGa94176Bqi8yRk=;
	h=To:Subject:From:Date:From;
	b=KDVDjqhNzKr7uMsCmD9t2wgOdI55XaTiuv741hNfJPF9NrSj1RFyzjR/g8boaaTNX
	 Cp+D7HZm+4HXrBm3f+pyV2gMmuUHolundPgODUDD7uUoT/4a+scrfNA8zb1mSmwa+D
	 k/b8Kg5cRgJYoLh0BcON/Qr1rB11KAoofIouJQ/+Vjxp4tO706BXl4GspawImSElxo
	 +XQt9CTqAh26Dy2naV45iGHTLdMoT+upYrGbGqWFpzbEjTtO1yc8rZ4BrnGWuuFsrQ
	 Z3RiJyEL3bcPnACRSSlO2BHgY0hPOLy4j4sui2joaCHm+wkhc11BowXBtd7MvGyfMD
	 X/ce8JK+fZnxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFDCAC58E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763579357.16307.11901745380271696964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ce8f799e602b34b9d42e0b0a1ab03dbc2dbb08a1f00f73c98c2409abf58e23
Date: Fri, 12 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757635793
