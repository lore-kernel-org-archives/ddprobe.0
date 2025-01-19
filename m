Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2C113C80E
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737282954; cv=none; b=P4CvsIMqjSLIT4f1elAEPhI+RbKzcBhiVPz/QzxYkC8pxzxyYHVEIhbNkRoKjxqvgL3Q2xsmidkB1Zbrvk9DzNEanhJ5yITOpE7C/Y6wMfmpCHOOxwyxzlUQjBj0KrCSjlSs3R8DSRGns/OAxtV4YIJSM5r2lBREyrpQga/XYLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737282954; c=relaxed/simple;
	bh=nDkyFPcsYvlpCJ5F4HYg9PbiJVctXliSvWv49/Rn9AQ=;
	h=To:Subject:From:Message-Id:Date; b=kVJ1bNXXFokUtR6YLdp8oMk9EiqKcwb1O/geoiWRoZl75PYIh2wkzuI5lagRj61XzmV6OO6iWGSDCLihINGdsEDY8YVjPnV9vsR+v7+9vhvxKn7MZfjk/z/WBspjphX1m6cBFFqPYF/XU/ZeWrGUhracpJ/ddfpJ3KT4Z7BycF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kE3qdXcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kE3qdXcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25D6C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737282953;
	bh=nDkyFPcsYvlpCJ5F4HYg9PbiJVctXliSvWv49/Rn9AQ=;
	h=To:Subject:From:Date:From;
	b=kE3qdXcJeKfx9WPrIUXwnK7s4hkDSubKcXGA7Tl2qk1dci9aiuC5Gmnv9re4UrxB3
	 ruIrnFVLxvgXn9sY3JhNTkwfY73ioXHI/ni9f4KWKuTnfmeYnVdrnWu8iKcYVuS2kd
	 wQkt7YTiwxdP5BFLAweuPY6yyNe668fD9VqEm6yPr5F+EC33U4SvLBcHq67nOdsqZs
	 TWuyBRVOHR8rNdTqFuUcNohRxPvkO2xj0rr7vSSq+Ac2rXJnIdKhOOQd7uOCXDzvPt
	 ucwH/8NfapRdhwIXGgaOAkLgHgISi18c6bHP55UMP6dMx4G51fxmnkN1WK/vjA7N4A
	 8Wdc1whR8i9lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFCCC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173728295357.31426.12720072319387970198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5f52b24f1d9656b0fe9b7e1571576f6c21d5a6144c5819b21bbf49eed2757d
Date: Sun, 19 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737282953
