Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6081034A78F
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791701434; cv=none; b=C/f0AzAHbRtHU+Xtf2BFqZn/dST2L7lb/TzKFg9IykY4pvKS050hpGZ+4Q16LvDmycH2JfkLdrn1RK7euPjajZKB3/fG8c157GthBqNmyTPQoG1XFWAmjdFr9K3c38n6tpADUAjXpZn0k6f1SZp+q7RelboSaMPJF67St0ofwI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791701434; c=relaxed/simple;
	bh=nLazkg4lNwNc7+ZY0RAqhJ7QYwRSyZt9LstUJeyN4zw=;
	h=To:Subject:From:Message-Id:Date; b=AofHngQYggI7Us8pTVEerHH1xKtEZxr795fghNAkLE+gUcPkiJTvfehvJGaUc+znflRgyqZ+aYFjeQz3R4dObZ6x/5Vf87+SjKSzVJsMt72QJczkYLJCtjMzt4ILOMx/kcQkfS9Qyja2Q4gEvbVRdfGStEd2KM4U9q4yTXLOeQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQ6GQT52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQ6GQT52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95C9C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791701433;
	bh=nLazkg4lNwNc7+ZY0RAqhJ7QYwRSyZt9LstUJeyN4zw=;
	h=To:Subject:From:Date:From;
	b=QQ6GQT52R/Pffu0z4OTZVpL5b/bltmlfcGLBxIOiThWTB+Rc5k6PQ7tdo1SmK6LOw
	 zYjuDiHBfvxqVPnj+zsENCNyaKH90laZlbTlpH+0EUZ7c9tH8QwXQ3HUtLxBQtb40V
	 rPGB5io6dU+TDZrrpmOECloONdTJ2/zLFpHwZvIZ9az8mSKFyoyS7FTBh7nznThyW1
	 5av7N3wqNA5aGiVvSsyMCn3nPcAOZngdP9QN7GfKOGC2Uq6JRbOoc8r2MpXMAhLbIO
	 KSJLRMGO1mmEM9La2wZV4hnMM3/+btA1iLGzci5tquyhVyPBoYmO+VXKccKp7MMqwh
	 Tv22pyIvGykIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6B6CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170143368.24862.11605587527882611981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3632f8731d41c11aedc4b4b8adf97450cd56ad5cff00a937848ba6094707f39
Date: Sun, 11 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791701433
