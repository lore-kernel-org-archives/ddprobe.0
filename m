Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5241A3128B2
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767026634; cv=none; b=QhXr+AxvN4yW3ehtGB7aNqPOQlLWZsTjVx3jthsfDDONaJ6vJgmTarq1f0kZD/ZLcsLytpk8RL+uKnNyysMOJDADsTOi9Pfb9clODYZDHdzIkANnXEZblwqbSm1lvAZ5iHSlqgmbbxbBiCy+C5UFkuE5D2DZr+WV9nTHDeQdPFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767026634; c=relaxed/simple;
	bh=kDPT2pdvwqeOwsceYxRUdKNNpgkSJ+UGhmODWa1fsds=;
	h=To:Subject:From:Message-Id:Date; b=AhiAbyVBZ436RLv6E24QNi3w0XOLLwjtNDURz0jt3THFduvEIQm1lp2sT06jfTzEjo3q7YhXZGW2LUY13Si4ugjP0GeaPO5jhTPZfPECFcHWljTyvk6oU+ajqop+t4ipw3DhvRp1gNSZEcHItGa8iC4N10IHher8fCyJXfVaOlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjZmOzgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjZmOzgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD17C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767026633;
	bh=kDPT2pdvwqeOwsceYxRUdKNNpgkSJ+UGhmODWa1fsds=;
	h=To:Subject:From:Date:From;
	b=RjZmOzgLetJuxRz6fViq46SnODs7jv/I4mFu9xDJPlDW/OVKHaTBgqM0PfYixuD7K
	 n5GbMXn9ra+H8RVLM+lb1ntoPH0rMkZdJmueIm/MRCl6B/2zmdNjBTbnpjwgMhEnX5
	 b2erAeXJ6gGQWCH1Ta0DGXPbz13NdVHRIXH16tjdz9L0IhvpTgcSFmzcaN9B2WYMol
	 pjAc/BorDc/043Cv0cOrC5MQ6JY+TQX/tC/0lC9WvFIqa8kCCqmIENhR0r9hae0tPL
	 p99J2VsUeZXvhKmUjoFf6NGYHChXPxRhSZ3sczMsXeZ4gTsDLIKqIQg8VxHBv9sgMz
	 zno6UYrnXolMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA780E92734
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702663368.5218.13835271162839133724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5dd44552ff991152e79b4a882e99db9990750f30563226088c6bb8a0691e79f
Date: Mon, 29 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767026633
