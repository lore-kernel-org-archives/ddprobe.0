Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADF623C50F
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754416194; cv=none; b=XQee3QCwkDzKu3fY0/TCS7EDeqsze8EFeA8QawTSreIOrKmEzLmPxTaYwMKbl/hAVp0qvjA/cskB+jyJ1m3m4NASOpSGAtiKBIJEMkPFrjzFSdr+bKFUXZic3bATVZJvQA8kBdtr15bDQQfECPbTxnsFLCM/KxI4xKvhz/pCiH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754416194; c=relaxed/simple;
	bh=FsHyi2rToSmj38hzilc8FxHnbGGaGVhfvTx7d280Wo0=;
	h=To:Subject:From:Message-Id:Date; b=cMFDzkDga7UKgQ44lfHNdtg8/an1U1hEDR9doa4QXqlul+KU5FMsMTXLT0vFa6LDdy7ZPr37xCgriDN2mmvxiCjdGD6CZsnJfA8drHBS57OcvWhTLQI/0O6uiuDJPmE2/SbI9j2h1GrD4fDT/AROFrri/ttaS0WZynh6rj4Krok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lskGKrOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lskGKrOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C905C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754416193;
	bh=FsHyi2rToSmj38hzilc8FxHnbGGaGVhfvTx7d280Wo0=;
	h=To:Subject:From:Date:From;
	b=lskGKrOnJs8dUc8fUOUP+W2qajoAipKvW1x9Nw7soDpHRtDhBGjoXetdhBDhEyrk1
	 wUF9gpqisQskT/dq3UFgMB6EQgHrlv74QogtlaXoWFy9ZdmIPctK5mcziKpClOiIey
	 CQ2CuTd4x7hbXsEg1W1zwfB93LPCCXoQ4mvm18B5rh3Pel593qbt4hw3P50v9cQoRw
	 1HnDWe9rM6dt9b+2R6xDaoytRnD3QeqeXrN27tknz9AEK0KOU8qWLgVPPCYHv1Vra3
	 wgHmQkb8A5c9TChKF/TLYITeKYJjIEbZkxYeTjlbUc6WaeUyEVy9W5EZAnqA3elGzf
	 dntFLT+rrkTYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA95C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441619357.19167.882341377603021284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068b2f4f76a4688aef48f64504cb308c184b98cdaac1d6b97f9af743e391d20b
Date: Tue, 05 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754416193
