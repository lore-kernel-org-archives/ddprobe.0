Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E101ACED5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768619033; cv=none; b=LudX6VHTu3pWfE6ih45NjAHsxVWrQu187REA1meRgq7xmSHOMQh+LT11WDdpDzjzGePQppZe3mP+dOLgD3I1nTcibxTIfpW1b7QzpgvxYW8oDCQ51aM4oaQC1mF7Yaz6RpDRqSpVECqmRbPq4EYvpKLjIMunKXT7aoDSxeZC50A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768619033; c=relaxed/simple;
	bh=l6V6RQvCBze0siqTwUTUlYgUdv5kt1JPUNNLrP5y7X0=;
	h=To:Subject:From:Message-Id:Date; b=Mx3YcDhkwOkIrEnQ9XRtF69hGsXQGvwBovHhUrwbTVlNuh9Y7c0GQizATjhz3gpiNHIlZUhRXFgF/yQKLvUvZFAWqXqLBgCKrlwiwtOJTTvff6RmtoO74hgzImEWCY7nsDxI5r6uH0D32aDctCOSa7oCiWDEEzN5Es06tvvP/xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ic9463dG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ic9463dG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B0C116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768619033;
	bh=l6V6RQvCBze0siqTwUTUlYgUdv5kt1JPUNNLrP5y7X0=;
	h=To:Subject:From:Date:From;
	b=ic9463dGclww3P3z1dlGc353cSxW1B4i/a30d7HbMzLevmz2361GdMe3PaRboBD1x
	 MmVRn0DbRu1xrYRwRLoaozVyvFvivBYg0gHR/TbQQfJ/a0DbzwLNfSi0f2/y8GoOvC
	 O+x21OEb30R3usk7Tmiboxy9TAY/O2uaEcmYFeTbFrfWipBon5lLRsUM6ujvaLPcY/
	 V36qI+hyqov0w2HtWPUJuXrZ7yz6hv0QhdXBnnmVpM1mRaG7UcZprZlQUBJj1gDgfr
	 gJ193+yKisJXse0Gwsaco8Hy/EDjmiWz0dZRw2ntFoAn7Nxg7VB9oQrFUwy9rAKSZ1
	 PDQVll+E7NrpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D19C9830C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861903360.9036.7181712831129591217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8bb5d04a2f184d9f5c2f7d98d247925abc7c65094800da54828f92c167cd92a
Date: Sat, 17 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768619033
