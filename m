Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321F2155326
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761536994; cv=none; b=du7n/il14uNnBal7UFhJgEq+PDqhue/U2nqpk1IiqGnuC/wU1PP2cGK16JWhpRoZnzkjk+vqObK1BhSGI8+I6JLh7avP+gp2dmhnzCDvjmOjrjMUpbMQ5ANZQVzL6WlaNj9iz8ZM0GdSMmaFb0axH958rc5/AKWovZwhOwvQGcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761536994; c=relaxed/simple;
	bh=AWJs0u7/f6jMiCTR0eDpVj5O9DJv0VOOaPulKjfevVA=;
	h=To:Subject:From:Message-Id:Date; b=d+0TGsrFwBT30BMV1DEKg8HtofEJxhBxSOZatBcvX/whjuWY6PPJ3TZOnDKGt6yky50cST2noaI6U4SpEL61/k7Gt6gC+KxjzfEnAdo9yYXMrniffIE8a4bmoFeVNQJzlWsT9FnF0SuvDZ1q13mJtK/1rIvqK1zwhqV3iKCHQj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4Kw8A/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4Kw8A/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8F8C4CEFD
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761536993;
	bh=AWJs0u7/f6jMiCTR0eDpVj5O9DJv0VOOaPulKjfevVA=;
	h=To:Subject:From:Date:From;
	b=X4Kw8A/2EN3joHbR49LfuY1hgylNO8jrAFaTto0jfYn8TvkBFeeygkPi0piShdufs
	 BDnHTXJ2/Q6XNg+mM1K9tc0KOFIUMrh3gLvYN8xYV5G40IjO/N40AiZP020K9XtuuW
	 orzHmdncz9FmeQFdRqsCz0o/ZAtQ+nB2Ni6Sl6wV+/Rvu18tyMWI5FmEdxft8pxc/F
	 mDVRpEYBFxLYjxhcD/GxDfcsK6/75NUGTzwvfvOOVp7wqkNNzFbNeTzfgvcsrU4YR1
	 K+J2k7guV9UlRO0ZqbxHVlh07pEwx5yJ6vL+ctLgWNwYuq+xfRvz1nqDUQ9+A2UsvY
	 j1ZSOqdm8TM6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96386CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153699358.7098.16388255897876024770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ec42f890012ec3ed5a393b73141ec4e80ba7835e5a5177f12d4b95fdc1e1a2
Date: Mon, 27 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761536993
