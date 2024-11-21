Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF932309B6
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732168554; cv=none; b=bmc/lPm5tRjWxXc3Ej4+6y3SyRsmfxguFmgQbQ5GGwr8DjK3eoUj/qmtljRdENjONA8kHRIFJmTg+Avep6VlNJQgDRgz86myxX3ZWwlfM5GRfyZEWYAuZmyRtJq5NSaXgQ7HrZijnKTLnOeTqBTmEQwrA/EvC54KSoA33REygqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732168554; c=relaxed/simple;
	bh=rEm1kDWciB5imaIu2knV2ak9NTRHa77Gnb2E8unOtG0=;
	h=To:Subject:From:Message-Id:Date; b=MW7y6zAKMvhUDB78iK4R9DPnMBk2GA8NeEpUSXGTR5/X0RfqEvo+2Z7vXHoY0GurVj7VATVWHrUw7k084AI/Akq1PTq3Vpl4tA9T0OOxZVVpO4hGtMA5B8bxjrddMRvMI/B+PqFxkFRiDYA33UEUmHkGSalP9HcPToF8Bph2+zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuDzS6D0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuDzS6D0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2BAC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732168553;
	bh=rEm1kDWciB5imaIu2knV2ak9NTRHa77Gnb2E8unOtG0=;
	h=To:Subject:From:Date:From;
	b=KuDzS6D0NH48LizFfemKIYK7FXFB+YsMIeyztyCUb6vRyBlP6edHekAi+hn1x6ye7
	 1C3564J1cZnXb26llZNWOi2+fK+D2lKPxuO6a7AWQVz3BFVSgmAl4gQ+V+IyUVLTo0
	 JAN0f7xQunyvLXzw8SJZQascvRswpJR5x3K0748pbVLWaAE3/6acku86IrC6I6dwfA
	 kfPDJP1D8aWWzfc4lUGd9Qki9G3r3GnA8s11Km61l4+Tk7oHxrvT+7fzk6m81IQgds
	 CjjbeFptBbnFF6XER1oV90CSJa1H4izUaIiZWPBYG5k5TUHpIFch1pq89idJ4xTw6b
	 7/iGMyzmK3TmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5A4D75BBB
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173216855362.16166.18206411400440026694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff3a4e9651339a980143a69517020ad45a5c4b20d78b54492647f089e444c02
Date: Thu, 21 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732168553
