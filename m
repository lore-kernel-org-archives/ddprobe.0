Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C1B2A1BF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768053234; cv=none; b=n1mkc9RIGmNNSB1feGDIy3bPly00q/Zu5u5AQ47DOJHQ52/Qk3jZFxYZc1XtSj5SglYG4iAQPQHfdKvX6U6sOoiS/7MnaojPYwREocF/FpmHZhe367UfQ+uHZmmF6IasHeyA1H1e9jOV2/nXSPikgwYn6okgOQQqTNtlMa7tazA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768053234; c=relaxed/simple;
	bh=yHm3foHWBqPHNfwjZFqsRJCzky2tZPAd6WyuTRTT9Ps=;
	h=To:Subject:From:Message-Id:Date; b=gUVDV3237qixRUfQ8bMNKxiUq8bQJVBuUCMjHEvO5unq5k9DcQ2qBEsZPhC2AkHcybmgGcatDXn2aXlgsB89ebBFdhqie3SRGsbtZ3clkZjMcwlcVk1VvnfcXKDl0cZoYCt2qrMnJqrQtDxqOp0pSdHSVjYi4EKWMZ5v493gusk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVahKClH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVahKClH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85C4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768053233;
	bh=yHm3foHWBqPHNfwjZFqsRJCzky2tZPAd6WyuTRTT9Ps=;
	h=To:Subject:From:Date:From;
	b=oVahKClHTfblkAMYe2og3/Sh47iUqXCpDpKvKw3l/f/q1+coaSPYlGYfAyuVVyKzO
	 c1zY5SAyOrvDFdQ90mJvHfLVgUmeZEdDoMT2DV0LIXUMizzcUEA39egSOtMNH2SOo+
	 22I+aKnL7ppal+2G+I/LdKAtzrj7cplk9mf0dC/clZrTOUOBlWFD0/KHAsvUicD3DW
	 OAIb2Razjyg3YPcneZGtwONpQ7pE7g1pR4x1X/fUNWiNK0hB6zAWmOKugNAI2Coi1r
	 SFgoT57UrMFlAjaBZXz+pdcdAV6/paHbCScLpOVVd45mt0gcak1aMkEdUvIX+q3dEn
	 edgAOkVL0wN7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BDCD277E7
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805323357.29784.12115014465388542270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b00c483797fdf3defdb58126ff6168ccb0494d0b71903fcce492f7384f63259
Date: Sat, 10 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768053233
