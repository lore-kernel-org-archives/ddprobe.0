Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7121C5CD7
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733907354; cv=none; b=WRk6iy/mYLuRDC+PXquXbSyZGu3cYn0T5LPxWVdekLk5MHiyMQduDh00r4qxPgbOlgvWbmC5OjnwPaqWZo4dKZyPaRHFtf2sKf19QBsvPN/ySPdWugdXLCQyQwE7yH9g+oS0ntoeHY7Ca3EZv7tVwmU5FTv4zr5e0zgGASvMY8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733907354; c=relaxed/simple;
	bh=00oH5VURaA4TPXOlB7FMfzjkwoBfpJODNtWaNWU/BSc=;
	h=To:Subject:From:Message-Id:Date; b=hmkxPR3T7YjOohixzw1menOyNxqrBJB7jwaemftRH6T+ZcKFHror4f+ZD61Ml2zxy0d0Iaw/gIDskC0DQue2GC/VcrKnLv/2qG9AoeykoZSQhpXJVG3j6CHNT7Ft3LxhJmqtQaDv46CgbfmO98i0odTIbnjwRPb6LZzQWUbCKqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YD+x9Rdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YD+x9Rdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A39C4CEDE
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733907353;
	bh=00oH5VURaA4TPXOlB7FMfzjkwoBfpJODNtWaNWU/BSc=;
	h=To:Subject:From:Date:From;
	b=YD+x9Rdrmnv5jN9PUqfnVLelvFrt+zYKobvCjR0fJ1bVIABuILSKFB1S6wX0EKZ6v
	 eB/wjCfb9fP3pO+S4NGAeb2DF6SFqauUPKOdmSOHCz4iPJLi6LRDTzOgExhzyMgloN
	 Q9n4yF9/RMel/P0f94YwhToSlaLbSXrlL3YSH5wYNBPoQnS1QFNgWoMoq5TLMzXrd9
	 YWPqvTKU91XMKTOXU39uAXHyoyKsYQH1pfCnXl1bQDMzWo7RNpj949eMNyffS00Mhx
	 y4JD2ko6TQlnqrkVVnJyERqxG5aBkLHmvpF9fTs+ggnQL2aKe8pDTRl+Vsw7VzZfZa
	 BWXqOh2NcmchA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0BBE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173390735363.18508.13081729216842301840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de8ab528da5526b3c98f63d906a809096f6d451fea0164918962e1d2605f4fa
Date: Wed, 11 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733907353
