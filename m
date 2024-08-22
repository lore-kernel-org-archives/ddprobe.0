Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F0E2D05E
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724339754; cv=none; b=jXPbnKiqlQ/Sq1qJuVf6m+lzawsFloGh9d10bBRUWAEVeilMHjboa1MO492NjaAXDA0fNvA4NWy14eWvALYzXOxlEROxuamtrGZYyN0GQye9VJzSYReH4q1K6/KokKPidiWg7BqvWoAGINuMALFg3UaDbV88VSxEJsuNhCWhw7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724339754; c=relaxed/simple;
	bh=AZgSun5pX/WgLc1L3rSx9nKiSTgFSzi7H+RIy4y+TEo=;
	h=To:Subject:From:Message-Id:Date; b=OaxSLRsc3Kei8T21inGClRN+jpx+8ef0/af+G6krd5ljVcKEbEzB/GVtn7ls12Bkq/8saUbMwmm4Xl+kjIrM9+B3Ze+6Al1q9dYLiNBw+99L4OyYtGMqfQBlBHS4mmqs+Q/IYhNLIEhrGDtiRQGDvg9hXothWjeDfyAiBet7zXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfgIIqHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfgIIqHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0527C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724339753;
	bh=AZgSun5pX/WgLc1L3rSx9nKiSTgFSzi7H+RIy4y+TEo=;
	h=To:Subject:From:Date:From;
	b=dfgIIqHBeSXQmPn+ZYTeBE97GyJ5w6sFLSiI+o4VCl+uJO0t/tM+MbhFhVHXuq+QL
	 2JdHPK33eNVLbOA1BgLnJZJzYj0NajwJ0qe2Dt7ZNZp0UMA1J0Raxd/fW78rdTCKIt
	 BkGxZWCqpHPP9jeo8peRw4vxzy5+D/akXakWwqAY6meUj/AQGgTTYpecH2rAX5P9Av
	 nXuMUnIuCfipKGRR0hma+3rdkdK5zQUhjhBrp5RfTqOFlUjCFFI8KFVYntAZd2FbkJ
	 TisuWgjLbviw0d2zTBzOu4itdoDC1cr44bc5XrMrlH5LngBcXEneJlMb0y5j5nvBq0
	 27FJXuEYMAAUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7329C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172433975366.3709.7013846708103544020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a23dd9111408b5191aa8df21945bc7af1b740c9bac1773359687eadeb1ba932
Date: Thu, 22 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724339753
