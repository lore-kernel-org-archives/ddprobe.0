Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B1F2FC009
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762871994; cv=none; b=N72gS4VN5dq6YYFy68giwbUfWvzWA1kgekkTK2SH+eoOnrGDUNeKAchVt+XE3wcyrEHWf1htE5HSdKSKH0HHqd3oUS8rehBWhoOtcZxRhunwh6j/TTSmIJUMMxj8TLG+smzm/BbQWlVHQ5bxIjfyIw9vT99N7feVuLz3rN1Zua4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762871994; c=relaxed/simple;
	bh=8wHoijLMSWx5+0M5VO590RD8I5v1NvSvwN92DZFoRbc=;
	h=To:Subject:From:Message-Id:Date; b=BAhkRXaUI6wF5NfJe/hGFS2xTGMd45jBFLPxkJp0x22kER6Ead9b9uEVbV4aJ+0ICQdadKy9+YmW4gllKn7NvmjbIKfIzfMH0WRKbn1nJTB87indlOYukepn6N+uREqcR9oYzLWXSmgd3/DkW1sEni164rPT6iYk0/Xf+2cbGTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sX/41+bt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sX/41+bt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2C7C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762871993;
	bh=8wHoijLMSWx5+0M5VO590RD8I5v1NvSvwN92DZFoRbc=;
	h=To:Subject:From:Date:From;
	b=sX/41+btpOHN3zB/hRY9PXQuKcr4D19nqT56sgZ1DZNk++/ca5F2wNO/OUHE/TTP2
	 QIXJssoKSTN/O7BtN+HQFdzQIw1fbcZhglyKf7fxUX2NNunhOI37LrBJPjggU7YmPR
	 FWFbQoDiiH/dGeN4FD3CZGGeqqMUP3c2n0J5UAYx9fWix07zVMrOboBO+aMjw/f8Zu
	 jqe0baza1s5g8SsOvzwWg+dKAYc61b5gkwa4deBmZtnlw3YSqR3t7PVAxbonGuJsiO
	 NoxZayP/lRr4O6GtG7g/vpj2OZWfX0jcvO5ety1WxC8cKhcSHQlFuvhFtnhN7y/pIE
	 delZaLv5WEsVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E96CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287199358.25769.10816614900708714357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e957ba4ec1d3ba12b7c67171f9f72af27f1096a8238d0776f11b5a000ff4f00e
Date: Tue, 11 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762871993
