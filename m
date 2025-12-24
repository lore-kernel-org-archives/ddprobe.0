Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5212AF1D
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766609634; cv=none; b=FiUYppdLctcdNSYVxJhjbZhj84ZoyF5XdsyS2NtbYyMRJ7ZIfsHiUN4hkG14hj8AhgY8SWfMyt+dyh4rXVeHKX/SIGgygAJuRIdPAGC3D5QyeYPXl8l2lkMJX6kUay29EZyQEyhRk4wdiOKElkphsR8xm/95U/X8tLT7oB/p4Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766609634; c=relaxed/simple;
	bh=VphaNvRZ5uPyuAD1GLSmLOqPbwXcWmtZG7oH/eVY9cg=;
	h=To:Subject:From:Message-Id:Date; b=OOBAY/etGerYPR7P7fmAGfID1i+5euPHKM4MsPdduMpeSOPLIFzDZGrSFs7+a25RsqV9q0St+FtiGXnp/TtDFwkwbG56fDXwgpl/1HwouMlNdV0reys0m7S96EbX6nGteZWk2Swny6+bMMPtmsWwjd7pZ22uIgaG0l+EIVB92Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFksVnpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFksVnpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA286C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766609633;
	bh=VphaNvRZ5uPyuAD1GLSmLOqPbwXcWmtZG7oH/eVY9cg=;
	h=To:Subject:From:Date:From;
	b=FFksVnpgd+j7YmyqQVsDhabWrsUrYnlWeUE9/i88qRvEKURGRzEkVwDg1D+Xod4ec
	 xUUMro4Yg2SymwxvW/hF7AyGOdvt+0qKHxBfxiMc1zODsrqGcX73p9ZhO65dNJhcP3
	 eKhzEgT5zLxRiL8ZiMZCKzkRubb3PU6nzFbMle260+w7Pl2VCYXxcITwg02dwlqiCZ
	 5Ft3LhWAFERlEPNOpw8LM9NggdtXXeUZxIiXgMjGAxgKJVyxb4EfCBpe7VSn2dGe9E
	 higJ3fVhpqUA+IRszjIK6DV3TGgEpBjAw8qBXsSN/jHSp7MLsr95JIP8gf+y7JjOpd
	 kJMmX09hbwCfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E94E78493
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660963357.20682.14658678536454444783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f046af08e1b3195472284523b3f95a85fb78ac5d1dedf8902013100ed7f223d3
Date: Wed, 24 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766609633
