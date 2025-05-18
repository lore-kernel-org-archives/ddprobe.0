Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C63D1AAA1E
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747603194; cv=none; b=gsjkVSDPba2qt6B5lZ3XmqlNSXY2CBksJtK7En6tsvQDWpPTS44Mqw2Uuw3vQwMcbz3/U7c0hrMzvbYMWkW2RqiZ1pK/Wm/56ptBbaN1T8CghyWbRaFcSbeV8a8kz0+I0QFbMqZKi74zu6FadJJwQspiUtmS0ltsiMydlDahz/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747603194; c=relaxed/simple;
	bh=6dSL9EUVFUPplaOwNhSBJp3Nk1CiGnOGNNqjkmMnkbE=;
	h=To:Subject:From:Message-Id:Date; b=iSwu6dNlHfvIDADcsGC2OmzxJdAQlfIvEP2wempF5kByVlDfGgPtRhNdrKMUlNHj6ght9qvqi4NEwh7kYBuztncxEkT5cySsoNoJTP9nYwhUjk3bQ9pDXHkF5zyR2bVM5yyMmAlsFIoNp30ZfOBvXRESc8lc144x2YOW1ob36hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+cW221b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+cW221b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A226BC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747603193;
	bh=6dSL9EUVFUPplaOwNhSBJp3Nk1CiGnOGNNqjkmMnkbE=;
	h=To:Subject:From:Date:From;
	b=A+cW221bULhWlDiwKymoPj05ym6fpWjyculI77h5+D2iPaSRsClMlpYG11ZApbIpO
	 JDlElPj9Mo09EcrJJcUwfrpJFtAxI4T0JjxzkCVVBNzhmxrhsQHDk4YIlafncE6zxd
	 g5SkiJNKOpENApJgHBE65A1At7+8kOzarF4cxZ4UE8hlUb4FBF/A1E1IoWBtlWx/q2
	 JfQ59MWg90rRAynBnwB6aBshgHvHB5j8TLAYzCZRQ+uGxtVjsLRq9KjEndIeFWebXC
	 rBcl3lG9EkdCwymQApVLqRn2za5tyOjkc+w+FSFU6nfzmSGP/WiLYWuJBC+NZPNah1
	 XYIiG4TvGKSMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2EDC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760319357.26281.4533996774314638042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba991789c6b3d492b578fb80d83a1bde3de42d5c33d570900ff44b8a4497ff53
Date: Sun, 18 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747603193
