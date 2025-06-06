Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0831CF96
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749212394; cv=none; b=tICGM06CqKEKKdTNVvj/UlFejALgbmgsUfrPhlkr6gaMRkaE5vtqTmdPqNcl3OKJF0QHFZjxevQiyt2LN3n5KSZPAt9vSglO28O6HMEuPEAf07OBew9etdHxjD/V3TjQ9azHMJMFQ3gvkIEgNZXuGvg4DV5K+ppjUo9FYyFRD20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749212394; c=relaxed/simple;
	bh=9yZCXJ0bm0y6/fbHuzKX2V3KJrgle9d/WGbKDE3CV1c=;
	h=To:Subject:From:Message-Id:Date; b=F/a9rXhTeJqx/bBD9ByLnXbXhqNPKA5zW5CMTm30w4vBVU1kx4223K8uqw+tHjVKeW1QW0a0u9Ao8hqx7w9XJ5EOCFvMhcLnQ0BU9fw0GxSc6Gdk2QjF2fCwW7FA4hTChp24PFLqAYQUzLIApWPqUWQI7yWUgAaKnN/7m0TG9sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8/uuiFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8/uuiFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E6C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749212393;
	bh=9yZCXJ0bm0y6/fbHuzKX2V3KJrgle9d/WGbKDE3CV1c=;
	h=To:Subject:From:Date:From;
	b=L8/uuiFyzCoM/YT5Y3Z/GTs6fzaQLiAWXueuNUGeEjdZVwQittq/oLfg9Ys3CBw1g
	 3KIPAtIGgNlKjQKQSKWjz4Y+u1ydIfTNRn7mo4SS5NVb0gsAvdAOMaPXzDpwnJXrp7
	 1ZvVZcZBCq6flovUtJqxbFe31CkktM76wzd7Ia/kAi7IusR6OnASetBgZIRDOwxXdD
	 Q/uw3U/hrcEM7T3+aXCSdi7xl07lk5PzS4qJrcfFtXKpFFZTLpo1TmhqvgWa0svBfE
	 dE7qq/darKxAbr+bE4CNer1OmKOOe0EPjsve5LMdlBldbjzMddr7U2q2DQIsRthZsy
	 uKUATLsjcEltg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9EC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921239358.7659.999455363970906593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92030ab47e743e9aee5fa1b86800a449bb8eb884b722b6d7d7bdc5fa6c0e38c0
Date: Fri, 06 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749212393
