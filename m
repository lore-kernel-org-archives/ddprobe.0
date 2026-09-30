Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634C133D512
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790747434; cv=none; b=VDA49a+zJd25yAG6niX7TvSq06A/41n0rl0tFacrN+m6aUJe2H1vcOnlMOIyi7yVauSHSnq7IFMkxvHDFNwnisOLC8eRvWMes5EmQJ4q6nMZijJCVzrRjEhAPZbUxYocTxobKb+8a0dhjjIVfS6BtU/H6gfGyrM9WCzbqpJPOqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790747434; c=relaxed/simple;
	bh=lyK+zsGN3MVKrJ75orcGaosLt5xtcZPm0tPXqfyt22Y=;
	h=To:Subject:From:Message-Id:Date; b=dCEwfoaTMfgAc3UXdQ4kG6HJqo4eGYzOgxBq0grvpfQVXm3MakxakjZ34y5wsETywAMeZEEY0VtwfEdWI9zjmVYSbl06GRSrlGXA01ZmcAFQJsW+yBZ99MQWdsiU3w9iJN54kv+G174XqOHZcoJXnA6+5Yn/adB7gIBQHjRQTkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6icErgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6icErgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D282EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790747433;
	bh=lyK+zsGN3MVKrJ75orcGaosLt5xtcZPm0tPXqfyt22Y=;
	h=To:Subject:From:Date:From;
	b=I6icErgXJtDHeSzSVj/2BuiFV5zOMwuasfcRQ3imrEdFpHzqrXOoRH49jJVuCAgd4
	 aHn1JRjXfoN9r5hCTzhLi+sglfoAFC3FYCLJdpfmZ4gi9bwEw6DFBT6Yt2ONZMdRRv
	 8vFwVt1xP51yireTE44CFuCNXe3flHKd5jL+SSThJIOt27lgE5MXc1ycrcXgjCXdjJ
	 vgYMLgM/IFU09yddN2gU6wtat/1dsAKcqoq1FE5VRI6fKxEO9BfiCzWuFW72E+d7rb
	 vSqA/Lib8kRKXtFf3Y/DyTup8NsGfhCn3Z4V18QG8UmsncCZwM+FvzO6D1QJUYFQWL
	 uEyb+wKKyg2jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1235C9830E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074743369.28464.3534268201569026494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6214e8357cc4d6c5d4edfe784c581515b96c1547afcd44113888a64209af08
Date: Wed, 30 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790747433
