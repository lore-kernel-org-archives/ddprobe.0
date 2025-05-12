Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE5B433CB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747036193; cv=none; b=HVI1z4H4IRv5rhXUTKFWLqaoYROYhXgbegt/LVI0s46vbuURVXXVrsQMn90LlDRbEbLhyV5gEXWNbIWaeNBlDt13HYCjXedpdBwE4bhjs5g6mdsOMNm2tFVyw9b3nQA+CcpgYI1XxOqCGrgwKXKWY5FzCo9rSEigoBMz1/gJb0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747036193; c=relaxed/simple;
	bh=FfNikvhFSo/QTfZSfDOThaSqt9UcjFne8nz6S9FD5h4=;
	h=To:Subject:From:Message-Id:Date; b=Eu9dUHgZQDmHsl3gUDSWJ2ndG3g4XmCh1Xyxwzlfu93AtcNUKrEMHwN1S/y3VqgwwhXw8leR+PZhYV6aRPBFV627OmQ/Vu7mCFdJZeavXTZZsgD7BdKe0Vp+Md1bL4yb9nJzo/VyPp7GVntoAtCG2XNlpcp+rHSULcM/3jTonCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9p4uG33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9p4uG33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E444C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747036193;
	bh=FfNikvhFSo/QTfZSfDOThaSqt9UcjFne8nz6S9FD5h4=;
	h=To:Subject:From:Date:From;
	b=V9p4uG33Jz+cqqCAfebOGh1SZfYKqe/Q7i3IHw1TJvBccrurzg3vGgOP+0Qs4jAsP
	 i+EvmW95azhX1hNqJOIN8Qu88Sl/IExajp78IGei/C9mbcoL73VcKyRfylrXk2vG/3
	 /Y3MfwZNBaGtLW7YODNHc5XYazRyNZ92P9Gmb7H9t3YV2SKyrrNMLLToG1BEJ0Znwn
	 pkvt62rfBBhFpc+8888sE4YeuCpcf3b4POOLMZUz5IlqIMFGR0VUjRYV3w5/Bg2VCA
	 qUX0580rOY03mMOParx4wG/S2d80s5FhgrrWumypHx5ZodPBzIyzWCBtjTKAAXG8k6
	 xetB789DJ3ggA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B2C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703619357.27628.863757749444835064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da0e92da1746499742774ced62a5b02a583232f4c8a661af3e4950f2a06076a
Date: Mon, 12 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747036193
