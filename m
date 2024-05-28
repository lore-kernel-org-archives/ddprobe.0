Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BC045024
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716929663; cv=none; b=uyZVuYPiAUVn38FjrtW4hCLR1l6vx3gws/mAszu2N6Pi/c/bkh+rJ5lxsvc+j6/i/9n+p5YM8kKPXw89cfQqBgnx6toBcds+kqbheVpD7SGkY3fEgdCd0Qd3g8GKEGQsfbrQrbIu8Tpxp/Pb5dKhmGz9ZYJ+fOoBpzNO86Db+o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716929663; c=relaxed/simple;
	bh=Y+RCee4z2U3vnCYU9dN+7f+veDBKcIg2ZpXOwuHGHLk=;
	h=To:Subject:From:Message-Id:Date; b=Arix9x/cmCMgIquSlIpHhuV2daxPoOT8QeuemOWQQ8O5emOt66uKVwb6FtHkZdrc0iBvoX0IWwGsbA7tszbnOSwEx6KayDfH/CGIFEVGGynjHNdB6GhNru0sNTqp+KQZq0dXpuQFfQn8wZseBw+Ur9CCcrPEipQo1mgtH3Aozpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Csl60Jxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Csl60Jxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7F8C32781
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716929662;
	bh=Y+RCee4z2U3vnCYU9dN+7f+veDBKcIg2ZpXOwuHGHLk=;
	h=To:Subject:From:Date:From;
	b=Csl60Jxe5zB/bnhmbhbq/0WnAzcxjihmqH2iiIrAHyBNMOjToz32TJbqFNIN4u+Wd
	 QcRjbuOyDr8i5u9lfj5nstRCkhoodgzAMJDLiKC0oHznccdrlz+RcW/W668uUvSGrM
	 8m0WtLOGr++sQHozesrW7uj7tt7rbC4Y6a9bJadxubIxwstmrtyErahrc6wW0Bp60L
	 VclCYKXoLofK7Vbpha2w1idY2GKeZuJUjpUcDBo7IQH6K/ApTEiQNQ68Yc5RFK92KK
	 c8qhNN9tH0muU+4fF88puWS3efMS0+ZMWQnBwaFi61TReV37+trJG3gG4pPxi3gjsD
	 r3xdRAZDkpKHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C526DC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692966279.10072.9465057386551715606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272e0476f8e47834b8334b7cd7283090e9bc91e32070d6c5fdb8946acf222b49
Date: Tue, 28 May 2024 20:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716929662
