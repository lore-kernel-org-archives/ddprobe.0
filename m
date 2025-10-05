Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6AA33993
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759676394; cv=none; b=h7l5BHqiZuhJZXD/ty+MtNguQifyhzqdAL65rcwgafbKsjj1blImX1RKVngRRiZnHy4lc8BDEo5Qz2z/Jpi6PCnywfNB10FgCp/bR1td5mj2aHxRwC8Vju6HTxJQL4PgVQdxRdTdQGsFydz4CymCP2kuVEe2LDlnxEzrUY4xdac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759676394; c=relaxed/simple;
	bh=jKR7N0Gyf7JqVlPzLtYLVejqEgkXgzle1rg2DhB0kZA=;
	h=To:Subject:From:Message-Id:Date; b=L0WwayGZwBTZVhUOJNr2x2X9aH9/d6DO8ZsA4W1t4Wl2m9UYXXghoDzBThPXQSWkNs9+J/f0CGpk5rX+snG/rXx50sYknJFT4OeG815RQaXyAI6N6LnXuiNH7kmxpoMM7tEPTi9tPlOo1EyAqT1yb1JUfn+aZrHhtY6IjTQENgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmXf4WjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmXf4WjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC3C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759676393;
	bh=jKR7N0Gyf7JqVlPzLtYLVejqEgkXgzle1rg2DhB0kZA=;
	h=To:Subject:From:Date:From;
	b=dmXf4WjT4yybnLBGWxe2Zj8s7YEm55nkhtAbEhpTPq4mALlvoOp61J2xGFMkdKxA5
	 VV/lxwmf5lY5+M9ODVqXdg6cZnIRyYA3lPRtpMRkWCUKj2U0bEraRh8bTp+dr95QLX
	 VyGezwwt8gmr7/Urijn0eBH+RVkfv4MuQVR7JjjTSQ4DqPkc8dMDiXY+mgxQsYxQgR
	 63aMntoh2aewrPMxLwaJfvyXPZwKTu8gCm8RgtJxWDHmdvK5cM7CDbiK3rugWA9wm6
	 TTBCUEZu7S+8xPwtET6M0iPmYI+uQFP7Lfep450ZLMKZptMX8Nhxa25rDcaJiIpVnY
	 IHGS+Wln67McA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913DDCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967639357.9810.8631514541985066130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1855d3a4aabbc6d0703e0b4e70d7ee3b5a80683a5ba4cac56f6a3e997cb484c5
Date: Sun, 05 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759676393
