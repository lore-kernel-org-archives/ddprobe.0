Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E4C10FD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736901354; cv=none; b=s7b4V3K7gYAJWrOMzLfwUNbbriBFpjtuDsmL27dDZXUVHeEk62zQONzmai9KIh/m3G17Tl0bZez+uxMJ9LjXDJaSGwEaqd8hSKk7z1LbYv1Oid3w0iwrfkKfOHtG3OFXs82wwRFWqNZPblrO8GJM/BsuxGJYJ1y/McuVDQPHD9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736901354; c=relaxed/simple;
	bh=3RS7pyaFTlaoYfLDZlET0uAleYV/K6Y+rRuF1vNfqIc=;
	h=To:Subject:From:Message-Id:Date; b=DpgybUv+aCCUAUpqDRqEuv2VvK5fhg1azgHbX7cy07Poa3FpcrxloqKWI3kuAMo950KugyxL75a3MklJ+6GSjywJUo20Jonz5ynW62aJGMJRMA9/FUlrUYxB6uc6KO2kFIMsNn+k/c3Yp/F3HQ8kwKceVavDwfaAirT/LiiBwrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJxGXrkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJxGXrkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5ACCC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736901353;
	bh=3RS7pyaFTlaoYfLDZlET0uAleYV/K6Y+rRuF1vNfqIc=;
	h=To:Subject:From:Date:From;
	b=kJxGXrkZJxh7vZWdR9ytd24Qt0d3MoMZ6Aesr4UmOI2nUfpw7vEqQg5rNV8kunaTq
	 sdhZ1nk9jcBc9yqpAfrsqzT5xTAvWUjJVkGp4aeO/FSk7yaZQCb6IBXuMx9e+pLySb
	 XWlnmOQxVQ3n119lfPS6lJy7G6eVpl1EC1ibV2gxGYhKpsAU315+IW0XnsbLd3raO8
	 qrT88uD6RvccB3v2A7N1WIIUiuTZOWBVNn6zFUOzfWXuMvNAkd5c332gKlyPCHMwoW
	 fg7/5m99JZzSOBOBuIoDFKvvGf5hVMUdij7fS0iY7m3GsCam4ogwsdmPTJPoScdCH8
	 nyusNFqbN/zdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FFBE77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690135359.22139.8361967464870053084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7c7d77c9c508635a482cac49f5d2b819955d0358e1cf6452968c8e477bccb6
Date: Wed, 15 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736901353
