Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3528126FD87
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747217394; cv=none; b=Z/+qwF1OQvEubYPtaj3vqq4xRxUYcKllNnPGH1fecenvreAstrj2Ug78PAhv1Thj+MnLMvwoEaqc0fYF1oNNQQX05D7zANcxlW96m/DOy98NChs99JIIU10tAJZFtkm61jIN/+6VSAUqqsqkr+OHkGf0B3vNdRf6NA+HnjDZInk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747217394; c=relaxed/simple;
	bh=xJ7XDpOkS27QQcNv1CIksjqjvAQXIf4E2J2flwTXY2k=;
	h=To:Subject:From:Message-Id:Date; b=Dv4PF1HZrP6ocheuRyf+C8CHneA2XgRGWaUSL0u7VRWU7ig9mqXMR9zmTcTgiqsVWORUHyZJQn3sWh6LTm49X9e4F1mxAXrFYEsP1Q/ECpHKmjZvk9PjHlUMtPdcMKfIEPLNPzlNzlWKFREcGf48pDNP16m+jUw3SmVB6Obbb70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mj5g/uu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mj5g/uu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B7C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747217393;
	bh=xJ7XDpOkS27QQcNv1CIksjqjvAQXIf4E2J2flwTXY2k=;
	h=To:Subject:From:Date:From;
	b=Mj5g/uu8gSLK6vsxQuFZy9N+aaZWH6AqrA1bmYx3aDhh+ZdGf4TBt43XO/buFsPzs
	 4TsHeYWh7h0D9+j/1M2fE6A/y4lBdgfVdjmfUnRJ5pihs4LVm4+V7YtKBW9JBwC/nj
	 A+ADCjWwdW9nlb3TlrHEmBEjFV2MNXpSJ6JrgHIqUjRe/R0BicAONHb7GSkNL41luL
	 JgsrrKBSlimCwZ80YvY2Jt6CHkb6TutS15ZZSgUnziCQgvWn0l1iWDFQZGdPo7B/y/
	 LAbMk4WCNNgAXzp6I1I/5T399U37lyfTwFVDrvJ2y0uHA/94KTtqJmyIUQOrvNSY4e
	 1WGng5Ul4LrbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9260BC3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721739358.22360.2398798691883487044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47620c1fe5b07f53f1ec5f66c260c7d4dac78c8549ebaf1e8d8256acb027703c
Date: Wed, 14 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747217393
