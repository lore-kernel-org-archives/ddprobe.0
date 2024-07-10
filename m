Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CDE12DDBF
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720600583; cv=none; b=FMuEzrHYXjs7qeyfklVeYFOrRpwEDX2Kqjm+ovZM3X7AlXHBoECsz9GzaIwBHEfj5v0jRAr6F5tD+lSqRP/anKYdoyZU1Y3fxKCb747GEefli6s/hl5Msvgx+ZtzcaUWiMA4RRFc2m9UcB28v8UrM512Q57KCouk5mld5soP4B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720600583; c=relaxed/simple;
	bh=ZV/iTuFZp60kjVy/l2zgfD0MauoaJ20ZytgiII+P6G0=;
	h=To:Subject:From:Message-Id:Date; b=lyp+atTSCYSVEZuQbYiUnAvPQwdvE+qmsPQg21r/tpJ78Rg47eeFvv1uZBg2Wp+tQZof7RiFh76qorHTrxz/qwQLVaF2GSG80HEEA5YrgchJLPj9pIl6XZtAtEeSf/yWdYU8BUzSbFzIUkBoSnpVUFILIuRH/J0muUX9tVpI8dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5tVrkiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5tVrkiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA94CC32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720600582;
	bh=ZV/iTuFZp60kjVy/l2zgfD0MauoaJ20ZytgiII+P6G0=;
	h=To:Subject:From:Date:From;
	b=t5tVrkiD+tGu2Y5ET9XIxZy/agegTSxJuO/J1eo+x+1WtsqxbFhvgWAjCkEIulUam
	 /wFHlNobFBaCJpKEOfTIBb14Qdaj3gZbrladXARk0Oxm476kCsajlyhJzTGDSz7HR4
	 QR6Pc7ar5Ut0VhXzV4Xn7QWzsODaM8IA27ILI7IAZWBJSw/QkGfjyJH2WBFED13vwk
	 AOUH+4tZ5hCAOfY/EMeywjGytqVbgUiY9CVqOWwnlpHp/l0eUvj0mW0fKoh3zZ1bQh
	 VFU4kX4I6/Yn7yBrCtgH45/HwmwoR+kHQVLqq4gYKskpia0oAAeOC3ZP/YRonClMmQ
	 n5TTtJJ2ab7ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2167C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060058278.4726.2615769045339380271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3baaec33de4853c204634e5a3ebc7765e0e6dafc1d3ecd2382fcbf7cba6a4a
Date: Wed, 10 Jul 2024 08:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720600582
