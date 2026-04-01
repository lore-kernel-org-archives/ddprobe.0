Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A76329C7B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775054134; cv=none; b=qkAaqdKnM1UtQfAlCuZ6iU6l8T971kT7LNy0UJoDfaboCkYTkRwD3qgnD1UiBKhVDTRMF5jF9uSNmQt8rGB6d1Ab02mMusUDVnm4VjdeB0WQHn3agLSpVZdZ7qtoLVqVQgipItUu8693MlXLxQ45wg3L4YRBOMGCuNCVZXYj3Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775054134; c=relaxed/simple;
	bh=jkd7i9Cht7XgPhTJOz9oiEaf3qTcLJBTFT02Obw5NVQ=;
	h=To:Subject:From:Message-Id:Date; b=FpYfJhz0Vh9ENeTzxZkYUFf1cVt9lAJ+DZpZWeCz75ljn2do77oB8SjO83tcBIvwAYjSeIfi+2fl47ZY0QJ3EW/5wnhGFK2w9l6RCbxBR6EfWnfZ/EAvd0mtYo+6GNIarv04vuyrfYWb4u3wgE1ImAGKzbBo29IfRaePTCczmrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZF6BIQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZF6BIQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1A3C19421
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775054133;
	bh=jkd7i9Cht7XgPhTJOz9oiEaf3qTcLJBTFT02Obw5NVQ=;
	h=To:Subject:From:Date:From;
	b=mZF6BIQHjhixoinUYCNfWWKGJyksoePYu/nOOK3Zd8gzCqrGMLT3A0+RPKMTiRjGT
	 ae+5pfizcmiKaaTrlVQDSG3ENWtFIHyuhvbU4+QbQEaZhevaBp3vvnhf/JkUX7cwF7
	 GHX/CLzwWf9r/LsYUXU8SJCX+6+0QoxtW8KMlGgDqptPPNfC8q78tTK+KfZRsh+ybr
	 aLTsgEa6Fi2ivCwhn38JEIDlTsD/q77TivPZzb44IpqyNZpEKRFG2gU2MlR0NObFCJ
	 yrjVypVqb594Odxd5S04LGwZ1FbZrWinW2t1M+HUd9jHH6DkB/zRjNTATnLQYkDTGb
	 1IH5FPs5H1Axw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6B7107637F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505413369.23555.6514597958405092148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb580e14af4ab6e97e9e5a06ab7b92f4c0bdf1091eee5b2101c9e794f1dd4f24
Date: Wed, 01 Apr 2026 14:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775054133
