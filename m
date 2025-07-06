Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31226137C2A
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751830195; cv=none; b=ehNpoXxHakONpWD2FFIHr3qVVVjLOPr9W3H0LJMjGUM7Q+MNjxJZ4S7gv/MGiWDCzs2iIE5fmy99f/eZbszcvGoMJSKxzCfUTCiq6BeXAb/rB2uWBbHFdZfsPy4mrrKT0kmATHWCCh+ls/BGDkjY21LZWmkxuXvvVH5FM42rlDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751830195; c=relaxed/simple;
	bh=OXyQT1tBkKeOYQVPNJkanC99iBEQX6dhQYFTBSFOR7s=;
	h=To:Subject:From:Message-Id:Date; b=KX7UAanDRT5gK1DA4YsMmOpKNiXYtt6rZ16/J2TidHXTgy4ToqXsPA55WZPkKAmc4oLGS/jtiLwlgHLvDZlHVkI4k/OheV3QcW3fu+pt2IiIfwhzZmIaNP/TV3t3ZgOceUCxn2xr6NPx2Lz/fB13WH8YFVHQ48ArLcPtrL9ISF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZF/ZoRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZF/ZoRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF0AC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751830193;
	bh=OXyQT1tBkKeOYQVPNJkanC99iBEQX6dhQYFTBSFOR7s=;
	h=To:Subject:From:Date:From;
	b=JZF/ZoRmwVAIe/hAws3O8Fv5ZJOc0JZLXpQM3Gy2p7nbT+nR8CIwrjZcXIeM5p3LY
	 WGJ4zF7DVLkhJ+2LgK3YVh3O9XUJvsq5aySYNizuBJpp/VIUhYhUNNzb2uoz3Uuwx4
	 5PE/sl+4IvXzpPle8EE2oTcWBmlj7ZuEBIv1qnuSHuVOD45y6my70XoMw1lPG0jRkk
	 +yIllnuSnYbgu42blsks7UAjc9Wo+81LJVhVR6iWExKyB0TuSE5fvVXdaL0O+rd0cB
	 adNa3eFbs7ba+erFMqa/ldnA9+hHycGRePRPHXOBVcTc5M4K+8xxQU+BCuFafr8Qm3
	 FzllmTBnSsSaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02CC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183019357.14933.6641870232582091740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f972bc13b33c8a0608753bf9f11830ee2a4fe8bae57baa576ca8b866c0782a96
Date: Sun, 06 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751830193
