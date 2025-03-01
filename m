Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3756AB664
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740865734; cv=none; b=hxQR7+0p9Wu/6LAzeTAtfxRCPzeHuvgTWqLiZZZfPbVdp6rd1Hk+iOBUTgCZx8Cy0ZtPfLxxIs/CEUD7kr/J2vJFr5jkB6PAKPrSiXtA5IxkN0BpRtCQceamuWZbr4SVJGDrCDDc8DLaeio24RI/WHiAQFhFuPZqD/cRnhk1obM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740865734; c=relaxed/simple;
	bh=zTlbaX1rqIancFyvupHPRr0yZO42EUgGza1TPXo8GAs=;
	h=To:Subject:From:Message-Id:Date; b=W1ujuaI/ocIDP+XCWmXI/DhWr217T76tEcqAcSSyPt+3hm9kJ/rYO1XIwq+vKzG0lhGSIs2aN40Yh/M5uGw5bR7TD9WQ4r+HTKQMZ+HBsjKn0sruiVfG139A0KzxEIad7FFRiY2G/f4ehjQryECseTsZvi2u21wgyK8tYTp9j1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlluRssP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlluRssP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50CCC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740865733;
	bh=zTlbaX1rqIancFyvupHPRr0yZO42EUgGza1TPXo8GAs=;
	h=To:Subject:From:Date:From;
	b=NlluRssPAGfeYWSRI5bHsuQ7CbH2Og+OmpuYRVdT9t3yaDfBC1p0h51jwZ6pKhZ1h
	 EQAQ6e5HLuTySQ51MCYTCN9FEFrhJsj56hhIWi3Don3kB3sdZS6OsXXEcIVky/DXf8
	 +9THhfuX2pAPZyQWpBqITeDL7r+in6wM0vs7oCyyA9zleM2JTNN3D9ebPLWoy6I4B/
	 g5f9H8zgTARNcfe2cOZpq7W+h3c0EgzHLJT0sOWRaEqLenDlaVO7NckL+czCZ0l09h
	 7QR6Yq/GXD/dANw927vyrWhUwY53IzpHU+nweq3NpQkuuPYGzT5AYUBN2mENJwsrtH
	 G6J6b8FfMh5bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A322DC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174086573366.763.10760730749020653246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437f67d564b00dbe2ae000accf7f67ae572852598af2ec7a6a6a422a503931a9
Date: Sat, 01 Mar 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740865733
