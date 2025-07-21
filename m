Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15235DDC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753123794; cv=none; b=WlKPuLP3DL8MNbuDJkM/mtF+qkwIcjy64BYTSgQLtQO851wfzienC975jsXRzBI7aodsqQDwDdp3GHPleRP7yoR3k1NK3D7dZuUcPyExF2QpU0FBu9NUO2UnlcPScfBjYU2YRxCtoImPRLIodCCMIxEldopSOWxge/nsHBQ6FgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753123794; c=relaxed/simple;
	bh=IJkRSYTspKouLiXa7o1rDbkjjpgqtvRLnKunL+DKz00=;
	h=To:Subject:From:Message-Id:Date; b=OvlNgUcohvsm4qkoxUCkJ7uUGlmxyKmpZkMDvZBZ7bMzY1By9shffr5nXEITg52wpQXbUBkea6QiZCrDmgN6D/+AzwRymGzA71esry2xH0pJwOtW4CuRthihmauIVpiJ3qDlpTqIjg6c/QOy4W7mYIjtH7X6TVPkwDk+q87DZ6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeO8iHqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeO8iHqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E61C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753123793;
	bh=IJkRSYTspKouLiXa7o1rDbkjjpgqtvRLnKunL+DKz00=;
	h=To:Subject:From:Date:From;
	b=XeO8iHqOmKCL6ur8/q+JhTn6XHRQRFZgdQeNJRi2Pe91M+j2ylwvFRS65V6rqvB8N
	 IxeY2X/gWyddxDsrGRvLk9Y/u87Eg/uxri5L7LEUuJIYSj3+KMt7mQ6+6lq2myG2a1
	 JJVhliGu78Awl++8YIS/Bm5Zx8lWE5hUZmEogQXcXQHtA0EudfmxKr/PHR0D42GyqZ
	 iEazKMdqX0RiZT3sKWvmsEVBrVTXL6Y6p1Wb57604jQ7HhnFk3syjEQ+9M6+hmWwvR
	 Kzsna88wiz7zH6B8syckE0BPN2LZcdFXEq1kkGGz0XIF6/MOg1OLY9pXqz9KzkoyXj
	 03opbjW/I8Adw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9596FC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312379358.29037.7386757378830353836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf55fd891cd44613df6c148d350f36f15d1dc90507f29ccf8e644ac025386c6
Date: Mon, 21 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753123793
