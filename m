Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98245B1EB
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765523573; cv=none; b=AKYdrZ4B/MGkXTynmRVXJLtcUr066dRhkRrNlU0yzsAxUpt7BIC3GzbXcsvEEYfCgOSbG+k1OnarMlbjBVfWbbsUVI6Yo6xv3yoWT2HSR4B5pp5wcH9a8pX3LlWj7A+kPk/FBemAolP1Lk2ToA0TjLEdryTd0QRcq7s6jGadlWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765523573; c=relaxed/simple;
	bh=MAWOx44pq+0rmbAX7VrVvWpqskag2LtcO7VW7y+/FJU=;
	h=To:Subject:From:Message-Id:Date; b=s+32ygqjZu84SsiRLq8M9TYjKNgc6DvjwWItu6t4glT3qXd0HvMa0rCd5I7iSXgLMYS9kSiLqMGex78PNHQBW3EEr/pjIZ2i6bpdlZsJr/KEWYivfWvz0+gjYWQXe1AyHuDI6mIqihS0CQWMD7xdGM2ML8zbQnhCHnxVpqqz360=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ki8y1xvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ki8y1xvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A73C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765523573;
	bh=MAWOx44pq+0rmbAX7VrVvWpqskag2LtcO7VW7y+/FJU=;
	h=To:Subject:From:Date:From;
	b=ki8y1xvdszEQHDGhskgXh0hrmZ4GxnFxd4ggB29OhkTDsV5gLDJ9l6d1tkBRnHaL7
	 ozcMrcsH0gDXv5ImlSXd8zUHnzuSltAsCXVRAFVOI8SakWvQDRc+cbdKIDjxiUHga7
	 jBIe72OkYA6gM16pTinhe/Q/HGgV1+e4+GjYzWzySs6s+oYYw8qCMUwG3bk7uHu/Fy
	 CB+Ky3Zk5KxkMoy9cP1/JYmZDXiaKPHvFmtDs3ADHEB/BjVCvJ8Qk/Q3CXfHnoVQF1
	 NEBv45AoLnXy571Deob9k04Xl5uNXDOZz1dXX5cNWQAWko5kztOkNL/govh+3U9xhi
	 tn51cD7E+sGig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A907AD4336E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552357368.24039.18094453718747133673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ceb07357ae444319e44ea4cebf7993b24644a5ba61e5a610e5a6a85e88cbfba
Date: Fri, 12 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765523573
