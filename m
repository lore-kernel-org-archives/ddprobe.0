Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642533DE457
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779280234; cv=none; b=oahinjqRb9iFKH9XcJDTx0FshDVzdurMPg79lPa1XRrNne5PUhMNO2IRvnpAgPCCk3SSjUzjv60P9FybRoFbG+1dN8JJ1yBLkaz724KoabYVGfG1LHE0ZHT7ECoEUPBtW6vMhnUgVbb//OBX0r3Wonre7yWqXWs0SeBlveUsT3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779280234; c=relaxed/simple;
	bh=HoLQ529Y49gozxoJ6l8pbit7Po4+1p9PcXO98nmWTh4=;
	h=To:Subject:From:Message-Id:Date; b=jI+xKxy96uIQFYfVOC1gZlnC0siOES7RKq+9xUvZLs08HZKjQedDJ95udv/ljr5FXrry0inZ2MQ0htuG+z3DLY1b0e1+pftQ5pwbEpc4T21S9uEi5w/2rHcJEvnvrjxIA+xG/T4w7iHNbvqI9S5QW1xUpAkcVYIvYyP36JHbwfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCm0+jSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCm0+jSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B53C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779280233;
	bh=HoLQ529Y49gozxoJ6l8pbit7Po4+1p9PcXO98nmWTh4=;
	h=To:Subject:From:Date:From;
	b=lCm0+jSHu11JpuW9dWUnOZEo4gzZUiFjolxkXRFn9SzjwVlkSB0cdjmHv9Sj0XMLH
	 jMa1G/KGfdb4HjSGGXniyzVuWJ8kelnTZm9QV3G3sqDOxUBRJCbGJs/mUDiopixpa2
	 8+HBCEasjfw9K+D2z9KdCZldn1Tc8dnqjK2nYQJlxD1g5xy0Y6M9FPSO65UXGWk6pM
	 u3G1236MUb6V+e7iwCxUR4ZKUQng3/nJbprBdwlFmUwd5+KOo4an1J6mUxGNB6VigG
	 uIN9uwO2Bfp9LvecbhAoatVkEHn4ChbXxKUo5LKW1xVg7MemOnZ7Mru+dcIPEgDK+1
	 sZTwYy3xbA8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA992CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928023369.18204.6437878582556083309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b1310841376891f631daea92f554fca55aea8a965beb2eb0048f424ef1d5b3
Date: Wed, 20 May 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779280233
