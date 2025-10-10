Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C2226F28B
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760088594; cv=none; b=Za3sVgngaX62yBAnCSgNwqLKFdkbZfAEq11opdzNPGgspxYWVvzusMXkwmkqqsx6BCZ5qhBgc66tXtnuhcnjkt1UOVfV2b+YL/6xoHD4HWTimc8rWA2U5SumbKmkG/1WTK4t660hZ/7DqUJSixXX5weqiaKxgwrwfGBQcwTya/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760088594; c=relaxed/simple;
	bh=q0AMHBSDX5jHIfsmqngXLWMAdKbmSvn6JqbSwpyjswE=;
	h=To:Subject:From:Message-Id:Date; b=jsbfHOv8T5bvsZ/jmug6ZLdDkUlR/la92MyQAcXfoy0xhdshtZ2KZU5SiDonuXx4TTdjRbuNTruuJ7FCvPSXZ/7g9GXgmqMNjg4fN6lPWKrA1hgr8Mv8Qk9MrL5SS9qYANj4ehsP/Gk8YcUqDhRBaZkaQDOyIOGNOsh6LEBehiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9/gPewx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9/gPewx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1270C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760088593;
	bh=q0AMHBSDX5jHIfsmqngXLWMAdKbmSvn6JqbSwpyjswE=;
	h=To:Subject:From:Date:From;
	b=J9/gPewxH4/QMnMZ9Ejg3/GEhgzxcyyYQ1MuQNZGOwjA5JA1ihswwYgdvdW7SFSx2
	 nV+8BWE9ocvuathErZMq0jovm/kl0hFtKMs3mWZdVO0mFPAoAfC/sWNLmHviUR/VNg
	 peAd38jIvzhZwh1gFtm1G3h8zo22A+MwrcP7fPjr2w/Dt4dZEAkX3tedw+xSJxcnK5
	 DJcwSZTQIGX5KAzaGxknrgUrvB8Sh2v48TpMgkz+pJ6+8m3Wse2zpChJaLybUvqu5V
	 qpkN/y0vwxS9zOJAFg9OloneXnEGKd3UfFBPhVOM40WwCtv5kxhuBUvWIPUrygOTcN
	 xuz5TMPoWTfqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A44CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008859358.15837.6993938331437084640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b052cb16de82d73c0add4f6a9ef8ac0f830734bec745ee22d6dbf65945e66d9
Date: Fri, 10 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760088593
