Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14681357739
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774385094; cv=none; b=sDR4oloMT+NziochXCJfAs/IImm6LFrD2Qa4bYTwac8xhQnjDobwC6gUzucDYqMUCoaR/NB6roZHgl/pqvG9fYbEkYOp8ErJ/fUS7OfRYqCYOwRcrZjK/N4JeSLEFy5zGLjBCWl5c0GcEBG3Shk8JQVmD6QS3er7bFs7iI7wruc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774385094; c=relaxed/simple;
	bh=+h8pEgeNlRn6RgRNmF/WKik8SEKev0LXxHB55cVh4SM=;
	h=To:Subject:From:Message-Id:Date; b=BW12ZweATIpgCIwpOr4BhYSF7f/TOjFdzWqNMOR8OqB2mPzwiYWEXw+vemTSaZB6xgF3pH3dZTevtILUS4hR8ipl3Cdne4YGuProVZGtYwc4vuE1KbJCey8Xbg7EKWxbWhkyMbFNgwM2Xn6WTB3azaC6xI7J8BlLj0HyMtuHTG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7CN+qz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7CN+qz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE9BC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774385093;
	bh=+h8pEgeNlRn6RgRNmF/WKik8SEKev0LXxHB55cVh4SM=;
	h=To:Subject:From:Date:From;
	b=b7CN+qz4J6mV6basUtk40NXR0OgvPuIckFovKQuUB5SMS+Tq/sKs/bUUAkX8YysPX
	 NUU1D55bZZgqHkgqdLpEPK65TkQBpgx0y+wFOescYRnPA6sneVKbU4EtwOI30Lo+su
	 A1krsSMjdL13a1HB+y/ClA63UpI9/iWA4qTqEeZJ5lMyIN2W6TxFKmAHtV4U424U3t
	 ty6r0VAylusUqG11ITTJTnCbVynMPReEb8NvvgG88ioQ3MUjXtagWa+5KSsXOeyLRS
	 kzKh2NQ7TwkCycOt+RREBnchQoljUH6clYhvKNePEczEEo1wl0+DzyW952vH7xSgKU
	 iUQjN5SAimRmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1B7FEC111
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438509359.10092.1609643721922089978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1fcd627578b1a72a5f7cd4d9738bc6807b44c3089a00d50c44e22d9561c54c
Date: Tue, 24 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774385093
