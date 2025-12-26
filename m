Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2686D2B2DA
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766793234; cv=none; b=mhp3ufY6wFEAFDIJHAyiEVkyKhvZx5EMWrSIP9rBvOJe8uIgzEZD9jkfKr4QehiJ3IoTUt5MnbMbMmp1Q301C1sB3cWnw2pz6VLmrahUgUGxjo0dBwj3dvpdSBYxj1aHY6J3CedPklIrprK9SaVxy62DUp3JKe9822l0+YLWMSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766793234; c=relaxed/simple;
	bh=uN8EPL3AC48BZIGTDzXM4RYlZAdQ9k3yNxrFbSeTEvg=;
	h=To:Subject:From:Message-Id:Date; b=XlRzi+bp3gdXOKmNvs9LGSzFb+KZYOYmNuKSvDWEZMKwOmBT1Ij7ja59VkCQ3zsLpNnPVWijRE3GAWvMa1kst/C0PKUNjT2olZQ5NNhCGM603hUsGslBKP22Kcz453cJ2f+t2/hEwvQd6L8sWAKF/2xL+XADNwUyqYukQu0rQ0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrzDGQkS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrzDGQkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4CFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766793233;
	bh=uN8EPL3AC48BZIGTDzXM4RYlZAdQ9k3yNxrFbSeTEvg=;
	h=To:Subject:From:Date:From;
	b=NrzDGQkS36MgN7eBNR+vYITjwp1Z8E3xK9Qy56S+u6BqOLSkVylg9WYjvcT3KXIIU
	 sRDHwwIS0lAwUSMbbDd/7r9+zjE9DzPZEJ1GsrRcTunDIeHA9BBeD4aoJBPpFKqpCx
	 uSxwoKa7BuNiojOvc73P0Ki4E2cedcBlcVtL8XqeR4mu21gM2Me9+IGaJcGZxsRAUR
	 +CbSoP563aow/8sC5vWD+JkmrKjsIguckYEsrJuJtVWcKciCXuCXvxy0F2nJ8LRQ/7
	 lv52Vr4KxrfGvHP/Jx1ePh6PMt2xkPzB3AKCF6BDdcOEWSn+oWHEHfC3CclUEZvVUP
	 QcZIBHhSthEqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95006E8FDB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679323359.2859.17991604853652608533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab089870dda9f83c1e6aecca6a28ae843dc6a2a74fbfd37282feb29e112cfcc
Date: Fri, 26 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766793233
