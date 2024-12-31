Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CADBDDDC
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735654554; cv=none; b=QXAvWF45AKSEqmlCknCDpig05WRIXIpSf3xg+yhqs9tKgTQ/suy+Arsd+ntWYpC83lvPLfkBClY3Fj1sZDAxNpZY6JtXzFGTvQct1Kc8Wq1RcjMLDNxSSWB3VcxilC82EpO7WPea5HggBKG6dsmg6NDBeg0oZaWJXVQnUQGe6P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735654554; c=relaxed/simple;
	bh=EPhYQNWps3/Cn9o/4wKI5hube9O+P7PnU+Ws9E3R/eA=;
	h=To:Subject:From:Message-Id:Date; b=AAI3F9pi0NEpBwWBUWj5xpTc4OHI2KHyH4n/VjEKX4k1tCgZlhQM4/GvDGfcGWdyRw1Vn+WsERb6uLJCTCUsoAGmAz9GO8MMgXZx/fdwUsDP8R6D8A6kRNwFaieu8ZW4jKLjwLOlBbUSmx1Kxct6GZZUAXK/4S34rXHFKj4dXMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjYofXwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjYofXwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0371C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735654553;
	bh=EPhYQNWps3/Cn9o/4wKI5hube9O+P7PnU+Ws9E3R/eA=;
	h=To:Subject:From:Date:From;
	b=bjYofXwq6/7NsFdMqHgeGB+pkgKzJAco/Rxfjo1FhgtoAMwmXa8/I4MfFJ1oNwkyC
	 hP8cnrHfmV1BRojakTuBiV/ngCj74saXn8EoGx0HNPy5cxyadHJmVqPWSxx0jf1OLb
	 Jw0FTEQnX29qVUuuuBPqBeK4q5bPu2zolUa7hB/Vqkzm8R46fzKe+3c9uihKtA1Y7G
	 +OU3jEGbZQfkvCQxJsUh7vkn+6xhiHIs9mFLZV2WbhKbNMgzUjp3Hd8acfdrXlcKdE
	 sI24soNcIpNHKtoxeF8B4F8N10p6BzIqgMJ3lx0uXp0zesaT0EC1y290cmb+5Qm7TF
	 Hmz9hyujTGh5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A47BE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173565455359.31965.13666116235616498854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e860da5dfa73ba038f448a4e4f722df94b07ae46585f08c959daf17332208d71
Date: Tue, 31 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735654553
