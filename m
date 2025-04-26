Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342402AF1B
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745630394; cv=none; b=ZQDTL+MuCIWPCM0DmgX7B2peZyoD0dK0+nWcUgDTQrUfI9eu/GO05AMwrPH+mlL76UIUAo2/PlJ0yQluSm1KPT1RucZfsTqsvTwoHof24Vux9gBXI1y5IhcowvJM5PC07murMkkcilhWK4pWPAcdvtcWeXTc1s+0LXadXh1e6QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745630394; c=relaxed/simple;
	bh=HMl2TFeCNMlhfyo80GVVWjvm4j/e2Oz+Dz1GiqpcI/4=;
	h=To:Subject:From:Message-Id:Date; b=QvCVOo+cPMqDsc6u2LWgkiCtupktBS3dCDXvz272sS/M1/EqdFPhxXWjMuInopBUJE1HD7GNm8JPXRtSDqslIcLI7xX3CzEkb7B20i9UxVNkdDxsOTvZGyS8ye6FBMhF/Gq1gJM3/VGdiDZSnOvT1ymIODWk88oH4rggJxWqmeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNO8UhRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNO8UhRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A053DC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745630393;
	bh=HMl2TFeCNMlhfyo80GVVWjvm4j/e2Oz+Dz1GiqpcI/4=;
	h=To:Subject:From:Date:From;
	b=ZNO8UhRlIlIHn2lY4d2CrUB+VJ1+AzIGFZEfQL+UvNopRvf2ff0gvV2+pLw+XIaUV
	 35ErpVQvbq0s9SB3SjHnYzSf6OZf3ujAWQP0KucZDHyjveyLWu2QdYu2ivz60s8WsP
	 4J7Gd+tpmlZ125iyC5f/pyYHB6N+yaznMvG9gHcQwY1/9Ty2rHTVaKyo60UXD4PcZ5
	 iTojDqDy2vcTCrEYPmFCSGsNYK8gLNF/RQUCfldEdA2izNu3IrE3/ZOWYp3pAqYFkY
	 2gqRwVwWLXOSRvJmgcG/+qo+2d+lcQSyzw5rWSIjrJrv7378ZgTAgD+Cu1RI/4PtNn
	 e/qeGEgy2PY5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB6C369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563039357.17438.17271601251214792140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c804bac58815bd0f0d2b0b4e2b694f7e2dce1ee591f413b87eb76c57665a21d6
Date: Sat, 26 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745630393
