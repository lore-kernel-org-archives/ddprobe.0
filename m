Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439744825A2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791866434; cv=none; b=MNtbajcJLL4v/Er/hyNL8z9Z4ROjjWKq4CqTC9AKLEdgufWpi6bvjHLwfPNgJ61XiIFJyDUeqyswrkRRo4X0R5moKl1SoCiNq+D04gy8ALseKaXES2Z3CFMePJPMgX8n56P6HwvNhWkXNz2YVZrvcqP6mjwiFQi98KsjROhy2VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791866434; c=relaxed/simple;
	bh=r8mQ0tzIhfezo0zokCtbUFIN9LwyF2q+Jrmi0RTCUuc=;
	h=To:Subject:From:Message-Id:Date; b=ab/Xt30Gj1MRl6PYo6t3ggC4kaW8k7xzHHRvxIUe/9yu54kiXjuAX/LH2j4e79yvfVVSN0x60qZx7x4SFYRd+k3mW2Q4KlqPEXTQ9tC+k454QHqpKxOQ1pI8T6umncRDZTNyb+OnBPTjelBtkKIvJOElTwHmU93a50+qS3KJ+Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKhk5xcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKhk5xcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B6AC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791866433;
	bh=r8mQ0tzIhfezo0zokCtbUFIN9LwyF2q+Jrmi0RTCUuc=;
	h=To:Subject:From:Date:From;
	b=WKhk5xcZGl/tLoquHMqXkM2WA/F3YLwRt3qi6HD33urkaiCLJsvxY6JXzJYO/xNXu
	 xjgSyjZLj80byADlX1sNYLk8vuntoOVJYSvxDWB1Q7NilSX20yljqH4O2H7Ny7HITJ
	 jw5QsWCG0cAWySe8O1Y0YpSZ4O9SZzDPKYo5lkopRHbk1/9LZ9A2oobfR62GvqaugZ
	 cwFuyFqWadMWBIRdvbDFUqevXlJBImoaPopZdWZL6ihBBtdY6ulf13HV/HfwSv8Aqz
	 sZoDUUhIP4A2rP3q8+l40046EuEyWNOPCEdp0+cAsB8WMaKGjshQy5BHsdWg5FoXtJ
	 LaQCTk0wvclVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD83DCA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186643369.1533.4007891687692617841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46089967d7d033a5600ef723a3d087c134e05b1d3b4273af8c8cb4a24d8cdce1
Date: Tue, 13 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791866433
