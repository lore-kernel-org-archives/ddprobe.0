Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017112765ED
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773071694; cv=none; b=pyEiBWhzhsuyC+3EdH8reWPKSMV17X6EOpyGGR3tb6nLfUJJPquaSyBEnJAxQChnv1imcXVysP5AvCUKOWqilJwg3CT95QFAYkaIcxAXOd4jxcLvqeOiVvT7CR/AYCthRqATbogFT2pkXSJUN71FCi8IKXf2aKN1XVhuFUicuv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773071694; c=relaxed/simple;
	bh=rZt+uj+YPbUOVbsUetOH3szXLRdSj3S6AFc51DMt3TE=;
	h=To:Subject:From:Message-Id:Date; b=ssa0nLefh+QDze9yTtEsdAhAefKMwY3BCRtmvjGfzxRfJ3Ys9zMJIgGy6y5v3v+STcaw33dw7qWwX+Spzc4A0QEeILMmRnrJfWezRzDBaq0jO4wJw4EhsTSXeTME5MrbGDFulymIa5UHuJnajpE8X71VH0tPvBGjO/ehjt3e41M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JB+wh85Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JB+wh85Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09C5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773071693;
	bh=rZt+uj+YPbUOVbsUetOH3szXLRdSj3S6AFc51DMt3TE=;
	h=To:Subject:From:Date:From;
	b=JB+wh85QfEGtP/1oO71z6XxyDqGbYhLkjgqWmzGdXV8ZV7VFQ02ps07mTCGNBJ9cV
	 rlf7d+13AltXEP9CvLtaeWe9ymIl5axei+A6f51Bvp3yhqPAn6zwy0a9l9Sz2SLEab
	 vYlMa9Z+iLZANYJhpG90ztfcqEIqq3x4y1FubGh6PD9KPvmEu5QHGy5+E0RggjnOhI
	 ZMpJ1iL2gQwwlqS19VYH9tNCKFUckqBNZdaWJvevdTYFKUwpPyryTe/Ycf1RNwu6nP
	 /+A1L/o4DuaPscot61sWaH3S7v85wR1Hyo7XyS3lo3GZZoh9i1Z7RuVB86xlYjdMZE
	 So1utAjnECLiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A9F41807
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307169357.688.8025396455202300154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7aee700de369c1c7b4fa27fa2ccb94be9aa2340ae4fb00d0fbc02989acdecdf
Date: Mon, 09 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773071693
