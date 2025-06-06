Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E541C27
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749185994; cv=none; b=RG9lP6RJp+cFysUzIElhIMS6PSCWOnUfijvlTiKvCYPBZHFWtTna9eXjllOn2YXB6ngedmQ/nb2Mm6FyEnxnn2weXP6wW8+4WV/LQ9VYhKf9FqXf1OZ/ybyf4kCioDLtgdg82HyZYPuQ9MjL4/WF9SIePfjNl2mBPCsINrnhJ3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749185994; c=relaxed/simple;
	bh=uG/tuEz2Co3tSGwd2z3/EzWEllvJbO6rFGycleedY8E=;
	h=To:Subject:From:Message-Id:Date; b=OkS1/p7pTYIOL1yjM5V6H0wyfX9rqNLwXEPb8bZ8ZXByWQ+8PX43Qg/iOzITeqifNIcRuTy5t3V9TDKY18rxqx+LWHmp01W8cic7xMaXATGmd8fJ1e4zyyl4UcGOdjxxu31z7sM/plZGVqvBaNkKzDkqcSiX+qMQwH9qB0lNfa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sl3p/Nkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sl3p/Nkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF828C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749185993;
	bh=uG/tuEz2Co3tSGwd2z3/EzWEllvJbO6rFGycleedY8E=;
	h=To:Subject:From:Date:From;
	b=sl3p/NkgbJSXTzCAVM+1g22j/ZLrJS6db6cz4ZA2p0RmVDKP09WwywsNEBzs6McBr
	 2l7b8QUwmjuIAILH3J64Yjy37Kd3fibNiN4SW/qvMgVAoJyCCG9uuQKQf2O3xfqeHe
	 y+ylFHDR7kCleMZosz9gaSu+jNXXIv+khyUZ7hKHjUxlHERZCI8Vt9rmdqlp/tD5fS
	 PlTwbnQhSlRwbuWWRZst07aqwaAYa+ouu0EAw0BZ8RK8ZKpLIZyKhqjtNFlQ2qfQME
	 GQJxm+V9WtNtWZ6SdmeGSDwDxYVrlYG7IN6r8kSiIyn9DN/knamuhsMuwZqCMbOBKb
	 tEIUwXtIEu/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA73C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918599359.20810.13009394730550241491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010c97aa99e0fd3c19ce9856564a1d9cb8957a84f958278b2e8e5263ac3fabd7
Date: Fri, 06 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749185993
