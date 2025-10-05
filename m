Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296113AC39
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759689594; cv=none; b=lyrsJyGN2K5/DZl2WRRtNbHo+cJRo15VkZYGLr0ZspGWcGylPV1m+oItaPQVPMHSvneQvIZriXcwTQXNC8nJmE9PY4vA0o9EP0TFexa3gxns/zXUtwC1aFOWqu2m03yxseNmTykeZI1XZa7eObrq1G+6CB+u0Gt4VxK0uny4mJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759689594; c=relaxed/simple;
	bh=iBW6/0PpAjDBquxYElIRx8FRMNc4RRw1YEhyWv8U7II=;
	h=To:Subject:From:Message-Id:Date; b=M1HPl5i5xpfSMkU7CH2bnLyUKvHLafgko4OcNfdY8ydwJZr7aZfOt7qV/gSUc5icQIkQjD3yxMHN/wArDJUGR0X1SEdpkfTf05y/TXzZFK/nUTglidHxa6bfc55DOpaufVeVl/r5e0VSdjWFS57MLmVMgZbZmIVF0AsJ2krnaUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVck5HAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVck5HAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE52C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759689593;
	bh=iBW6/0PpAjDBquxYElIRx8FRMNc4RRw1YEhyWv8U7II=;
	h=To:Subject:From:Date:From;
	b=FVck5HAt/Jtbv+cdMTZ7fuQli+XcCADhoOknvEOsBgGVcKIcUZU9PjZi2IBP3EluY
	 QQi2WBrZh3eXjhq+Ixy+bEkMBtWHH8egJWdnuBi2zhZ2hCFGXtulKloalofBvIoJ2b
	 l5LNkvCZWyL0kU5pRWV9QouAEB2nfNNj1CrkqEbT2CMkrZmL7wyDt22Skx6JqbEg5e
	 Tn2fEZK8bxJ9wItBq25tAFRi/3NIk0u4a6rjZODmUMS+g6+4qCjqAicz5EavxPGrow
	 Nh4qFDViaBfkSOvKdv4sj5en0ATu8qvJeuqVrvXfUTIsMpdwihYixZ1a7Rx+u/5bg6
	 28pqH5vI2O9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B90CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968959359.4342.13620593822368730691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e68467b7a9971899a7ed9c0e0ba5b9ad57fc97d51e5b698adf3e6df5967007
Date: Sun, 05 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759689593
