Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EDA4317E
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728280554; cv=none; b=LHK27Xi3jnwMppue6oEnJB3m1eG/gk9uHRF3y7uMKHkHcuOJD+8/VVx7+nUZscQZdT5RrZi/Q6uPD4vPfsCQ+Lme13FefC1dTaIqOOTxP7ZQzvDYlLM3CWxKVUpjskoeLZvCO7O27sxwcVCa+2DnISgQlqrHCzNX1vXSO5iFVvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728280554; c=relaxed/simple;
	bh=hUQMkSWrrxXc95xHF+bFPOBHQ0cqfKfn6NJpQetxiHA=;
	h=To:Subject:From:Message-Id:Date; b=K6gdKX7ewaNaLi8RkKqnNVCpe6Zny33sWU5/hJyEwh7C1hPtArUB1pBcOhPxn75r+AzzGCmI1OnE3Ao1upiTX0fupxVJyP0uIOFZ4GCDYZPscQTMVGIEi91YEyOSp0PJtkq/HTFS3UJ8kcdDq1GhYMAQZegKqIxK5VygHCJGXM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTI+6dLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTI+6dLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3405C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728280553;
	bh=hUQMkSWrrxXc95xHF+bFPOBHQ0cqfKfn6NJpQetxiHA=;
	h=To:Subject:From:Date:From;
	b=lTI+6dLyAXymujs+TTILoYQNnaeIhPpCHPBEq8Ihsbhsu5MBAtHXzFuaLQAq9JysP
	 +hY4eKk7R91Pef06Ou34cgGQew39jS9m5QbN/jC61nNnxdHB2z0GWOtY7juh0+j7qi
	 B5uYDeDL33Rxwz65Wg7oNtGGOk8At4N7YuuBW4LhxWjFku3wgiqA7wwUsq5g2oTlpx
	 5NhBZd+saGtKe1ONzACxS840429CwIA2je8DrO2hE/ywapHMLsScE7z7yfYRoVg46d
	 qRCmE+B0npdn/c6O6eMCBiMa10SCcIAtJ9FaPS79PdobaKKdVotERkX8YQVmL1Tl1F
	 Gjc3ZQGE16Tsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB8CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172828055359.19462.2130711850756536428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228a837191dea1c6e0c2670cbe6fc05e47c1cdc949484944284bdc155769f4b4
Date: Mon, 07 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728280553
