Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C303BE173
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773836694; cv=none; b=om6Li9eIKX45J6dWzvth6YqiSREn7uKYgJGan9O8kV3vL1/qKreYujcQBHQxM6/wc5y7OhCGUQQvUO9N3PBocvBCZttywAE6aPmAMu5Ws1SsGUwKpiQqb+CLZ3Aw5zg9Khnl3jAnvzp+UZOQCk7XL/VwIlw9RGJ8rnnGWiXWMCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773836694; c=relaxed/simple;
	bh=uc3yW4KlaPU7Fak9RUNrRAWPd2ZvD5RWzf2/uLv4MK0=;
	h=To:Subject:From:Message-Id:Date; b=iz9MKxF3cLS+xJysNQ+IgxGGMjERMtYQ9XCkI6ZshNmyE8jggJBSK4ZC3Ixkg/AtGJzhQHG2AElc3YxkCfb9pZBDHMGdOJcfsuMRH1aW8ehz+J1diI2gL9l3e1KransDTSLkc+H+wTXjWssZJD/u7Amvl4uCly22UFzQZ19ztOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtGl1zFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtGl1zFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15CAC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773836693;
	bh=uc3yW4KlaPU7Fak9RUNrRAWPd2ZvD5RWzf2/uLv4MK0=;
	h=To:Subject:From:Date:From;
	b=qtGl1zFzr82JbY5vTqwqsGTEkkqpUbIwbjAAXXEu5EDzrrHJytCjoW0l97LN0E2Iw
	 7QFEqwcQdPwnRRX/0KJNy6uilm4U9G6dkVYUq0zNKlRpwm7FKuSN8mem44OcyYauqY
	 UvAteK2nKQX/UgvmOdZ7dDxTeiEG5qHu4+biBQuLfUjNoVvxZloEHtOqo0RleSeeAC
	 yshdyBBhlkE66/hzcQ0Aq0RMwkXKfP1fMkq6ahI/7CPIDWVo3cIPVzKbTfVvjhxvjz
	 1IbBqMiis+x9wZGdvqqJYizgqxxMe+d/iBwg805PZNrhOjKK2qjETnhDTruM7kWu5m
	 AIWWQ8xCMbr9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C6103E16D
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383669357.16435.9700378586825542090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62d19dcb470b2aed357f5fef61535fb9491abe9bb289fda0caef1f0221a005a
Date: Wed, 18 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773836693
