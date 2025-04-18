Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B6A1CD15
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744950594; cv=none; b=Fa4sClDToQsm9st9yethGrbOF1bavztCOdMShkaJULsVBttNx1txvyeVmEIAkFGC7gJsIrvfBsQINo1ZgzJqVd1ECd1OVZKO7MU5MpQOcTjcXHQZ3KJAZ5TF4DRltsVZujie539hj0Jmei4d4Fa1CqEh50gcdG3sIvF8V4m5Tqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744950594; c=relaxed/simple;
	bh=z3PcOBAkwN4RCnOZInK8utMpPa+UUHVlNcxYqeR8s+g=;
	h=To:Subject:From:Message-Id:Date; b=m8LCFMyqJxN80ke2h7yNHN3P9dUcKzYl7mIP2W9oQ2bTUHukLXICt/9DynngpEghDC7sCza7C/zj9FHG4eQx7xpyn5E2n6kt1F/Oyfd6U7y1SPsCHGb0cdOGqpxNor9HLyrumPE+tf8g5r1b8kK7NjhHV/vSI6P3vkKOoBHmtqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fn+Vpveb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fn+Vpveb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07C4C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744950593;
	bh=z3PcOBAkwN4RCnOZInK8utMpPa+UUHVlNcxYqeR8s+g=;
	h=To:Subject:From:Date:From;
	b=fn+VpvebQT76+XpMw9ttfFsiihIJFiCqgwEJVdnAxPO36f0KZ1CUbf9wXdeb8WvVx
	 d1zyvAxovOJiZdqEx9N7EeY2Ne1PnUPA6VRjWRFjC/Desm47CVkakeigAp6ysJXFjJ
	 oQuMQsyVdXTGpDdkNAm4xQaKEfFlpibWLqZPzeaCmEJQkZkjmLIWS4QW8ggEt32v0F
	 t3C+Bt72jn8nOUkdsXOgjIi7WCqQETuw7cIm5mCUS2X2nCMuRnDspgFrku6UhaURaN
	 atU9dNYACOi/WsOI4WY9QgXBC0empkziGshaJyQBmla82Z0NvpZB/HWfXwyCyTPXOb
	 dZ4hJuzlOL3dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54C9C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495059365.18555.8391014775625734159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a5966d9125feabdf538adf2e3d6165894f371d83089205efc99e017f25b377
Date: Fri, 18 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744950593
