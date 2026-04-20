Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235E572631
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776725254; cv=none; b=R3a94+UsNauuD6oD+QLPw28EGNo3vwCq5CkUgflT0hHjvUyLzWioP3Rphe61zpGpPmnLLWgWaL4f4x7TrgJS2u99iBaEJGyiFfU9uQqc47NE2gKeLG2holAvv9I+kchuAbAJiY8hVo4F5hc3ZIa8j/61WaSevoA7psCit3AunNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776725254; c=relaxed/simple;
	bh=VWz/CCW7a5U2PRdRs0pu1tTYr1QvMAhk0sj+EoariuE=;
	h=To:Subject:From:Message-Id:Date; b=ifA+swBGT9NsqIzoXOGRbLuBdAjQXfg30n9iZwqKyYqNAnhtDKYCyCBzcj7ULWLUOFc3+dK5zGibaH286b4eXN33UpDi0+uVg3VN4Zbkg4YdrIuBHKcW+6Yc2Q/BdWuv7dQsSWVsRe2FF90wKrgfDyA1ns91ZDAW24lttgzzaW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rl1U4wvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rl1U4wvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC4BC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776725253;
	bh=VWz/CCW7a5U2PRdRs0pu1tTYr1QvMAhk0sj+EoariuE=;
	h=To:Subject:From:Date:From;
	b=Rl1U4wvP3DjYdvMHlytCq45l/ai8RkTQFFGmgn7w5TQQS0eA57KiYgyk8p55HG+ZQ
	 p3JVA3FJUOh8x88AE2G08bwnqbPVtQRgMcq7Uswdk8MVXO4spKrg4ixlovyBTmIBZ6
	 Eq35XdDb25yssCdfNmY95SC0V/eySANP2QaUwnfmW95D0TXe6AJx0wxSbbH60+1KRN
	 rU5/mMEPbmT+48/KKixMki6NTEP49cb2cxxYJG0wVpSFet+A8d/RXWDTGsto/Ac8aE
	 e4B/ZBxaNrKYK4Vc+RpDnj5eUGx0e5mEKBE3LkALKxpHNZ0W2vT3kbrGNk7RQD8kG2
	 8Ur34Nq+NXQLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D5BF5A8BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672525368.22774.10958217898431714536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d52d1c9afb5e620c1eb262cec8bb853e0a59189f434994db0591072c519e95
Date: Mon, 20 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776725253
