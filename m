Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D3B36E470
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768938834; cv=none; b=MwWrL65l4aWHM1Cc8WUhDaHsxQx/1ZHQA/YYlu6SP2KdOz3fxfDWGuLaY5GlngH6afk/qbS0gkPWjp1m6vxCgL2dPkhDGtG3+lQiEgJeueWtwCLn9Yw8fgCEQBaDUB2aB3ix0767Vq2wf+Eh34KeRPhd7C4H2/E6r5I4p0oIUu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768938834; c=relaxed/simple;
	bh=+g0soqUCOw4dwFxmR4BW+eyj2aMEhD0qt4f6I9u40mA=;
	h=To:Subject:From:Message-Id:Date; b=UwOrDHYiHGl5bIqN6bbAuehYNT+9LYvKxbsgnXjMSykTwmh879WzhmGbrcHly92vVnMCNcDOl8HoAiaHP9nCu4e86Gm5NskyQcDNqs5WWXf6CqCaT20CjgpQVYOctVkujjJ7T7EyImDtgxK2o41SE/yXcXQqkVgyOQflzNMxuaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpaLmPaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpaLmPaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC6C19422
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768938833;
	bh=+g0soqUCOw4dwFxmR4BW+eyj2aMEhD0qt4f6I9u40mA=;
	h=To:Subject:From:Date:From;
	b=GpaLmPawAGuUaT4ybuKAjvSpfHW+x7W0wvNPeQjKcQ5WnTbwJkIN3croy/1ziAMQK
	 JIgg1VMc8Avxx7sOeK15nupqm4NMPLWm/UebtCn1OtrU6hQbT7ypK8l+pievAOqirZ
	 Cchy1CUuBIrpCPNO6hgcvB7mfvEgMJlHeaqWPFAZ+Hp8UDQ/+268bYm1ZRKllUBHgM
	 t6z7c+uZr/zqTAT6o4qZj6WsVREGgcuu7l7WJozcRZ9u+SngTKSwUQMrF0HC4V2Zpt
	 XQrN9pc5gCXyDg4JGpgS6oJFT8kJMWYUFDFKj3XU3fibujEXK3NzDudOxplGMxb6Pc
	 I57cs/22Lj3vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D50D2629A
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893883358.27349.12655705895826157868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793c94e2f2c4c7bae4223572237671a23b3ef749cbc2f7173c1e4c0c9b84c222
Date: Tue, 20 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768938833
