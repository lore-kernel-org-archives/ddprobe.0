Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3437A8003F
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722327354; cv=none; b=SbPhRRfes/6XT3Of+KewVmlk+AoGeoilVOIzuK/zQ3b+wie7JzN8NmFgw2K7yrmytxl3xJzTYxQnz3KTHU1QlZH4k0jqNuEmhTycN38gOBfE++TSsvzUkQdJ2FZB8o4/iMfUh7mTFTXxPpCNwQN/P9FMnj8zx/GmwYQJdk7lkg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722327354; c=relaxed/simple;
	bh=wEGK1tUz1YvgGT0x16ldPPoZ//QQDMIq9sEuB2UlHSk=;
	h=To:Subject:From:Message-Id:Date; b=i+T1hDxj4+iGr0storzELysxpeAiHUCMqzQe8pGRZrfy1Ptil1r4KghIvRTQ/+y4V2egcTdFIOaxVdNVcYy4qeTvLR5X9NvAASQdkumhaINfF0j9KAhqVMUDCAQL9nz/tfuRQb9o8vun60S0JBSdyeylwj0cRDPgNtjhQn7IRiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzBjmiOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzBjmiOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2431C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722327353;
	bh=wEGK1tUz1YvgGT0x16ldPPoZ//QQDMIq9sEuB2UlHSk=;
	h=To:Subject:From:Date:From;
	b=NzBjmiOj5HH/kBIEedMzj80ednlRmPuBE/zdvlfqF9/sw1wUwS4dnsRqxeV3mX6Qu
	 hZQkNVY/W+HvexDZxV/0CfZ1fxyUEI28CpddxkPXbsRQRHSzEWKJ0hFucjOSE/YQvz
	 Qkd3XLQRHSBydFBoII0EglhTyW26yF3q7qYHXvBqJ1lZwDpU4VKz6Zc1euKf3yW9z0
	 /piHcFfoU0pEo5ZNV7YOaTakoIBp0uULEKlHt3tPhu7O72hUKLwEWC3Acvj3LB01hT
	 vlhnOX0jzUnTO7nzd/eRWnCmIIo7txQYoawNTrdel76XH0TSNUzKLgnCfmVOcVNZEu
	 ee7i2zONoyJFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DAC3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172232735357.27339.7820608441661449978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 184f9ff7e9d3190aee3586560ca9296a105911ea2139294b541f3fa253d29349
Date: Tue, 30 Jul 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722327353
