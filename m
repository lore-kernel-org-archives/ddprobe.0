Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E45C357718
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768433035; cv=none; b=sCuThFjsWLgz9fmd1d6pVIoMV7P1zYfgtXxpQJWZ47gJneZv7PIWUGdtD0ELEAas1wHQnkPn64KsnitFnJXo4nBcXNJBqrlDeKYD9zryUI6SfTjnyXdTk+K5jBs5oPx3clAnYiGqjzv9khnjrNmi4S3KKR5GR+dTNC6Rx8aCCNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768433035; c=relaxed/simple;
	bh=DritX4vsvU+4B7cn42QnmHXZ0tR6a5+LzE359SkxAvg=;
	h=To:Subject:From:Message-Id:Date; b=d9DRqLzI5yW1pos2U8bORTd02Hi+ubZ2wARfMSwFqWMuAVbyXK3bZA8TePpuhDaPdG8MHSA8u1h1XpwrZoCaAlpdb7HKjFsFq/XHuGiYrLpJcsJsSzhBBfGoIS/1KppHUQJ2xvlP6q3/GIEVu8/2I7p5BZGb7PujLRn9DR6d8qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/Dqhj/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/Dqhj/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AC8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768433033;
	bh=DritX4vsvU+4B7cn42QnmHXZ0tR6a5+LzE359SkxAvg=;
	h=To:Subject:From:Date:From;
	b=h/Dqhj/O5621Pd2NBMloHXBFs/nxnQxCBNeu4X6YGdY4ONx9hr0MI3864V2mu8xdC
	 p/IZrBxWSv+eQoop0JewyhNONwHeGW/NKaXb5cwCS3Nbcq4X8ESHkNIwdGZWpICM7C
	 nWx4gM5TDxupNvOpw4CWUd59VIDS8794+kBM38UaNoESk0WZiuuVfVeLRlFr2w5do8
	 02ndFSZi0gXVCSL90fpi54KnI+qniChXHCBxIjE+B7MKI3kD4KEEqAgtOrKzz84m+h
	 Way2dtOyYJXsLTOXRaJyawxpuk9vqKOppK2mznuqehY85RqD65tq0DPSoNfy6knoyK
	 0/3toVtu/3S0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94566D3CC84
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843303359.15529.14467311843065071858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9618386e8e448838e896cbcd167b0cdf459616fc716deb7bb9a3eda2fcd5fcc2
Date: Wed, 14 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768433033
