Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0387F1E9B3A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770144834; cv=none; b=CjHVv5MGctx6XRcg5p6OhXtQA7VDduKfB1Wx5dk7AK8tjsPSU1vKIbYr4H05zRS7MJaHcAjgTNw10BZ4uUUxN2h1uztN1C7Rx14TtmOgO/ea9O72t12C90khwGm+mnqnF0YyxCCYWgV/ZUhGt2pghltZwmEvO5sxtRn8iUwtSTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770144834; c=relaxed/simple;
	bh=ZHJ+aL3WpgkjONnFG9Cd6JDVUJNH5YtoljeqM0yBYL8=;
	h=To:Subject:From:Message-Id:Date; b=Z6G7rOZv7tee12hDqbk8VMiKzl1QUcINNuYjdjHgdiG8RXwYcT7lewGAAWe1Ioy3cZSjrtDs4+qUh2DNXd790frEsQzzSwEmAsQqVIvuH/2cC2j744CAWnZSiWV2lOvPu7nkf4zEs5qZcYxHu5I528p/G9dCJmaFnv1aE1zxfCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+ugGBwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+ugGBwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA6DC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770144833;
	bh=ZHJ+aL3WpgkjONnFG9Cd6JDVUJNH5YtoljeqM0yBYL8=;
	h=To:Subject:From:Date:From;
	b=m+ugGBwPmPuCz8/UdY7undJ0qjE84tro6akxtbMTwPVXEZ0ui1IpCapOWKhz1T5xq
	 SSNVqmL3Cpo7UwKxHel/Et/+5CKhzHemjdRlG6RGCkGqhajR/gBqrvVxadrhuW7Ofo
	 sXFh+sWlrbxQUu8UtAy1W5lxmOpYu+2xk8ZLOdFmvWDPWoAFH3couoAnl7+Taj5T+x
	 nyIxhsNQTqOswY3Cws0N9VbR8l9YfhKKcuE9OpdgNzcBloB+eUMFvQN5Tq+KzbXLAt
	 Z0GBomDseqBrWURmFHThEsk+3rNYgGS6EallEl77Q3ubwnONWOWHjtYQgMtBMQB8/n
	 uf85iHLNaLzjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C76DE87856
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014483361.13430.11738194789571567082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66551bc8f7875a59d6207625370e9d2248e1ce6c5a4b2e3d2751817b5571c92
Date: Tue, 03 Feb 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770144833
