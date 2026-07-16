Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEC739CCE2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784216914; cv=none; b=e3vThs5XTJrP9xtTM3BBEOkxp5oqJmJz1HGI4eYdmzA5XTyXHHYzeOXkp2+AHhjQA1kTD4CMtp6KNpCtnOzKAV4rU8/JsfvFH8BIgE4SaGtFmPueLQg1Cg/TTTSyXPf/TDRCtZo6tlAC900cX5Mw8TDP59sq1I78+jDF+c2Kfu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784216914; c=relaxed/simple;
	bh=/XUciIJDV6KSu5jaf1A09eRtSvjkZzHcMSnprpjBiCs=;
	h=To:Subject:From:Message-Id:Date; b=dNDACtPQpoRpDvD68zzF8q/D6aT+LKlTkk3ZR4Kf3vIfC8a/nhbk1F5Qa/IFPO/uyWLMcKE4WCriQLPMZdYVxtdCEGNuRdChi0UHUbe0B4vuTuRwUDtFzDnm437FL5Qit5cmWxsYB80qMhNdodX3WXs53NOG/ALigJmrjyzKCF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tU/A2x7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tU/A2x7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFA5C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784216913;
	bh=/XUciIJDV6KSu5jaf1A09eRtSvjkZzHcMSnprpjBiCs=;
	h=To:Subject:From:Date:From;
	b=tU/A2x7lGlKwozqmvsedvSM4B4cxfQ2p5dX62zm1aKfGs3gH61NZKtprXjIzbe/+X
	 Y70I/FRvZRUUceSv8E4rsOU4w88aPBhWdR0idwYH5kuDkiUAQaU+RJ9SIJesEqQy6w
	 /eAfPJT/RBHjyykJTb7/6/3+Ag8iQff5BBvAgYZioQoA/gAKGuQG7vd19GbwQV1Xrp
	 MTvUheosoTZcw7W6DGhobb6os7LeJTdPmuUyT16RqD7syIyhTEwQfZEzLK2KOqc0ym
	 I0r3PHD7Xmli/d8VbIbyHE2/RQEMTPKRbEVcRwxK4HmHN5G1AbdWAeBTPQSCW5Xsi3
	 QU+DNLC9kV4qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9386C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421691368.26534.17005427009004718764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aabc4ad4b18bc71e8c49dd8331170d64dd857f66c870203873261975717fe8f
Date: Thu, 16 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784216913
