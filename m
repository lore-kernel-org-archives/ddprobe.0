Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E649236EC3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736856954; cv=none; b=FyMmeiab4x0RkSF4TQecaIwCv1drLWLnLTeDKurbU5oegMJyvcUzCA439cFSvodBsUdEG2ifSh488krshThydnc5qQ7+PnoYqULTIflHxzGKwktfIKVDiL9Fh9e1CQCL2YfuO2RI01bpUgeFKymD+//1VM1yvMx49hsVxED9Rag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736856954; c=relaxed/simple;
	bh=4nFJmCBrDZhQWlRdyKE1PwJOH4KcK4u2oi/fbugvf1I=;
	h=To:Subject:From:Message-Id:Date; b=nbsp/YbrKs0C0hFYDokm8gNgO92XFt9Rp9ZcqdKIOYdYXEKX0lYcyv9U74oVnKEMCH+9Y6m73HbfrXsjuk6znDcIWVOU1JFB0/JKlI+6R4+A0hNi1fNwbcNHC3rEfA7UXT9SpNtq9Y1oJlKl5fGIvoiThX4QNrlnrvcgB+O+YxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/nxeX/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/nxeX/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49F0C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736856953;
	bh=4nFJmCBrDZhQWlRdyKE1PwJOH4KcK4u2oi/fbugvf1I=;
	h=To:Subject:From:Date:From;
	b=J/nxeX/wGAZ+0TNOozWdxyY3AURbHzDEMU5AlZuoT4pTEhWfLqXHXgFzgyPolBmIA
	 HySoHC0U6J8BW46NZtw2BW8caSVd1ueni8wjb1dK7wFFKm73MfpTgy33o6SJyrjd8v
	 h6JcjPi+LrQowPa0payADPEml69q19eoVKp5uWI7tuQrnuHHaBmbvey5SM7wQmKAqg
	 cNg7dEfX00Cerg9y38tmAyScbnhLjPA5VjkNa1f+3QawgNZ1uVEiU9tB9DhgXESwt/
	 /12il88b05JWZg7Nf4H/uHEW8W84LpWUoLuQTbc6KaAWenfzgZchvHhZ92wdVZuqJa
	 quaRKMCERWKUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95450C02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685695360.27381.12882340336092321468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22363fc3f0b77e98acdd28ee2b03fccf32e84de48f2f0dab921091214b74a2fe
Date: Tue, 14 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736856953
