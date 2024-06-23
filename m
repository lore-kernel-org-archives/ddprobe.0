Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB542F24
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719152543; cv=none; b=hVBQDCFjKNpl5okPb/DFFeai2f/lVsK4E/JngVRtXtrobpSbEklIpEhz2hT0hWNrD9k0TnTWFrAYBVkpzzcACv6EYHtkx/pIIo8AffgfXis821Rsl9uLhQhlihkEYRyv3l+h2y91dsl0OKaneGLwzvCbhvWcKZhiu9UFNo5+NsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719152543; c=relaxed/simple;
	bh=2BQ9eQBU15ZX33Z6APbyh0s2MhP0BUMjpU0bD6xN5Uo=;
	h=To:Subject:From:Message-Id:Date; b=VeX5SZ0z3nWLERnZjtuy4olnt1/E2/6SrJsq/GY+aCq/+trTz3j6RirpfhgQcBJc8k4OVKCe5MVs4uw81DeWfxkXfa18GGdpNy1wElN0z+Mqq8nDfTLgPpFnNVNm+Z611Y97IgAfpK5ejLH2RFV6kwG6lHHqdbP3fdLGa2RTT0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUZczgT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUZczgT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DD4C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719152542;
	bh=2BQ9eQBU15ZX33Z6APbyh0s2MhP0BUMjpU0bD6xN5Uo=;
	h=To:Subject:From:Date:From;
	b=pUZczgT4+bseJ1oMqcSyd1m61XoZNkM2JJoCSvwNR8SBGgxS1eo4+KUagyBg4ulsv
	 V47zEjjH7UdWuQ82znkkFwqOCEIXwYRqI5PlMcs9OPF+u8sgL5tMjvsJSb49RKGjaB
	 yyw/WZEZNElWHkfkA/kvaGF0NFP9Q0I+rxa5xoLL5qlFmPKDy5amNSAI9BgFCFFgEv
	 C12a1ItkwSU/Ed3+eP8ASjIho4LnAEu4cOhllV7ZkSijNAa+Os3WLq2hr9YIePl/Jx
	 1DajD0hkIxCarbD6ThAOg+9+wnKz91QZfM7xMfWMtZUo0iPi01fw6eNmOA7o1hD3kF
	 wDw+cvKi2T3mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A29C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915254278.6726.14221836315214392658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38059579220ea728064482a388c6867958a588369d64907118deb464421f1ea3
Date: Sun, 23 Jun 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719152542
