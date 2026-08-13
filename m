Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5192B3911A2
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786654234; cv=none; b=G0v59NnNxLHxPUVAK1uKokfBwwIG15us5cq5zvHjU+8JPAJ9460vBvpoHKzxwvZW8VTZq5ZGoRUfusvG/asYuCUr1kd+GOQ04qThxvn0xkO1ZZu5t8c8yvD8YtrxYKvG6w516j5AeFJbHEvh6lvbSrFgiF9QH/hPIBxX/deIpjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786654234; c=relaxed/simple;
	bh=TgOeUbHb9K4HImbrqo44rQVL+Ofs71eWWmdLbdb+DqY=;
	h=To:Subject:From:Message-Id:Date; b=fPP75bxB9Zb2iaFQIl0A1+JoIUC7l2u/6QT+daltauXjsPAKvOX+fcKES3j/1NxouNTaZ5dqo0TmjLFvksgUrroU8kKeC/L3+ZW3XYPgWsIcVIXM8sw6OeilvooYIC3+LRUhBEuhNEatGnfUotlYgsCf1reAhadVQjVXJ6Aaca8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Evs+fEyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Evs+fEyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11D7C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786654233;
	bh=TgOeUbHb9K4HImbrqo44rQVL+Ofs71eWWmdLbdb+DqY=;
	h=To:Subject:From:Date:From;
	b=Evs+fEyV5FdRNHSNPRSRFqNnYrDSNGQOqn8+kvjH1kFgvkeUMqEfbk4zK+hfrlf2b
	 fLwdqKQEy6kElU4r4q5XtDhd+IEw1DgHIZpq4KFWGgrLzqO1FGoLmxA3QefQ0y2Nrh
	 NMjKRAR2uPsa79lShIhcfMuCpo+MJafOBEVl/SgRBdtIfePqeqrA/gOo0YKnGAu7/P
	 cFc/SIuPo/em9ix9eUjKMSSUeJeQbDwyeMCClNk8r43F3RUwmtOWVgDhyfr3dSu4Ub
	 tpzgdZKyw8ZBh0BHv4JfIthz007IycDFCrQpTeVHlVF+bw9aonDo8GtgEUFW+eiSQl
	 efbiJeW85961A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB980C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665423369.7448.2986361819534267608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7227c16b2d1aac69d88a2e777b911e80b914e7556afb2b60c4872e92576531
Date: Thu, 13 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786654233
