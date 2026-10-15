Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BE83ACF0F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792097434; cv=none; b=IVrM0tsOsB+oQEuFF+FLP5Vg7aF+bSD1kyUf9OGJ/pH80iJipAlz1L8nCgtFal011o+T7VLSqR0mooY/4TypLUkbRGo0oJeXnhKZg7PrSsewnPoBlmqkQoLUw0PCENmnXToeOYuLf7LpPc1qlgkyr6ffQrd1eGF78eW1QNMy6jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792097434; c=relaxed/simple;
	bh=hDSxj9POV2vHWajuinH08Of11hHWz993fdH2clhFNiE=;
	h=To:Subject:From:Message-Id:Date; b=e2Q+7dQIiB5oj9sOMO+7iMNAjGr1yz0/odFbcRHJHC0W0h/c7VzQBtX5CMKlNeC7J7I8Lvlk/KwuVMfbhpyh4zwBhE6yjACpBzvSwKnVja9twGMgZBZkEoAMu8cfqY3WftTc2JpXoOgSWTr+sKNAodiW+dg/uKDIxrDrhX2dFDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fN/k+ymy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fN/k+ymy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A39C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792097433;
	bh=hDSxj9POV2vHWajuinH08Of11hHWz993fdH2clhFNiE=;
	h=To:Subject:From:Date:From;
	b=fN/k+ymy5Ni7xvj2nnvtphuu4x7W3rLIhNjPfZ4pfD5Fe4Hektt2htjjXadD8In+k
	 lcdORmIs141elCAFlHe+DXcj1MYFrY8eFX6Oap8uyjF24AfwiEk0KzV2Qahj0M9TMZ
	 CD86TJa9LCk87U3afFvrs+PyhpOobEWIi6AHnXpK5agsYPIpwyEfoKFVvm/dP1hmlg
	 HT8COa6Ay1g3ZkPJQbkQC4ILiiLWMAkIUJrQz6fs9/CBFcQF7qu0WcOnMy3Ov0n0zX
	 3juhLMYyqEJAkDubF8GN40v7Yk+0uY2Sdk1L4IzCCHDJh3dscBmJ+sUAK88KZcYLL+
	 TPq9rkGROiPLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA6BCCA464
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209743368.3256.12276491315882679031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3f64af1c6d80d3de9d5b0a5a226e27ab1913b73fcddd463db2fe1fd7bff7e8
Date: Thu, 15 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792097433
