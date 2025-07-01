Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119C33D69
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751385594; cv=none; b=NvzFlgOQaamwJKNMT3U+Y7GbEglTcZWQ7zHi785atjn9Gw/NXX545CZima8tmxzPf9XgdrejgFJ+EUoJQ3gnmouqLI9Q4xuVx27+cirRtQCzuWUPabk8aMkTxtDOgjjOCAaVSmnB/SyteahQLo/F43T14LUzwrnX3l9cT5G1Tco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751385594; c=relaxed/simple;
	bh=sFCc2Pp6xXztO+3u0Gt8p2a2fFDn2Euqyg1fzBnLxo4=;
	h=To:Subject:From:Message-Id:Date; b=WpumzVzOZPWnkRkLWu5nC421WUUEMDU3f6mVN1FNKGYWN6i/0jicEZilq/SL3EhJ/tdfmMegxxsgjQVZj3Jd4u4rSMwD4+IrQ7IWlHvzVuFQdNgmzC/uTElNs/cg0x0leoQpukVUTvuQX8OAxpGhjY4hJf+d21oejS7lK8VQsdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CR6Ke+t0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CR6Ke+t0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEE1C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751385593;
	bh=sFCc2Pp6xXztO+3u0Gt8p2a2fFDn2Euqyg1fzBnLxo4=;
	h=To:Subject:From:Date:From;
	b=CR6Ke+t04Uih9yvXhP9Qtn4ACMcuATxcxOozOWLk8QAypLLxy21yNsoZnE4GMB/0G
	 6qgIM1UmUNZ4GbitDySAWGd1ZHxBVyk2zWcT0g54cYPUe9p+oy3Wk/59HJhbMBTYUJ
	 RA4IiGIGBK4K3pU7hE7crBin6F4YC35VDTaAgvjjLNGWiS25dMlIe3Q+rMcK/O/W2e
	 JSqqyfzkx47ae2SFJjcn/GgCxFj0Qn8H3m8ucJFRfCafTp9HkL0HMXLyY8ocStcRz3
	 BZnwjTParSrCSQFRp4kDukinl5KyKNPv8D9derkaZqa9QUXco3JfT7eM27o4HaBUzn
	 wOMPqyCa0h8Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA7C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138559357.27166.9976753544000258944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f174eea8871a78241d00331f59d4c2f3a52e7165f8bbfaad157659e91ceb24
Date: Tue, 01 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751385593
