Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A701D07BA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744756194; cv=none; b=tl4Qag/PrkAXThq0MS+pA22y/kqtjLE63GsdxQ3nKbKFY9f+JoHiKI5ExAYrnhR2BC2H07aKZF+qWsLyPs/nO4xBIAgEwtL/rtK5TRgIpBw9GGGZm/hKGNd4vhyPMoe1RrVqqZgIEi4JaQrxQuAhsN19yWZIk8/zED/80JzhmUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744756194; c=relaxed/simple;
	bh=5OBvDXkn9ZPTDuNNy2jMP6TyZGnY0+TaHsbKoAW0lk0=;
	h=To:Subject:From:Message-Id:Date; b=AlPFR3lgeE+9C87zti0yb40w+4KTPZuIHNYOgsuC9ejn+RW5udkEdp5vVXVslbgcvq83zHlQPgkuxb6RNSBEgaLv4KCwDjK0GGDx5YSs2/M5VXWL8OE+lNhOLo7rk6u7nrsRJaI2n10J+XGxAvrkTLXJo9fO0CsbqWKu/0WGxqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsOGXoIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsOGXoIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DFAC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744756193;
	bh=5OBvDXkn9ZPTDuNNy2jMP6TyZGnY0+TaHsbKoAW0lk0=;
	h=To:Subject:From:Date:From;
	b=AsOGXoITX2wj75eJwwDmSdeMnISogr0A/jIv/8c7pn5bFRUPRDxcu7HFuiyus/GhS
	 L82L/zS/wcnFfIyyuYMS19lSx417p7qM6emeMhr4vhB7NLhslyMvfJLqGHCFV6BOaT
	 TtnTTGqt/Y2qwZ2eY8o8ltxG6vJwMfxm5I0HZ0GYfzEOtazOZVcjh4CXmWvWo7TAkR
	 zlxoF7i9QIOv7ZZtKiWZ0wi2cSpKum911ZhJLXlD1wAwRWSoWVLo12SN0/2bEcf0uW
	 okM1hg4TtWPT/xxN0NeYMhG09gTROnhVhLP73W1Zu62RZwSxd7J5p7D4UU7gCe0g7H
	 mCZwQxUrXhGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0D2C369B9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475619362.16048.10729532485013595472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8044e2e9fabbc2ae8cd8626a513ed8e6fe2793fd1031db323ee8d4508e625768
Date: Tue, 15 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744756193
