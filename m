Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBD721C183
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743456594; cv=none; b=UKYUVGebZtxwSeVSjuRAWE1PouLgucLSARsyQdXE8V6OnJdBus7/P3TEIE7S7xs5Xe2cikxkcMGCya21LccYlzCOCWPeGOS0lTOISHsO/ixnJX9evtiy9IuiY8OHGlduNg4S50kKTY9uBgq5S8P4fcYdBe8sfPOIWkUQCMMefg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743456594; c=relaxed/simple;
	bh=qumSFu4BO9kRaOjHwBIjNk11IDuoaeodreKtF8Dy33o=;
	h=To:Subject:From:Message-Id:Date; b=t4yTw1fKdvg42NeDDUknnQW+InT1rtQuVHu2usHY/LYzib5apys1tZB36/WQ9FDUgqjqaZ+9HIJVw6owbW89jVS66v5Hx25u/CAhopVScYMUi3IDHUAmFzQjblbnnkC/dkSICYRsDjslViPJugqkwhUzMQGrWh/jszoR71ykmAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4C5fPuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4C5fPuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE94C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743456593;
	bh=qumSFu4BO9kRaOjHwBIjNk11IDuoaeodreKtF8Dy33o=;
	h=To:Subject:From:Date:From;
	b=g4C5fPuOsD4t6VEqGnklsjFVmMcp9LQ1aAc7aFlBeAI6QO36mXpbUkHOxYJpHf/Jo
	 juxl89zrmSmAwzUb/1j702Z4pHAKO8eKX26Q3SnDfHww7wSnmUyDaTotEe2ZhgCmid
	 FYRdsYmDk3FI2YPZ749GfszkX9OH070Q3v4z6kMfrzOaGeMEX013nOE/2bYK9DSLgX
	 Nvao3Lwx+01/w3tpzORYtJR9+aKSXSivchNLx/XEGY4ogQd/uBfLrphKV+FD4sr/a5
	 KZt0tz1EFYfS3Xrw8suNWOOPhP0pat7EJqernPAVDnoESElB82kpxOWbbhrLRxgKk9
	 EAxcH1XTavVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98224C36014
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174345659360.13548.13202026349512279799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a9b765620ba5fc5d3a9efab7ce10baf321dc5b9e1c3e75c00c8f842b55175c
Date: Mon, 31 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743456593
