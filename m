Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F44E2114
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735846554; cv=none; b=MycmLJ5eMV7uImkuNBHsHYB9p2kSbfe9JlPw+7z2Tfp+3CGG83NoLr//uxIyxJgGTPZycJ9LEJTt4S3JyN5Us0XcviZLa4e9oo7O/S2Uw7Mnec2LFlgqnXTbRXM6OMUkL7JRImsNn5ZbVd+DxGqtx1IkfkaOkGpuAUR123OC5mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735846554; c=relaxed/simple;
	bh=3+v1XtpzL6ipNeCPCHdiYpRk38k8fBwkE3vAAxRGL9o=;
	h=To:Subject:From:Message-Id:Date; b=nTzgoj9ZI/3EG6ABUqjYpqeNZCHoKcaEUeyJ+J42F9mNEwLp40ToJ4nljek/cY0FGH/Fjc2Cl8d/Q+vZO10O8F5Qe/ISmMadwmNomewSkscMw9sef1O4uCr9NFQsZWX/KqUjhGWCh0hQ0xupFnTksNXhTvIZURDMQltOQ6vBDCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRKnxyvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRKnxyvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EF3C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735846553;
	bh=3+v1XtpzL6ipNeCPCHdiYpRk38k8fBwkE3vAAxRGL9o=;
	h=To:Subject:From:Date:From;
	b=pRKnxyvZO7JnSxGiPxFUfNv/AToeU3S0+eW8bJ+JPK2BuumTZOrc/siLZQhd+Bkmf
	 mfloMUmS5twhdMKH4bFDrCDONX2B7/Lces+/zkj28QM0oIQe+eG+FFY/chHtLkTagb
	 M5NR6vnn7D1r+Rko5jR+7gmmLFzLQjxdxqbfol5iBSbGirZSS1q0+KtNSZKwbgS2If
	 SF/8k7V721hk2KfWQBVK1TF7lgfSj0crVS297afPrBgMm+2LjUNvsuxtr9V47bSCUn
	 MCiQATbdC515/j0dKKKLIzBnOzJjBhNOhaw4UUsirKtMt7dS45LxkdzaJyRBegFVKW
	 OQD7YMcYYoyWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9030EE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173584655358.32645.17612252509409128625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbf175dafc1ff9b2e37a6773431b72bbf47adbe86f1467956486e21d0dd7110
Date: Thu, 02 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735846553
