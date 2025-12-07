Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2671C27F18F
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765078974; cv=none; b=pve/HdfkKtYb5BmIQ5lfDp5G0GXHvMEtnqTHLUEmaJnR5oLyxXlUBRMhZ5v2sxhb4WKp4G+dJ5To8Kme39PH/DVyF/AjSZd9cmdBIg6rDdk/E5/b1vQpv9zi7Uvm3RcvriT0uOF3KB7+UWy7fcAlGZRRSVXWXaEjmwSJYApjqqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765078974; c=relaxed/simple;
	bh=8H7F+XxLHBY81+GRPXaVwwuJoPufYt7sDcBZ/pHu1Do=;
	h=To:Subject:From:Message-Id:Date; b=F4i4BLeGTVUh6QV/uOjRHHNhE7zOtlfC1PQmUgePqff7PZ7/uWty6k/18VzxOFbSlCz8aYYveLSA5DKp5hMEaCge8Sz6oWWCoFAQIzoFR+i+02s5jhN0a4boeq6wjccRW2LtNWezUpBdcYehLqEHMec3xrIwzwY1BXc98WUnYuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dh2Ht9ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dh2Ht9ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A668EC16AAE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765078973;
	bh=8H7F+XxLHBY81+GRPXaVwwuJoPufYt7sDcBZ/pHu1Do=;
	h=To:Subject:From:Date:From;
	b=Dh2Ht9ss809PKUzcE/w25KiIqy8NXbQgNjjNoHVmksIl49GHYqweBAK8HsV8WnWdp
	 vbUXUYB4vXGjJZPINjSav+YyfvotSF3kEhGN34i+mtKo2zLvqnhvBVxN1jAdHwWyah
	 iLTNaH2HuQB7eTj1QkHDPUkPvPRC9VrZ4TitKGbO9fXED5Bx3CffO3KSCLGqbchEBU
	 lYxjVlVU+0mQVqX0jyYK7+gHwTW0hB3as94wKf6dC/fLtNGU2qlYuX+sD31XHLmb01
	 uidVq0GgNi+gHRcFyHIdu6el2tsm+b1/9Uw0SYBk0qYgO9sJGPEvNbae/fnumu4x+p
	 xOv4nq8iGKzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955DFD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507897358.18671.14972301856604737406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579d180f6ba3ab3cbbc42092af0018e039f53027896b6768d5e756537299717c
Date: Sun, 07 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765078973
