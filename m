Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A361FBEA4
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745791194; cv=none; b=eN837I5elkn+GNF1x5i/s72r5pLkuWGTxvWDx9QClcI4b2wzulQ1b6QMh1irxwWtCmWOsjz8rfx0kNNy7lKD/gb+6FX1sGtVkkAaBwyAFM/oTQgdQWzGTBOYY9pUeWV1dt0WbwOLx+e3L1zlLDql7PMsL7JQ4LsmxBvwr3Ijz9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745791194; c=relaxed/simple;
	bh=Dsp1SYhRqeLxRdzLoLs3rcadZlrRoOzpJFP/vnrG26A=;
	h=To:Subject:From:Message-Id:Date; b=E4fq3fw+trELuwLjgKj2Np1PoVtOpbdvrwaSFK+5yU+PwlaEy5+KaZY5nSztxHWCGwOOVjjjHMNGRYgfgCcV0GcOw7DpG2763fe6IJSV7bNTEPFiseysKX/NOwQGRp0rMda+hTZJPOO1n4B57EOsbcypiYed8/3HQ6n+ZcHxeCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrUpZWWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrUpZWWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7782C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745791193;
	bh=Dsp1SYhRqeLxRdzLoLs3rcadZlrRoOzpJFP/vnrG26A=;
	h=To:Subject:From:Date:From;
	b=CrUpZWWhKszJ7j8rxQLNxCDDWZ5cMO9uGOrLfwj2wXSTHAxOYEDpuix6J9Khf9vOT
	 jZu1vxsOxht01ne/3JtX6XagTPW/iLidKS8tfV3bNadnpLaTrTDWBUoMyNYoSwd7ZC
	 hx1j7TVDRiYB2F2RH0HTfy77BG7om6huMIR1b5G6CrNSulgMab+VioVABvTggZTRjR
	 MH7XCuSlf/4WaaMeKjhQwJKZWxu/BFpoHs2lQ4TOkBvJUNJopkRudUJLjzqrnGcwqo
	 XFhCGR6bI1Wj2kbWQNl5PCy+NvZUvbpTPZyx7bTOax3jGbfRwAhZSLSYJ1P+KgBB2U
	 PEViZaTBxKMIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955EBC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579119358.29292.11822443087506922396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d727d59691d2e2a5c8ff2560cb3ea982dda13f64b11322bc99dcd7a564ce3618
Date: Sun, 27 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745791193
