Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C053C0C
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726752954; cv=none; b=sYVJ67o5G7JANlMz4TG358hvwsXZzx0nOiYjrwSSUDcnxtU0eGHIV6J4Nq6Cveh0q8eISlkzVTn63iAwFNHVxFTlMc2nK0xq4bKGK9UdBIK47xh3+OJfBV5VdUIHje111eGhziYdbi+dn05XMbhfLQ+L5Ey5YcaoYpxsysFUExw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726752954; c=relaxed/simple;
	bh=wWVOrVCvb0ASAhQ5VM5IZZU2P6qVXtrjkQdTaVDX4Xs=;
	h=To:Subject:From:Message-Id:Date; b=I7LfmrF1vUFIsVJrgEvgVcSc8D6OjpwSjacQCKhPxLGpwSrPna/h6ABU19sZt9Zp/bRGZ8DwAiXq/8TFHrD+27i7SC2Y+rx5tk548qhnxSXI1HcneXGXc+u0aS9fON0V4xNWk/QY0DqH9QOrJ/tJzS2VwUiBWok20f833AXf1/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQAaSMK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQAaSMK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8E0C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726752953;
	bh=wWVOrVCvb0ASAhQ5VM5IZZU2P6qVXtrjkQdTaVDX4Xs=;
	h=To:Subject:From:Date:From;
	b=nQAaSMK185cNMrNBXOoRMhe0CgoB3TFagljEjrnS6dZ++V5Eb2uM+JMZY/1ctoPmY
	 plbWs2mXr9VK5a4VmaoJ5ZflfPvySLHbQlGupfjKM1873hZrcUIU391tmJ/I7ZcOfQ
	 EmaF9kna77xXO0/VUitTSt0DXy684Cxfy/ZWo/Hy4dtTTJdNh+WIGZl79O7jwDQrko
	 ownQdEbgPzqhSSYlKcSHG6kndx2H1sM6qhNYfSpsi5G/xbk7zwwly1AW7l9eRZfGm/
	 Y6x3BT5uKRsToXjrytm03dmT1d/V0fO4QSNDMkiG8SpKL9S53oOuuVyFqgOZptdxiw
	 N2eYYEVO91I+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BCACDD573
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172675295360.6007.8388861250308851928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c785a3ecddc7435136397bd1b77454279312a05c622605b8304dacc98f732f
Date: Thu, 19 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726752953
