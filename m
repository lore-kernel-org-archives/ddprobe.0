Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501AF1E511
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780274074; cv=none; b=KyVhvPP2RWPcIBBBSAVr6sB5Shsm1wu+iaKCsVPyl5jHBxqtZ8SYgZwp/ObP4ob9OfnVKQyYdxeyW0IgI+AamsVgV+yDOhcBzM0tEOCW7+uO3RDWqzdqwuBfPH8oTkydtaxV26sjko4K6bzt44pCPc6aWc7KIJ52+uqzKnfCLKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780274074; c=relaxed/simple;
	bh=J6zA9nF4ijBSJDwSC6sQt+ZDmSK+iHqoLNhCD+/vgko=;
	h=To:Subject:From:Message-Id:Date; b=FbL6tMaiE1kTGQIhHrUsUZZOlDK8KRh+hKs4rTQd8iHSC9B+SDW1iDGSTKsDinwYIvOzn9aAd7FQA+1h7wlBeQDvPvASfVygvYui1lcmiljtJgssBpsohNNbOkgu2T5QYCQzG/Ks94uvTiOfe11z68Qn1b3LDAz3D7PfiyTPeIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBM/xvwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBM/xvwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEAAC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780274073;
	bh=J6zA9nF4ijBSJDwSC6sQt+ZDmSK+iHqoLNhCD+/vgko=;
	h=To:Subject:From:Date:From;
	b=GBM/xvwia8yWtaIleuDbtIyVPJSCcyZIBNdRmvvGIWAUHVPqIMOHUi83bT9JLKzsP
	 RXhraAXa21TmwYzu9NhJB+Ajx1pAxJ/YyFUn2ipI5PitbA/90RLgz+Pwps7QfIcSeO
	 Gq+vEO8Co0DEyV3Cq6LAv0r2KYMM7/cvqdI00uCD5u83Qxz+7rcmgBrENGxoizcLhs
	 jxHWUGr/whLXh5BVo8LGnFBuoG0QQLmmXezOdFi1j8miqr83cUoDYhjFgGPFEI9Inh
	 96ufCkJj71INGpj5xz+N6jAe9kDdqrcXNiNISfpUdODKRYlEhpyBT6toONK5Vvr0Du
	 b//OyggPPniqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF31CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027407371.26439.10401090557284378255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58275df74fad62da56b90cc995216298ba8d98d6dc0ae2bd343ead301f7efac9
Date: Mon, 01 Jun 2026 00:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780274073
