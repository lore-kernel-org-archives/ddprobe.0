Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F141A00EC
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736150754; cv=none; b=pCBo+KNMgTrlCjQ+E+t25dEHcm1qH8RbgzFsmLq4ENActCMBdK1VzqIguzaHy6kVlkKSa3of9IWaNlXDEzVOBh+aKSxOPX47vbjCPP4N/UiwkNZuK7DiSOhAwnI7caDehLa7o4zC8QlKDME5Yd1ACRAsGPr73l2SOeLz/02pEqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736150754; c=relaxed/simple;
	bh=7myF0lgWqOaK0oRjsrrcj5t6qhsM6o2CKODhErezyv8=;
	h=To:Subject:From:Message-Id:Date; b=IpIAZE/yip/I2jgpwyaKxpVEWwKylat/MO3r4KJOaAOQmRPqsKPWkNuH5fQJxjrf/v/lC3W9sLRc6EWsHTaZT+BCDCEyynxeDIkkaxBOLvlPcZmgwKNkXsAHVao8b3sFDTJYGnVwvXH3vMEVAFiOvDmtz7Lppn1x8C1t7And3tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNxyvspX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNxyvspX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F509C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736150753;
	bh=7myF0lgWqOaK0oRjsrrcj5t6qhsM6o2CKODhErezyv8=;
	h=To:Subject:From:Date:From;
	b=YNxyvspXd/BVmXkodE9bZmMfA+8cu1WY0/xFt57VpF89AywRipQUoEKJWpM5Dn6KL
	 z0HhlqSoasx4/ItF4vSp+lZIyilr+vmj38xOfrxZQfxguHtlNnJwkeA9XZcpTmhpDE
	 kbzImc/t5zViowbGY07ScsY6dvABu9YbsttmwCSxtIWNRNHVo0WOSuUUJhLiHPclnQ
	 C0BL0AiBf3gqRXvuZmkomgXoSbXx3npW+cz44CDLZ6dKu70YeurumTyHnj//bf5n9Z
	 lUWGl+lP0qiaeUAc/6Pvr1GJwbJqIq8OXW+s/4w77NAJ74NrxR1mB1O7afH3v1Jr7N
	 Ol/32s2oBuukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E36FE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615075357.29652.12803830399331094542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d569f7a06fa2058b15da30b9925c5f3d203daa5554858de381abdc29453202
Date: Mon, 06 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736150753
