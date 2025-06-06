Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B52A2356B9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749213595; cv=none; b=mFErCmsqBrfCni8bqtjR75qHAbsXrmsUxCF7Il3u8lOjuqOMyxCGaZ3iZC6Dd4EAgxqOHQK/gOEzgh4hK5X6+bd/m10hy5UDIT5bpikJbWbNLl31uYXnpi7Ys/03OYr99oczm2kLfeUBywCPFHYfrkupzWxPGYzS07d0ewISy0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749213595; c=relaxed/simple;
	bh=kaHkb6JqYhGlVIXeRPSnux8DKNrBCxc8a4VJgsjX2aI=;
	h=To:Subject:From:Message-Id:Date; b=R8KCnxZzxII4705+MEa18WwxdIoKPWNXdjOVJhW0VXyonpOeR4vYvxySigjCdBLCqig6n2ukRHlhHhndclnReN4mAv9pT+x5hAnVX9tdi9O1Kbvr8pS2aqhfmCfu1HT0sS5qYKAjP+ME937Mk7neaynEh4XkKmz+bZGnuJt4SD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKzY2C26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKzY2C26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B568EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749213593;
	bh=kaHkb6JqYhGlVIXeRPSnux8DKNrBCxc8a4VJgsjX2aI=;
	h=To:Subject:From:Date:From;
	b=UKzY2C26hyoAIpa4qGXaQ402VD0bTJrUzy2zFVOgEXFSxdFhO1T/H5pp9hNyGJy9L
	 pe39x+9vqEgUwfDoI5Oo9UTwjfOdjVLkQIcCHn4ET6+Sclkj5csRTfw0nvRyEm4TAg
	 m15wG7ONMThuIPR9d6CpsJX9X1D1rMXDHXN2UF4/typ/xUVnl6IjuJHgVUpJQyxUz4
	 JRMcFCg1RKs5nknY1UEM5g3/XSwtCYzyDl2z/aMWKUaiOQ+yzJO0gxIkViBikRLppk
	 gOrqUkB/oj5ekLeYXNIdZYgUIAOEHa1IzSIC4rg9cEsKFC4csqow1Zb/qj0qbcUJpC
	 1HQ8vb/iFQb/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95641C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921359360.5792.2209444284136046009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8c4a090fb6e5e504eeff440191d710fa076e800a8c205730ee11b23a5466e0
Date: Fri, 06 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749213593
