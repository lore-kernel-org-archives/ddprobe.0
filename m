Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5861DDD1
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752883794; cv=none; b=NVa1ezYcgp5+hnbdCfONYT5W1+bMz0Ypo/Vcb+6u2Eq7qn2HRysYm13Bh/aawdr7SB1TclLd3jD1GQruISs682m2c7yKT9JWnEaMzdMDE8O9bC1ITQU+vWy5Zvcj2CQQGGUpktWmhBIBLpHDZZnU2iA/rn5eMxtyxl/qSTKU2Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752883794; c=relaxed/simple;
	bh=BqHFHq1VNDvLYI7t6+rORv1msJrndAfRhxM9zNwL97g=;
	h=To:Subject:From:Message-Id:Date; b=cStn8mf5160ocvGb8b7ObAq8AwlcWHf3MblVKFLEWeyxuardOB4L7Fgz4qK2cQmD4Fih5TKIpyOLzhSLXca+qH16/AYnwl8GWQHsmE0vU0CC5bUeKk/axVmP8bTDd6NpvNTzK5HEML4Vp4TbbB7piApgtnCiD9z9Odkuk8HiG9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFGq2ORh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFGq2ORh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F2EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752883793;
	bh=BqHFHq1VNDvLYI7t6+rORv1msJrndAfRhxM9zNwL97g=;
	h=To:Subject:From:Date:From;
	b=tFGq2ORhnqd4g0NBCSHX+x5P2onkyoAJtlTfabbsgKaM+Vaar8D/mi/EJpkz0MBjy
	 xqVHf7XzdjpmQ5yCPN0VlJMqojoc0pBgi54ftDHT2gyBLd6b5ur8Z4OKBdbs5RKf4H
	 eq1q1nfEaYsxwOStNcIFkbGQh4N1KBqSyT1VzejHb4j+qODGDjTgRGWy4MePcJvCR9
	 nVlIcb8LrN0fpsvWwda8KAlEKuLnOZAfs16eOTxM/LfeD4Ttw7EIlWhqZ6LOS6SCBa
	 cGuqP7TckleRO031DH3Ao/+sxe3C1b7Ncdlglw+QGPodZzOgDFG0xdq37anEheJXuF
	 b6MmcncKD+YrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92115C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288379357.17195.7125503206504172646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a50bbfcbd5d7257b332e1a3525572e01452ae7f061e6cdc97f61e8673e1e527
Date: Sat, 19 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752883793
