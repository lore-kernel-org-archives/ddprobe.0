Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD584F053B
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790014834; cv=none; b=NbxH7zj/0/dwEQTFCwRW3U4NXQhsngkaXLPia41MoGk2hv+gv2cjX0SaLlU9dHSP7FA7VW7gkgcmSQTKjdq7vrBKUpI3yDx8AQMXinUla+4K/+aE7K0+RG+JXXkJWFlb34yCi9+5VS/D3OLrjj+TGWzJEsMQY6y/NTHcodnmR1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790014834; c=relaxed/simple;
	bh=fKM5CC5XWZrlDNxbiwzdQMSlfccibvrdqYUN8uVQZig=;
	h=To:Subject:From:Message-Id:Date; b=JAOLGrhxqVcVBKeh9V6B9/+xb850OSrISRYJ0a+jhTPFpwBCByOwZ++zSWjHUA5KHtMELInubZcNY+JYzbkCTJ7XE9xRX3g30eVUGw35LFw8WbKnyOIWQCdXvNHLqjz141Eoigub5HtyBM/P/01TwMf0kmYVB3WjKrFoQtiHV/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVU1Zv0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVU1Zv0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C990FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790014833;
	bh=fKM5CC5XWZrlDNxbiwzdQMSlfccibvrdqYUN8uVQZig=;
	h=To:Subject:From:Date:From;
	b=CVU1Zv0FP1NlR9lobjO7ZNL0I1b7afRDRzOnMVA6O4+KK1qFKF7XWZJevVwEesdso
	 ONG5c1E/JjDv2yU4dfhDdm1PDp3MFdNDvNIsRWyB2HAFX622PUtGJZhzeuP6P9eLYb
	 IigtZait+n8og09mERFbDs5jKbGgqzlrKyXeXmdTb0CUTyiovWZwDma3N2O00zsDvL
	 wZfWVkVOjBm2annc8dK1XqVvLBmxDSttIb1sKr6nClL818C3DDPfw2lEz4Y2MpNGqn
	 E5bQ81fmxvjmx9T5Fs8gJF6bBEki68Xl/wGAROhuYg5DR8hen+xiztOdCrMPenauzc
	 P1szupMiQc3cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64C3C982EE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001483373.29272.12549346595743533649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4964aa14c885f9d94a34e517051c1b9d128b49dbe1d03793db36cc50c67645
Date: Mon, 21 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790014833
