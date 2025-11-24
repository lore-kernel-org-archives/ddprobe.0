Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471B127FD62
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763995314; cv=none; b=Ki5GtW3WjxHlUpZtunxga63Rj3hJygbprV7zrzSTKG7EP5Y6vzye+v+uw67HchqKNL2sTNDYabOCUC1ImXzWK2HVlkwO98I/uOC/tr9Qk2fu3F/YQW+36un+Y0e9wb+Jvu8PuZqTGm9WseqPoUhwl955CTnyoypQlv1bRgMgVdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763995314; c=relaxed/simple;
	bh=Fw8/5C52ZTtA5fCWGyLdY9GaybVWdgHEFV76EptsABc=;
	h=To:Subject:From:Message-Id:Date; b=hcseInHOqif0Q8MAtUiSxcPhl9q5xQKR0LFXITLUpD9gxdLyKs8yrXiDkNLKgBl1LFQKXQ5sKQg/K3FPeJFZ5E77PnA5yu3sFxLIJCW7vm/JVC8fUOroR5a4RkhjhaJO7V5sSTL1XCzMV/LQny5Nztnvx4XnjOOc0HcoTV49R6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KelxjxMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KelxjxMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3ACC116D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763995313;
	bh=Fw8/5C52ZTtA5fCWGyLdY9GaybVWdgHEFV76EptsABc=;
	h=To:Subject:From:Date:From;
	b=KelxjxMjFaVteElwhLcYom2M5B4Bme6SX/Nwj2/2x7F7bx6lVmrNDIbMrKoA53dut
	 63LE3K7CD0TQILTrGeQy+2b1AD/w2M0eatzT4AYKPS1GWTDYyVmCIeekaYMa4hAd1/
	 JS8JbmDNFVSw/LXdZE2UxB5DYfkzmdhrMuAf9BVr9G8qDCCkXliJQmY5Nu6xEDNzMu
	 /qeOetWvnX/L8zVNmNgH2WTAqwsrr4f5k2LiQGWdS81Dzyp47V0y+iZ3mGTDWfJTij
	 TtpXwaYdhRsh0f+Lco5/enPZGKi9QVBnrpBFLTt5euCCb27tHRjmzCmg4JrMrvMdsb
	 rO68XIMJQaUFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74A9CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399531370.13438.14357818971254030994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aee94271c7ce1739fbb84541e1713e7f319d2360dcc802cafd80c27d47b94b8
Date: Mon, 24 Nov 2025 14:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763995313
