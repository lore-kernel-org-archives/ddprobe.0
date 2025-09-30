Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418F28507E
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759268394; cv=none; b=OyQQgGDlegMrJz9eRwf8qms2m3okOO+mCKUWnJoRda1G1mdCPv9hAmswLyNZm4i/hZuZGENhsE2WURvqW7Z2rHOYzOm7Gpup62Zm9r/0+d9BXOqDMQlOXCtW+LC5sohJxSv9kuSrXI/UtnGX2lu232KlqhvraRrvWKUR4bx5nyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759268394; c=relaxed/simple;
	bh=EaOrqzvu72+uR9oItw9ki1FgLb+RAsVrIj8SS+gySjI=;
	h=To:Subject:From:Message-Id:Date; b=FczS8F1FDMH0XqrTMWDS8E+07nv3ZjzxP+SEP/+XDWTtln03g/NzmLjWjSHkPXEqr3oxLNBu1jjraxXj3AwwKi3Ajhp9UvpDDrofh8mBSi6sJO7KSBF8atUHNSYJI4Y+qHZ+rBKTmgdi3uu4ptVExlTzaFQSlZvE7hYDYi8Xhwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLHddcRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLHddcRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F91C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759268393;
	bh=EaOrqzvu72+uR9oItw9ki1FgLb+RAsVrIj8SS+gySjI=;
	h=To:Subject:From:Date:From;
	b=tLHddcRSYq2blNbeMc5Zr3zZNsmAh7DExmokc1s/R/2+cQUR+KdldiCzgvyl3rDr6
	 O1OJvqduQfTFpvAnWYmHdy6hAmw3900+wcOs6Ab7tlhP2Z4rT7koJr6IwUlLggXZl9
	 G/+Uq9gEmnzVS4cT2iJbg9ww/HkzqVeNKD7rwNJ3Pqe/9Wl0rR6xp00Dyw8lWq2r/r
	 xFhf78rYiJSjCKiuY086KFJLtdOUZWJhgJFYeyFciwuSm/C8pwOYodSQazu5L2hZ+4
	 /lQIzLhmZIjbAR0CenQ91urg8nZDKKc6W+lgXlRTPKKrUZNVODcqFjpmvWu4ZMd07v
	 52jlhWZ9NMGHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96824CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926839358.12790.13171784378220852415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbaf3e479b33651e13cf04030f1d3b557c425663c0dd1bc9de46a76e3ede4436
Date: Tue, 30 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759268393
