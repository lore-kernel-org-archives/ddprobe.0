Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05178378D9E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776337054; cv=none; b=E6zCf+z9MvFQjvrjOttvBhPQQbZ3cSnw3+bymukX1OKs8z55B1amkH159ISwON/Nx8S2k0RnRjr1W8NH4TSRjr7QOotq3XfKbjDUSe/vLPhoqXJUSfaz+GTAHUvg3CcGGMwdndIfgLem/iwmLF4ME6DcF0Ra5Pqm2dY4fpyWvY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776337054; c=relaxed/simple;
	bh=76lXbtCXU8yh5LnceWTONsWTO/Ku2TGKPmWZ2CljcaY=;
	h=To:Subject:From:Message-Id:Date; b=PQGAwVPd7TMSEMLjRpOjsnTo9zg7zk8djWalTYm/zY24ezbDyiO+cIpSCOfosn2QUvr+8DdI7BwSObQSTYzYz8DynZkbLcAmTJbzrbQHUolS1HBWg0DpFG5+FFOi0OBhT/Tvt8QIdhSGIlRHcDilS0fgHQbDRtfAlLg+/s6jr4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPBLbppp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPBLbppp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8653C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776337053;
	bh=76lXbtCXU8yh5LnceWTONsWTO/Ku2TGKPmWZ2CljcaY=;
	h=To:Subject:From:Date:From;
	b=fPBLbpppsltuwbI+o9RFxpQ7vWl1x1BtWOuanoju/YA7mewrKSZOOw/JiOE8oIstC
	 MMzbNYALU63a6aA5STd4mw/kuEYbs7TfCq5o7RgqmpXO/H16h0hyLrKtj+5KtIbGa2
	 qymQ5OU+e9vnT/6aa6ZplqJxFUHQRsN7WO7HMGz0NN3W/Hahv4q1q9Q0d5q951zGAI
	 I91AbBWAsx3rp7bYbIUq87Hl7OqWYiWTORJxezp1VAIbMaxdKOfCWZ7AQAffjiXe2Y
	 AwXM7ELQIUDy2oqmcJT/yryWb4HwiwrgDbHnGclzNT5bJR+HFAk4KgBNZoUkXIraxX
	 S4iw4kqbNYStQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9934F8A14D
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633705368.7148.11540990665645181540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabb082835a4b52514cb4c0415126ad20b758cf145a91d0fcbe02b48069f50c9
Date: Thu, 16 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776337053
