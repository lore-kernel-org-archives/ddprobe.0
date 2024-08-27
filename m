Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395FD1C86FB
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724773554; cv=none; b=qVQbZkK8fC8oIjTSdY6zzOZssP3NxGSpuz2sQv6o1eE050E0b/oNNjHntiaHSavppKLz3YWgpsMUbhmKppVBA8mNDhdLRhIkqYHI6/czZWrUTvml+ZGNUJe4vlr0ZimxfNk/xEI9oPws6l72LeRo77c4m/7+CiaWaeidWvsq63Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724773554; c=relaxed/simple;
	bh=s2drltgHNMVBvKRCso1i/E+dHJHMsdZpfogi70tHn/I=;
	h=To:Subject:From:Message-Id:Date; b=Z6rFrEsY++b2FDwowL+iPLO7jneS/Ty+rAycStdbaL/0DPDiBnz/fJX7YvtmTlCr5EWW2X9Y9nRqlXAefVfGzMEa216qQL2h+RTg+tbu+MHq+59K1GDLPBdvQ+uDfYh1K6A/5zZY8AgPJseuPxcQiEV+Re9HqTIU2k9/u3Qo46g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOILpOKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOILpOKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32C7C4FEA6
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724773553;
	bh=s2drltgHNMVBvKRCso1i/E+dHJHMsdZpfogi70tHn/I=;
	h=To:Subject:From:Date:From;
	b=dOILpOKRyKAoQqU7wthnDVbFu0B4VVN93HsoxRGYqhgLf9OpKXwN2sWFWnwAkWm1T
	 00E21XGl3/wn4ImT1yOF2q6wPE6twGC7Zi96QJCNJBzADWLaoKtUcRIRL72bOOC88I
	 66jbL1s6QINAIR/EzaWxih/AFaf1neooz+qzm4+tHdJNbHlm0Wei+bQIraCioaO8wo
	 fy7LEsnqB0R+reRuf1VxzI1LZA4vM6E8FhC0sj5dg/EHypuT91Mon1v0RLzYHKM26I
	 pR3j8V/X5U9AJBoE3EY4t2HX8DOASScoC9MvX1ocuevJiPP370i6qbfBntALeq1zVn
	 VR2E69l7Jt2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4988C5472F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477355366.20474.11267772101138070990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23875145d962ae2f7df0f834a85c5e321ef58774cbae44543c17dbc977d9174
Date: Tue, 27 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724773553
