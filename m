Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E083E3C76
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778829034; cv=none; b=Nba8SuZIqdqnesgrSvPkHVqO+shkYzAMwbQfw0ZkaTbYldU3DtRNOhzU8iBHCPlHuRCuRSzecjkvzk7gwyUZ23YlUijPRXCEZFwq+xoyk2PT1opuHp2EvI2S0lLfL0kRrLmr2qFEuClCwv4csGKU9Q7v95jgDw6WtnEhS7qK2MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778829034; c=relaxed/simple;
	bh=CNrBQVQH6Ve3bm/WKUBRrGW1KOC3OEErHZvcdK1W6UQ=;
	h=To:Subject:From:Message-Id:Date; b=sZbELf1S11rPhEwVePW8tJKsHeSioD1wBQ8EgqIdCHLMiFyvOYsmsT3kRTh/7AabS4X04vyklMxw+y9qv9+P9rHXdGzzk0Az9xXeLw9Dvg318pZPzvbFgdbMwHoJ+d8rRSX/A4i1oGdaCrGB3xm6h1UODn7sL/Yp8xvvX4WBB98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtCS296R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtCS296R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE22CC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778829033;
	bh=CNrBQVQH6Ve3bm/WKUBRrGW1KOC3OEErHZvcdK1W6UQ=;
	h=To:Subject:From:Date:From;
	b=qtCS296R096V89qBqci93oMrqB9gyoYIaWTlLBWXneuSby7aC4j/U1IsQtFOmXMTJ
	 Q9LmMBOmbVnDcG43aR8isu0wglAzLb6lvgmhmBZSTDJujPR9Uu0+bI+oacxFhXDvpv
	 j+lCqx7K+mGoRAeT7czNWkfF+hzcxVVZ+/m4fwi1WInqK42y841/j28t4VM75SqtjK
	 tIeysfwlc2yIKFg+zOLmq2LEm+QvYRhh3wfaX4DeEQE0RjmZ1+bftMP8Xir7fzsv3b
	 DWOhXbgMw+WeqP13p2WzwIvUpo518x9uC56jLT/9zl53is3vGtUiBeFJisilEatnOR
	 f3YvCaW1kXLnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB541CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882903368.7758.13714176324197407383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310a7533aa8a308bb7b64e3fdf3f285c3d177b9e97a6708e7fc47a1533d3d5ff
Date: Fri, 15 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778829033
