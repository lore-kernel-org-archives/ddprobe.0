Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2CB1E51D
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732721154; cv=none; b=l88jOGEyETLTTLUay9Wcp0AuVDobaCvnpg9J1eSS4EIpU2xI35OPixUZmIG9qeyLtrVqdKNYOsuY6G9y+rx9qXEK7TC30olozO9oT0C55pckFt9+eQfB38mdfxBqwAZXQAUu++Nt7JuC3gL/K9/5TJWnYG9TmBhs9zpQencN++8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732721154; c=relaxed/simple;
	bh=NMNnpeJsT5p/6abbs5hzW76WvFOoU6qVrLPlFOPT24c=;
	h=To:Subject:From:Message-Id:Date; b=RtRpnY6rNFtrBCKH+DGdKLmTncQM1iXysywDF6+4p5U3egOYPm5GGzYD3X8c81v8It6JKNrs8rMvFT37dUmR0eLbqLIV/75x1G3ZR7gsMWdEq6rqnQ0D1HDVSv0c1CcTxlfJb6rwuHmqzD+uDV6YrUcNxOLza00EVfSi4ZIhqhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrhLaSbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrhLaSbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0CBC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732721153;
	bh=NMNnpeJsT5p/6abbs5hzW76WvFOoU6qVrLPlFOPT24c=;
	h=To:Subject:From:Date:From;
	b=NrhLaSbLVqYWAIDpSvMWCD+6EEVQqS2c+feKtEc8SyCoOY/j6KT4URdzJSRD0YmTx
	 NHFAvWciBdZzN/DcteZnoF39k0E7p4itsLKk3N3gzBkp8SalwK5nZ6QxplEK8K4IdR
	 ge98gdv+azrNYjdymhoFL+9ZRn3Pi1YUF8bVYg5gy+hb+v9PmAOdKdq/DE+ILRZQDE
	 YAga1H67lo7YfLSywg0A7pL5tpH7h1evUQqCJXg0WsUWYsWSgbI0QlTECk8VcSA7aT
	 h/hnAw+hv2gPcK665INSXL4THrQ43NkPeZ9vzmjXHmGNzdC3KInbJukkPd1zAV3fkd
	 4NwpqAuKwIzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96686D6ACEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272115360.28227.15345547782909598003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67301c1e34341911e4032f672bc8e92a06a30316d16a11c67e87f9081e8f06eb
Date: Wed, 27 Nov 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732721153
