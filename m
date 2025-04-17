Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C0C1FBEA2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744928394; cv=none; b=jV52Vb5iZRjbwBcQmoFr8sO5NP5VLl8G4o8MvHcPVRSwvY1hxG7/nYYu+8BZ8qD5d9gveBxked8WEFDlWqDyfL6I6wKjv28RJI+4DXLJLNeNatpD9/1/t6+2Yo3smXvE373b8++8Tp2EePeH6aOVfj1zPRAtznZESTLf6/EMZ9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744928394; c=relaxed/simple;
	bh=xMQiIHJnBpBsh5GyBRR7ZiHo5LGDnlmlx8w2lEa8IHE=;
	h=To:Subject:From:Message-Id:Date; b=S3AjvfRLpcs+p8an9HQx9wXuG4kiggeV4cQkQJ4JTKbkf9VEMdlnp/BG5w6+Fyprx28rEuQUF2MnmZ/6f6HYNeu2L7SC/FQ7cPljXk7C8bEhTzPpxZbNiaumRdT3CmX086SH/3CJVm3N5bQuE5falK+BVW+x2h7Ln8sunDHJh2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAjyvdJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAjyvdJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F3AC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744928393;
	bh=xMQiIHJnBpBsh5GyBRR7ZiHo5LGDnlmlx8w2lEa8IHE=;
	h=To:Subject:From:Date:From;
	b=jAjyvdJJoDbtp2QDSbPEUm69XeTY3e5j3K3l2F1ZiCpKB0e8hn1/LjNXmsvsh/zMI
	 JZpRwTHNhHvSGKphx8c9lRqVeTz3MAXZcoIH0JyMXRbPFkSHtsiJre8dy4CY/7v5ag
	 aAeTxKlRX8x8JGmn/xA12WAjDhVHV8m1J0WaUiQRBFuMSLZkjeX9A9XdL+f3EUarwe
	 vXDRwyLWADtA6mX38KOh+214BqlTxK+F2GqaMi9UaILcYfABZE3YfLuM97E8wjY5Qv
	 Ap6cgy2o0lPF3Sqxgtz58jN3rbGEUUVQU1Nw7/6s2hLAdvUeh3XgB0R9zvjtRMwNrB
	 Gw27ZJyvVGjtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC46EC369CA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492839366.3051.2925035977108212081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2f9f8207be7b1156f498f3c24bef473849ee433f904306186512cd06a855ac
Date: Thu, 17 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744928393
