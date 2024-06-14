Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919CC143C7A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718401103; cv=none; b=iTfRtkuSVMiNrkQQrs+m7KHUE0ku+5VndDocwOgqNV+qxBOpVBkNAupvLUyBLSBsrJnVsmi6NyO2o1RPI4OCXTEeXaqLPHBwkEfB+MLfVUwbfduTUf6Dm5/mrY7JPZqijuzm/kb+Swrn55C+AK5bezNBFSa0XRanAKDy91tXOIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718401103; c=relaxed/simple;
	bh=OSBJoQF8q5kJLgz3HtgeO6+SyHCLUFO3qRhOvcVnqkg=;
	h=To:Subject:From:Message-Id:Date; b=qlgz1rKw3blcEOWhMI6tCEPz1oq3fHBCxJQJsXNG0imZvYYtb1Kd0oVFXIVRmVmMrORp4vLbaGyWghPNb+rs7WcLELrLsKGlaTKzDWFgd0l310ZrqWOQ1cKZ/3aSUwdu5uM1nLfhsBUOj+EXVxL29ROfU3gACqeAYlx0ZSc35Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1/J/+mV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1/J/+mV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8287C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718401102;
	bh=OSBJoQF8q5kJLgz3HtgeO6+SyHCLUFO3qRhOvcVnqkg=;
	h=To:Subject:From:Date:From;
	b=r1/J/+mVMZBD4RQSlhognsKjQS9RPCiQvBTgm3tLyH2N7jGABjceGdYl3Si77UYoQ
	 UurgzYHdqi4Nl3vNLoteF2EoTnGxDmtYAi+TANYQ+xJ3jGNM4CeBHgpRvcBpf01wUD
	 +NHKFZRS4wkz7hZiA2ZCHcjFMTZWSCTnJSjJrc56G2qt4GsThgwselHz+5Zz+sx0zt
	 l+VSU7252MqW9e5ei6h8Eem0piHefGVFP4o8IVAN+9nImCIkzAUAiC1lXKQRoEP2ti
	 k3m7HuW1Sb6mAzPga+ilS/NLPtmRgG3CTuW4aD6xq9kMQHZnzqDLlJ3jM35fRFS5bg
	 T4Usmpqpg23rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4043C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840110278.31502.11272186934235401249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7414329d0a660ecb702b8d36f265da0f436a67e62b32411b8e7b638a623f4cea
Date: Fri, 14 Jun 2024 21:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718401102
