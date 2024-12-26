Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3161381B9
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735239953; cv=none; b=TlD57AHMrPETAodM/lss1sA7fYXwECRFR0l5xuPXXWFFMsrY5X4pn23lt/v5A4EBHDwxmSsug6UschcSLpW9CgfRcwWC7A9GlNjqPx2gPTqfEMTeVUECGwPHQdTHVav52B6r50dxbrv6mYEQRBRPtbTWYPOXSNYQnCbEFZ6oovs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735239953; c=relaxed/simple;
	bh=vdK59yUxK+umDQ50aceSoCYl+cINkhjPrt1fadcPzq4=;
	h=To:Subject:From:Message-Id:Date; b=XrscKpTpB+bXiNbRI8i2OSPw4r3fFYrqLA+nSDlNQx9lvrHoTtxptr7Kv0q0KiLOyJywG9Yhh/JfAxJh6keNj/rqT8wEY2s0rJ03cdGsJstv9e8b8e52lSjydieiO5o5VaGf8wtGfylR7Dg7RcNLq/Z3q9Lp7N/I3QRpbyPvk8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kn2nXRzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kn2nXRzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D47C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735239953;
	bh=vdK59yUxK+umDQ50aceSoCYl+cINkhjPrt1fadcPzq4=;
	h=To:Subject:From:Date:From;
	b=kn2nXRzwnzlV3nnGX2k//ELVkmU9C+3FpgpscHX5bESLPLTOE6kDz3DsQMcuvBpJE
	 Dkk1ikWmaspcjbf4dx7K81IhDv0b+qs81sE/PIvXZVya40ScH/CwLJzobEWexTvpIG
	 fa/JwDUr9fwMap5a5x73YeyiR1GcNHIwRmbjwMon4LXkr9PYCRN4iYvM2T4EGoZKOY
	 2ylWIzPTirCw1hsy93o36cQ54jgSavfNSNXx24sNZH3C8P7qm+wK24GHcrSrbfOYJR
	 NIOeBt/RVJoyZWLXziMutGcf3hRO+vI4vVV4047lGNXUjtJ38ik/2KuQQG2jlZ87Tn
	 4uLuGmsbWvWCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9453DE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173523995358.7789.10481235216923951952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f329a182da47c2c43c585be7f1b320b633f5e9d43931cb86bb975ef82ad90cf
Date: Thu, 26 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735239953
