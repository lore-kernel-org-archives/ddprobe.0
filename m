Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A658647
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727232354; cv=none; b=i+lNs1h8eYMbkFZgd+K2J4rm82lFzMx0IMCwXTsrFYl7WJjYN3/c81+PH4EqIPldpZhaisLGraOWvfsOJbkTCTF4G9qRrmmusdSxtCimgtEB1St1+hgzhkOsQgUZeCeLD47JCZYzczJf4rxTxgUu1iYuMi3vJOmUYu+u7io2XXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727232354; c=relaxed/simple;
	bh=ZbNW6vzP54sptHPZyKlo7ZN0Q4CHUwuDvBeXNg7z0og=;
	h=To:Subject:From:Message-Id:Date; b=DbBhLXxnbUyU3gbnPR9xifUWpMdF6L5i+thOkc5r0oeUZj1nGzA93a3nXmxMzuJ3MFvplfIxr4i71hSs0F1T5ulP0JE93IL6ZOJ9C0hTGvmtJZJtzgWEcAqYXp3MgOMhM9AcJyYmD6WQkA7uHmklP8yyRCe+ap/EQa0yBdPmo7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHLUojCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHLUojCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A149AC4CEC4
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727232353;
	bh=ZbNW6vzP54sptHPZyKlo7ZN0Q4CHUwuDvBeXNg7z0og=;
	h=To:Subject:From:Date:From;
	b=HHLUojCAqvJPCAFKtluhCPOcGtrKDy7KdzNu/BEnE5eDXKzfuYxJNQFAjMlIKc3Ol
	 TtCIi9JrFViuOv/IEER/RCtz1nLtcgQmSmHOKQacUWEprBF9zO5nzxmPwvZIndDxQR
	 VdE6oNur1z76zOjZgIl0k1CkHs53l6xu6gkw0lMeWpImWQHvu1245GuOF8KVF0Nosl
	 EnjZqG3+l6ikHGLYk9nZhDvpPl9Sgc/72/BIgflLkSNTSRE7oUnwiV9ScM7hCGdafa
	 4We9G44h0OH6x44TyUjJz12Oj4PGTIsgAk4gjSXvyJagRmHkqKi9qJ11KVlx+e8hCY
	 I05Z5rQS3wQwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BFCF9C69
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172723235358.15375.1373595557982236186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d595ce0537a74b4cad75b257fa6b52f9f9a8f65cd115270cac8ea7840c5deb
Date: Wed, 25 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727232353
