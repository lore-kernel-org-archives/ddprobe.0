Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AA81B4236
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751923194; cv=none; b=qX2talNdgkI4F9FWDRP2+1zu/wO7nniEs8xDbg+ukhL8GNUsTZnwkMXR7TShstHYlrQEAm+WG2Zt6BVrnpGuo/AuJ6jDFoId5eHBAgpOXC5ySaUkFLGKivdJc6hN0DrxJMN3yl9MQMcGnA0pi/C9abdoT2LGWSibnqZ2v7N9O5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751923194; c=relaxed/simple;
	bh=fseOuxhA5iVlz9HF1rLJ9yO1KdUgrYAAdZaafAUOQHo=;
	h=To:Subject:From:Message-Id:Date; b=cVHGuGX8PxdQV2LfxMsZTLQDU9+SgO2mkxC2/2r+YTwa+jiCG4+are586XaoWDpyboN0k0stR7NX+2Rm/2Yx8Pcsp5PRva+1yIJHRkOJAVj/syoMjph7sNjAhGt5E0AVj3hSGBNQ2UUWx8Ukf2SoVoKDXzbI9z/u94S0M9EKWiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMvuebqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMvuebqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E817C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751923193;
	bh=fseOuxhA5iVlz9HF1rLJ9yO1KdUgrYAAdZaafAUOQHo=;
	h=To:Subject:From:Date:From;
	b=nMvuebqoffeOxs+EoYOH0718jaeNIqfjVpxnUFvrJ1wPfLAEW3SOjQDcFJZrcXWC3
	 mfgR9aNs/TS76T9RYonkfvGkuvA41i4iyqLS/K3uHSQkJ39ieabznfCK154BkrQazN
	 dG36rM/noN4y7KrY3Ym+oUYAAOw5tHoWqM8Q0IGsx9uLG5ckq4ei7QyaMtqgNxumqp
	 JwpRqtq0VLasDEwm9803t3bctWEaHmbey/p/sfS2N46krVZDrt9ixL3+fOuqASnRxC
	 dc2aZhPASlWwIisGEHiqr+wq1iPM2PoAJcXty3K6ZwFiqOyLR/IQocyGEQ8se8og/K
	 SN4JZH1jxUnTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B2C83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192319358.443.7333043877884425953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c508f778528c8d80cb6a2cb4d455e58de49a12ada4539c655c162daaf17a0b
Date: Mon, 07 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751923193
