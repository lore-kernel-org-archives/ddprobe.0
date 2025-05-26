Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4007A4A24
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748222994; cv=none; b=puKOAKkgMvtuUa7E2oHAXLJy5BqHw+5+7EBO8cLuW49zaxtZknnGWtRHcyrbbdOhKY2wOpb70ZFlrrBZ5Gr6P5+rkJbEX2lgv+7l8AY/cCZ6SupqAX8UTky8FhMJ88l9uJp2MgR7w/pdKhHd5qpj6zh1PZdf8mL4buGKasHpimw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748222994; c=relaxed/simple;
	bh=r6s+7Rmiy+MXGzVujv2hvcXgWPsU0d/2sOasjvbAIDg=;
	h=To:Subject:From:Message-Id:Date; b=E04+jAn32V0samGIZbpb7FgNfhhjCfcG7RzS3igb2C/K0bp639upxNRH6Vi5bx2Dkjz5qalZb0e2qVs6IxmnIvxOM5ZeBMXthZiZb2hjLXAOjhOHZtOWeGJqyb8tMYGXXxA/FtEzx0EXTUoH+EazHOqehB/jj9MwvNn2SJd8OFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYGYdZOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYGYdZOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E82C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748222993;
	bh=r6s+7Rmiy+MXGzVujv2hvcXgWPsU0d/2sOasjvbAIDg=;
	h=To:Subject:From:Date:From;
	b=jYGYdZOarPFyBiK3LFU1nKqR+wqF5EUDvQa4R2abq0feG25UPBvjrU1dTOEOxbWoc
	 mrdfSPmpK1XkCSNXGpxWdq0JDiF9jnGTCt+IwlZ2aFc9mwDqmvDplovN0aYz924S69
	 2VIcI5TCn00Agfn4fcv6jc9Swng0ghYtZTKlEFC7VSfxuXVudH1Xy80OJQYGKoM9Mg
	 P3TOD96UFAq9jWQ8PuPD/hIjjICqLGklR6/thCzqlp3EwyblG8UM9bwfRszrOT55Zi
	 kBtMD0e+xTDs52AYTWqBlketJleCZX1+jsBYZpzHmN+0AOInRZnWLk4M89Et4weD+H
	 M5Fn6+UnpQ+Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94950C54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822299357.2609.6919800220639610594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40540a4c1438cf3d305505fb2f1104f1e4b9ef75878f53c5e4c855c2a610a51
Date: Mon, 26 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748222993
