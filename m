Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1362B8C1F
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765144974; cv=none; b=rft5vphd2ZTvvigO/EYmGkmg2Qw+t9p5fksq4HxVvpzyK7jK1DB1E+LCNiWRXRvK3D/slylorSnhPdYeY3fQaTRqFHNFRwl3fTX02xhw7MpUgYxIcAHckEi7ot+srud0VZkuV2zL+VPaqkO0gQksimrpkkkxlh7wZieW5kRZjZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765144974; c=relaxed/simple;
	bh=+Qexuuf+kWRlBhNuYQKCHHat8IRNF5kRa0PqB8OWyiM=;
	h=To:Subject:From:Message-Id:Date; b=p/66JH3FyPML4r+2ev+XsOP/HrvPYyW4geDmKHFRJ2nyrqzabM928PYNoE5yKH3yVQ/bMAuiDdkQa1DJWgCPMKH+fR7ZR2HFvZj4ln3CjAle8gVdJBdKBTxasoTBa1njTCJq8Ow2QOiEEnMhM9OHWdSQI9N0ZKSV+oTrwcEBKGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx477/YX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx477/YX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A849AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765144973;
	bh=+Qexuuf+kWRlBhNuYQKCHHat8IRNF5kRa0PqB8OWyiM=;
	h=To:Subject:From:Date:From;
	b=nx477/YXUmG2MQ+Y+HfM3kfYan6aYFG+9e50bkk5YY/8Gtldv0miXt06/31HwMt0Z
	 85bexT0of3tdGnSuKzMHk98CZaGYFc/v4LhlI2M8iXBkcaDXR77nqhP8wArlg7sGuA
	 r8Nlnm6AqKKk/oL4UGySwmCYAmeqHmgykkyt6bPVo2AwiP+DRP9N43trTEZLdTRmM8
	 7/a0eVLRbgH1dLrRIjkEaIklNa9HNglDF7TuqGA4m9mfsZIRZWRmsR879dWc7SZTd3
	 ALZy5EJB8dhg82+8mTmByxBOYrqpcOBkk+DMAYVdgybAGdJFBogz8MF358Af9YEjtb
	 VaS+jlk6c4oXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D27D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514497358.32516.16373337613181273658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3776b191be52a6073f8af16d62827f4f910249677b32b2cff19fee67968b5a51
Date: Sun, 07 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765144973
