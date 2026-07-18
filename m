Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E6735972
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784340514; cv=none; b=Fyk39K0/m5BDjVQ4LFEsLEA0wonRJXnVNjYAjzVkAnXI1TDug52WLstCNHmwB3H+PbHz7FzdZELVtZOX+L3xvFGFA8yFSCrVjrsY50jBGDrwfY4VZMYWBihKyexmmyMG5lVrfu8GcYqmqxloX2M41YskW5nNQWm7lFXIrb5KpgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784340514; c=relaxed/simple;
	bh=I2u5LELzQrt6yqr/UtAao7+2I1ph4VB2iLJkh1onTlE=;
	h=To:Subject:From:Message-Id:Date; b=Sai62DjrSS34YiYa7dm9vfOeD34IhbFo/RXcO9dSb0eZSMHSyFlqX+hvgjUek+IHUSFMdXqaeYbdp8blYOGoUi9UuIxLSzCmWXsegf7JZxrsE5yIdkGacEGKE5AMgXl7TJSBiGSshjVQKZDY+5IDvznpuEBEeyIvNtoq60Vqqwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZ0Wa1Jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZ0Wa1Jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1ECBC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784340513;
	bh=I2u5LELzQrt6yqr/UtAao7+2I1ph4VB2iLJkh1onTlE=;
	h=To:Subject:From:Date:From;
	b=PZ0Wa1JfAgQJZNGwBhER4OxdoEKuCJjWKjRdg1jutD9MfsCcsQcnSR8eHXe053Mrj
	 OzLHNb5gVjInnFJd0xH6a7TqwnFIlnEVQ1qn2OfEUNX+mJEGcyx628rVC1k/HjJPk8
	 bHFXeXnZw2LO+O+/eUdwDb3DvhxC3zkSN8WSWFxOho05yFPNrS118dIbiHIwM6toQl
	 FJfVGjdxOib08s6oKAE/DJzZtysmnJhw14GO1qjUjh+/RKQ3GnJH9a8T9Y+TvQqGNP
	 QlSZivXjtmzJoI+/QTNN8u0DYMLy/CaByyUu/A0KTphnOwxTyG1kkKmRuVc8ENYnOz
	 6uVSVaj/zOHMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE11C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434051373.26776.749587391679685479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825d5c214305afa61553dc8bb10ddd6a53a3fac07f29e52f6cdc09cb18679954
Date: Sat, 18 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784340513
