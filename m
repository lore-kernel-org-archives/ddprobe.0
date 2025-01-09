Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2900012B17C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736390154; cv=none; b=TibhY3z0NoR3jJbNFY8v8qpNSUcEv/SUgYsAGGwP0HkazaRcifhWozA3lvK1XstEXD0uz6tl3brcmnZXv7DXEt1ncJFBVJOPyg4DhNiBaEiRyknwlnZv3UePwkc1Q2qr5C5/OvvVFivZU/K0WaLzGtpmFFLIvWedMLHarYsv+aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736390154; c=relaxed/simple;
	bh=vTlYGgqCaxays9WQTmwlbd+Rm8HbMVi5ndJ6IKTCmqI=;
	h=To:Subject:From:Message-Id:Date; b=W85Hb4JK/YY6UOwR4MmxjcBhacWteAl2Nu/Nj99GA8uXb/bX2CIXePsCjmA5OmfXxQMDPV2gUTOCilqvS2euvuGZIssSdLSv0WlTnerwY0mpmEPabQg1LD1Q6G50Kc/XN0xRvUI8nORcw/1afbUPUkEsnRh71MeY6Jk1ENkhwCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mn3uz1w4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mn3uz1w4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6863C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736390153;
	bh=vTlYGgqCaxays9WQTmwlbd+Rm8HbMVi5ndJ6IKTCmqI=;
	h=To:Subject:From:Date:From;
	b=mn3uz1w4Y7p7o+YD7Ub9hDcoXfbwuI427gY5rMxW/kl3IZXFwoBRCqTkEOWaBfVAm
	 0/fZZQTKhtqfkTrD8oKrWMVSbaQkHiR/akxRZPYUK5K7ykmWsP+LR158p0nw328p/r
	 mxhPLy0sXwSv9pOnaFrnb82WzmPPAsfXplImUPM7jkVudGEIkDa+/JFcv9zUVyAvVy
	 FGJEiJE9yY2KbLn6NnJnOx2DCaFPrSnKpKqfhJ9+3HyWmgD1rB+3UaqW8toRiwEdxL
	 EIRSLa7ZKRtrDU0SGnzX8nCja5JwVud1WMHpuMGgF/Kx2l5lsxiikCiNZlDJm6iNKS
	 tqzcHhoj7HxJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B65E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639015359.8854.13111491499228554205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af724d955a2a78f88f84b1fa445293cc24e29df63c5b8800648a8ed1675a204
Date: Thu, 09 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736390153
