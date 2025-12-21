Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5742AE68
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766357034; cv=none; b=IPMoFOjz5OT/Eh0oWrgA+MkDAi20t4A6nOBP62oButKr7xrzSRbNBM9aFJqptdHK7zXL3xk5Y1jyh/3PCSb/rQTb+dd/bS0PiVvbUkFt2p5T//b8PJV9755VcMM9RhAWKhBFSmKnPnhgd7VzP1qrtgZ5yrvDhp92waa1YO9WpwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766357034; c=relaxed/simple;
	bh=kFHQiXgyHMpBxE+c2oWn8PJ5M2rII4C2BC5vRP3TQkk=;
	h=To:Subject:From:Message-Id:Date; b=VxxrLKsNiPtTlj8NnKd+1waog0LTweSpjrZQK3HdpGyPGR+s8tCAt91q9Qmf/gu3e9o96a3vlNkYiomUS45FfClxU23tjRO0pGPtCJB3v+WuShxmLNjbSd7GuOd5lFdDZJMNqsCxK5h13tpNkIfAV9GZZ5tgLh80F3+svEhJi+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pc/rnufl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pc/rnufl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50E9C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766357033;
	bh=kFHQiXgyHMpBxE+c2oWn8PJ5M2rII4C2BC5vRP3TQkk=;
	h=To:Subject:From:Date:From;
	b=Pc/rnuflBdeyo+89gmTLPEu8XGfaQyvMCjSOTMDozIbEddVVqgOMCINRhTD+s3aBE
	 3eWXWtDYJ94RvGI8ISUwTBrrEqt54Nxy5LUOTo37QbTamLI/C+mQ091xEXBMFSZ9sZ
	 DqUjafXiy6ONZV6ntyGnoB9nO5p2XwQDo9rlCHQMRaVpvWuqrMyiJQBHECYKvvrdVu
	 TP1yAr+2AWbZk0kk/tWYIyTsHYFMaSXILJOvtXXR+LyUcyXP1hKfVXDNqvRN/pQe3v
	 xK62+yRQnlYlSDyk9vp+3QLcs4p8v0gjB7EkdPfPSLXOQ00KuvzL5Hm3H7UHULPTQW
	 z2AC81ooQpK/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EF4E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635703358.29713.14763479359865413831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4fd75ce007efc72d79db78e1a2fb76d1da2222372c7973c0ba6c32143c9f96
Date: Sun, 21 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766357033
