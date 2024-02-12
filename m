Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD6D2744C
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707742697; cv=none; b=o1Mf59Brc8r7ExwntXYNtVlLYYmv9f8+MBrbF5kodfpHv6tk9M3fm213JgT8U6p1m6A+GO+87lCT20ry+A/Way//MGctV2GKwyWwXZG6+aOL1eCWKHNtFE+0gw9HoMDykWjNF6Q8xnA8AD9vc7GONIhrluRk+7xC9uIKhdA31k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707742697; c=relaxed/simple;
	bh=1GyjVqK5XIaCly+6wJSmZ9EoVn0xxbKckavmMAfgy1Q=;
	h=To:Subject:From:Message-Id:Date; b=STyZ6fMTbe6LuSvx7gqspGXURcqOgV4squ7Dpzc9pAuJDdC8UGNo/uPcKvIPCcTU+lG75Bm+HuUC3VeinOjCtVAAzs/GW2tv1PjXyn06m+wnsfy69Z6tWC8+JB2u71whOaObq8tu27yasysdpkZAZjZ0c1RAgtS1QCksp+j0HaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4O9fHcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4O9fHcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CB9FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707742696;
	bh=1GyjVqK5XIaCly+6wJSmZ9EoVn0xxbKckavmMAfgy1Q=;
	h=To:Subject:From:Date:From;
	b=M4O9fHcGTDTtwpsqEKrVZZghU3e4aahyta4LTMyKvx145rg582rQkvE3x3bzXPbE6
	 +RJA0ht55Ai1NmbXPRU3YDO5XyqmFg/OtB1uOrylpj6O01njrehcw2hFqJkXJOrXbC
	 M1ihqm2uYfqVxL1eRIKmW3Xa9PQtPANzujTJ7WioA61YsA9Ff6MujImamtUxLGRA+C
	 jLk4G9N7BnCMr7DB57pdV7AKSDqiTEjnLYZX/DoWD+lXqDz0woAHAvGje7oWxNQ/4y
	 8F+y1diY/R9JlhHLEp0JVICkqKhTQfxqtDvFKW9kwsv+XxJl6Qm7y+3Rsl+x+6XqEo
	 mH/cgkUvUJXRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669F2C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170774269641.11179.5366767845972830755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9a23dde88b308ecf7a0a28e4549282e76e1a4f750c36946ae923ac5986fa09
Date: Mon, 12 Feb 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707742696
