Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F251946A0
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717577783; cv=none; b=EaywbkXDDm2fGKkFcZ/4oTsI+a7ZgWKMMBilVRl7iE6CAlm+aQHlWzuRd9HZaTtlZWQgSooDJY7+YCBJTUk2sj+IgU8vKAMx2MQ6SO4ufakrbMBVXnYTdNRnenv0Y9XxK+fyOUekm80+oaiPyBQxfpcwLjbIF8VTSJNmNBr7naI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717577783; c=relaxed/simple;
	bh=qIB+wXJ/KtfMj81juRo+Y5lh8GP+wzO6OPZcASo+N+E=;
	h=To:Subject:From:Message-Id:Date; b=OZzaVi/hS2lLHPINBxgnGtMLoHDAyE3uhgY0LVRB5Uu+OGDyYnMjm78wft3QoT9sS2c/9wCPjj1sxjhphYkPwlEEciPBeuU9xNXF4xtfkGM6W3ZhtrWcVxS52bftiBt7ManFALiWZjrFxesqA6N9OAbPhRhdnariV8iR8yUfhN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha0zdEZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha0zdEZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C07BC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717577783;
	bh=qIB+wXJ/KtfMj81juRo+Y5lh8GP+wzO6OPZcASo+N+E=;
	h=To:Subject:From:Date:From;
	b=ha0zdEZ/O+zlqcSboO1YaycaLRYGiuAL4PlHlRuyQgL/6GFCkmThUP/xEB5WYsOew
	 9OvZgaSAuAGpAbmlF9FyGsUXQkdBCFGwlHUuBH8HLLkJWvbdOIbcNw0+K9siYmWtWO
	 aeNqcN91FsZw631eO/U5g8AtB80dcbQLhHVpuIa+Tgx+Z0uKmrr1xwUvioqy0r2W/J
	 yoVWyxrbFM0YyEkyUyIhylftL3J+9eVRnkpiWaRyJ7Nz81FG4ycYtjBBaEtZWREFQ1
	 +WEpJtoWg18nVgWjLd+r/DUwKE0IlCW5N60jtkk+u26cCLOFd2MftetSzAMGdt+EDo
	 XPZXDi3ykzGUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1305C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757778297.21918.1318034925383573438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa04187296a7bd118749985dd7b765cbf02506a95cc084a9c92ef3e9290f2945
Date: Wed, 05 Jun 2024 08:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717577782
