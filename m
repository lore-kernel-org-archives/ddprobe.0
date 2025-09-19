Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D84625487C
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758300594; cv=none; b=dvGkTEOyl3kvzmNowKRECtAGPLLZuit2xuuAtlZoX6pqGIMshiDfBeqnvkYohDqRuI48Snp+rXH7Drj6rVvlMi3UT0I3v6N6aLbQdCPVw7CxebH6TiL7dJbREtH55BnjLJmeC8No4UwbJOkQwB/km/pxCaZPALO7H7sAPRQHRFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758300594; c=relaxed/simple;
	bh=H9fIiYGpnfTpY4R7uhLE34AGIPwky5g6dOKPjEhVuo8=;
	h=To:Subject:From:Message-Id:Date; b=fazc8JYVAyjoC2Xp/s6sB+PsXP3AJ8nyZ4B20cvvBw7onmxAw5KMo94wcezA8JcjqUs4WnyKWR2g0saCRU6vDHG6SctHe+7IZYzEJRTTrVk60cWhVmK2wY2anBcUb6UP+gLgGiiC9a09LUTamPiViSQnaQp9MQ6sEbz7x5eTDYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQUGTezg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQUGTezg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF0DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758300593;
	bh=H9fIiYGpnfTpY4R7uhLE34AGIPwky5g6dOKPjEhVuo8=;
	h=To:Subject:From:Date:From;
	b=aQUGTezgtQf0hL4HbDkq19C+SeLCV9xKLVOPVGqUmVU2E1MuJelagGSxkR4ncyftP
	 xo2XtRIs6sOYPg8E1JdUIj9JCPKob/2Jyi7mgNnRXsAJYLf9U3wmPe9/I76VfBaHfO
	 HPY+E5LbCHVxJBwCJDhGNC/Q47TteDEsXupkgUY/xK9ggIqCqPXNQqsBKrMkyQ0+O1
	 Telks6pOyBi7PNpprlnpnmrPOUHABnPagdyLuu3dVIv8/kEaFT+uGwOrT5A3+psIK2
	 C+w5YR32DLjdCs+9F+u+dnntOpQgFOn0V1cHkYuNDb+vpJO17KqxLLEsm27hQIHoFO
	 LOpO/gxZLWeXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6FCCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830059362.7298.3087459471980344704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e8c4acc1a5bb0529932b2b29bdf929e420c5a9feb3c5ecfd64e7fdbe4021c5
Date: Fri, 19 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758300593
