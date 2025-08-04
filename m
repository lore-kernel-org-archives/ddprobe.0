Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2A73EA8D
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754273394; cv=none; b=Zg0sZ8OEu2RTVjMHDjKWUkP3HBhF4+UgWo1E8qW6q7NeNcADlRPDhW64E3UeFhX0FUUzmG5IqLdfrbwx5SEwhjbd3swn9hoDurPDXXqZ1XOk61g1X5Z281HCHzrNOvvnM96Lt0p955xJMGn6Zl78fDpUOo5Y1htfoYet64qre1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754273394; c=relaxed/simple;
	bh=iUYGbDCPeCdpgqYo0pjb7hnKhEBcsu0+qBYiCai9k0Y=;
	h=To:Subject:From:Message-Id:Date; b=hXrO+gMTzFOCrH0YmZaXYRUReUbPIwRSmFenNSRgJ55v8nDItSZwR8ys+HmTankMxGBTZZ7m5AscNLyifryRzFGAhTLWgitxoBBUfkfhTzrwVcSjxvFKQPTe17lRcSh2jCYhO5q9RGKgmNO52uhiKxjfz997Wh1hLbAgff7W+5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBeI33+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBeI33+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57B0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754273393;
	bh=iUYGbDCPeCdpgqYo0pjb7hnKhEBcsu0+qBYiCai9k0Y=;
	h=To:Subject:From:Date:From;
	b=aBeI33+StYwoQK39R3PZzho+g/VkKXmqbVl9jYoCkgia6Nyw+U7em4aJmdB148CIE
	 vFhWE3tsgAoHcxZsDC9LXGnwdT+AeWvecE876EUQpIkF5PH7Nnd9MJSgZPdpqVgR1t
	 AIZ6/rMK8dl6nwT7odVsZr7Axt6szTcvKFpFxriDs45ZZJ6N7Mbgwu4QbvOKutG07k
	 GtyLx6L4P/1W47/HLcIEKpK+aUH/pC860RzOJzaHSCUJIIZ/eQoAuei8bTCYMt2wLn
	 ywI1evLwo5gOE6gPypbW7jkrER3cw1bYLDvkYhenANN2K7QeTLSKCdusdLHFD7AX9M
	 zpP8IIUjObi2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92794C87FCA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427339358.14790.7335740173061345055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a4a8e28de89e879068f0e6b1f64f00c539982a5507417967d199716371475d
Date: Mon, 04 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754273393
