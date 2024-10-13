Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BC4139E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728781554; cv=none; b=ucdDG7VPQHbqupd4ZBNCC4xt+SszEMvzZouAby/ZzNcWj3QCUyZlTpVQP8H/g0H5m5HRJI7YFG/Av9imk5Yq8hIm20v9Auvavu3AVlHoW3TGq8EwRDPWDO3pXUAm+09FfR6hU9plNLhtkyP+wCfr8d7zFCtogmQKvbHatzDSSp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728781554; c=relaxed/simple;
	bh=2J4wA60PjbBwCB+SjH+X45mww8mha1J12HuNnFYjljY=;
	h=To:Subject:From:Message-Id:Date; b=rRHW+D6P4Z1KfLAfCGdUUyjrTu6lPiKP6YINTufxQAyj6M6nvgE72qyi4K1pj2frFfa+xaAkbGRN4PrXbF2+EB67MOUimkoCcErL3XGnKp+74e6rjLTPoFVulpg9j7jYBRsmljq8kul/sswFIFBQKbXSYX0/J9Cdp9BWxS9Rr2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahEV8MUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahEV8MUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EC2C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728781553;
	bh=2J4wA60PjbBwCB+SjH+X45mww8mha1J12HuNnFYjljY=;
	h=To:Subject:From:Date:From;
	b=ahEV8MUW9ztu/7li/WqplbxOSBnkjpimBJjWbTvXXDcVOx1B5XdJFIyh19lrb3ED0
	 80hHoscxI5x2Jil39wMWHkF9y/bQTGowObPsxMk+zkjF60TvDV+pvUFVsTX+a63QGq
	 QJsneX//cFh+KXW3nfSWUxE21Z2tHtuUH/qDTEQTDPXRJ82C+D/UbpDzYTZPSvjGWi
	 HNh3d1j3+nsm+b7XYGie0G64qq5Tr0TLdfR0zZp08vBJfG0ZvsQ9XQCJ+fU+bOvKI7
	 bqbqrGGAe09Egat+Sac+mzCdm5pbncWlarCTNsvxao3mYtDjhe/tFgC5JYCzx4UuMx
	 KvX8ntq409kxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B73CF2569
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172878155366.28687.10042340164665756372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3448c97b85d1f2a0dd92a9633212c96340cd587aa738cfefeaf8c2fe41fa2d48
Date: Sun, 13 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728781553
