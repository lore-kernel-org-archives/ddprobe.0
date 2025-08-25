Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319F74C92
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756089594; cv=none; b=czcC65mh0V97wG+sgHPN+NVunbw4ZvZkMJq9ULIxvka0ohy/6xrDlscZWJ96ijobPZ9Q+8X46Z1wVkJEVaF4OFHxUMDS6Baso2z9UqAlwjd+w4bkjAWrx+gBfWr2qMYCcsF37sdHbMLSuB3USDv9VFXL51HxTFs/DtvIsRJsP+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756089594; c=relaxed/simple;
	bh=08WHJGez+GodiT8JC46aI6/vLOMyTu+5vQKU9BgZjnk=;
	h=To:Subject:From:Message-Id:Date; b=b+Urchm71wtyIPDqDDPYNk2XwCs2Vx2r5Yz/ZRFj0IWXFNWu+fFntEauLnZJFD5/RA6MczYrku9FIH9/Gy68O5CdBKQ1vL8tILO9G7Ai6WZpqXFZhEfqNpn3OoJ3bRL3JqKaXDVomWqS2RCih5lRpR84HDrKlme4XWOPKDT9vsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqU/UpVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqU/UpVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEB8C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756089593;
	bh=08WHJGez+GodiT8JC46aI6/vLOMyTu+5vQKU9BgZjnk=;
	h=To:Subject:From:Date:From;
	b=tqU/UpVQskSnKXEEdDV51CQT6tb36fQZhbsQNmTclif/ahHQT8iVI89Mvi46JplWm
	 au1ThD+kQqGqNEhKjpq2FQUFbPtbSrzs2tFdv9NEL/vOvXH5UuZwIkOAqGrq+L4n2m
	 lh9aNoVVxLfDtYC4pvmqJjV8akEMYm8y0SmxwmEFh6qaXpFI5NCdP1LBHNMv86sx2Z
	 DCG4RzNFUt/r3sQRjIeISaKmU/Pq6qLHbpY/cIPXbXnKRLmeMXrqj2o4LbLN96eis+
	 u+vgbOQKv0rNCaZae4qLXSU9OCJsedlh+mRaa3f681B4LlsasFuF5FgR7/dP4RkAXu
	 ig9b6jT4LIMLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91072CA0EFF
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608959358.12473.7314963230751912147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e81e57b74d5aee4226f061b805169b82b73fa434468ec6416e039c3ecdfe91
Date: Mon, 25 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756089593
