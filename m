Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D1A2E7648
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771367694; cv=none; b=KYNWWpfkOipeUYIr/03gkz3KOxF3kF5JrnVy7jiYgkSI3VYvAnkjmzlEVyaWCA8SKPTqMZGWE58xaP56ZDVqnkc0mmMZ7Ftld/Kmm0zfHY1GGCLrpWmWb/5Xe1G+pj217h6YsQxajKConq1qJ+SKrzNGHDGH2wayZt5u8Ejwepw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771367694; c=relaxed/simple;
	bh=aIbkvk9vhSIy8ZbgUf1sj/PlqmLeqQTurTlKrI+LAd0=;
	h=To:Subject:From:Message-Id:Date; b=ckr4h0o0zRDXIPTHN39WeCjVHcZt3Qo6xssZu7X6JLWBS5TtQ5Y+KOjrxZqP0yfB0BU4ZovNbaNJQWvn7l107kfM3CAowr2q6WWwPaZzNRnMF7712WzMpkuVtDJf/rbyxOakeWUizT801Ga2F2TduHkZyeWSC36Mnh8OzOCDq5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQLZJUUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQLZJUUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C75C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771367693;
	bh=aIbkvk9vhSIy8ZbgUf1sj/PlqmLeqQTurTlKrI+LAd0=;
	h=To:Subject:From:Date:From;
	b=qQLZJUUUCG/hRoNFY/lSGh1hWSLYxApNWUhfmb38z9ov98feCU+nReSLUUyonTcr8
	 +6t5SwzQYUEiyr4BZ2NdB2DBIVQjI1TysfvoqR6MBIWyFJDKz+tj6z2i3pFnve7UzO
	 oglwljD8WGCpU9xHtZxVewUoJxdpwrW5EzuY7GIvOX9eQKni3nXa2LqLd44kVeOh3R
	 QpRhx8L7wGLuMnf/u63kbf4cgtTHWQva1/7lVUZd+XB2KakjMc+MmPL8EIP3xDzvsy
	 JuHgA9AR8QxmB7uwfUtFcqWLoWrnShO4TU2MULQiFeOWV8u8Z+ZqUKJbFpPBBn9ViU
	 JbBZ59V18GX3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C2EE9A03E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136769363.15204.15115510088409978273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856280d966fc6cc612e3a7f065d1efdc3e6cc16f512b2c841e9e14e90ac3e652
Date: Tue, 17 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771367693
