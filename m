Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D284E4315
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791330034; cv=none; b=LScf9ByLe4Gv56YpJhJHdKN/wAFvXCb7KKcisOY/E0iPdc00ItOmVTEtyW+zzuxeDfPTUmJW0mggmR3hQ2ltCeJr4oZ0g8yQJluqUeURAXl4SW2Wi9qsIiwYOMglaoq4wqq/KkFlfUxq82SL/BZVyc31B/5c9gbDHsWYtKSOfSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791330034; c=relaxed/simple;
	bh=enzw9kLCZIZdcU4PiZ/UMgnC9Bm2txU6/BApRiXl6So=;
	h=To:Subject:From:Message-Id:Date; b=Gfy4tY0oBZoT/eRGgcggVv7XbCrEZJamLY2AgHSH78R53U94S/YKqrG1YlsHoWZ90cqWftmyy9HkkPNBWzY22ir89dJLLvt9KuthNSx8m4TlVL8FXBxX3k5yCuCkFcFJmrALhLseVQamq8nR5qNbK13G474Nc99VGuijYAtxz5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5xiTrqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5xiTrqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA9CC4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791330033;
	bh=enzw9kLCZIZdcU4PiZ/UMgnC9Bm2txU6/BApRiXl6So=;
	h=To:Subject:From:Date:From;
	b=F5xiTrqzN7QQpInrEegoYTzU3TzvrsySZ+okGfcGlzFRmaasLH5t/WoeC3sxtw+qo
	 yWlCLP4KbTBtqpF1ntRNudI9alFftFh6B7HNyT/Gvu2FYsCZszx+DCargrivZ11814
	 Dg0NOr2nPdIBaMKLvwD6ZxXS6VWeCVTn9znT6uxTEPoykQDzvm+zvXXD0AbqotFb64
	 b3CeD3nmGOhVr4jirG2S9iryhlEEr66VTqo4ulnCOdLF1GaEnZt6bSy591asxKvjkY
	 S+yFZvs6KbvOFBorEi6LZDFp7K9u/qINgIO8ecz7V7cSvUHNHwvl33jdH1iPNXGFzs
	 w5vN1KCIh9/Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB68CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133003368.18771.164461287253326501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd12eb2a27a834b0e7e55f1292e280380a4c221bee382b32990b734e4ae8f7cb
Date: Tue, 06 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791330033
