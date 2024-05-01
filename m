Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6476C468E
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714525343; cv=none; b=SiV9KN9W4Gw2C4DIHicCNe3mCdf/COgO7U3C9daZbDmZP/rsqEEgkCYV3PVGMagPCreWispGCjoMjP3n+pUkO3+6s+z1CW/QBZJe/Sb9+uSGZSp4dh2r/s+Og6tmlQMo0oVTnTHqYGB/2aw8eE9Diw3/8h/kLO4wMM/0KcJOuV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714525343; c=relaxed/simple;
	bh=Gr4I5rZZR+v6SV08i16Ls/xzkvowGT1EyymDd8Y7MwU=;
	h=To:Subject:From:Message-Id:Date; b=s3/K1KM5t8z7lf15DRiSDTQv3DCmp31Ta6tm9CTrYqj53b4rL0IbPzXcmLwNBGEFitKIVf7Kfsvum9zQSqp57wh7F4RuQxs9TO+SYvmv3Bzr/sLhyCVew+IT6mTCmanfeqGnSdsMj5qc6wUjxY8sR5lpkpZ9BKTQaXBx+WqSV1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAEm+0Ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAEm+0Ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED137C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714525343;
	bh=Gr4I5rZZR+v6SV08i16Ls/xzkvowGT1EyymDd8Y7MwU=;
	h=To:Subject:From:Date:From;
	b=eAEm+0WsHv0PGzeHKzxT+6/tt5FP8W9rAJbCjnq7Zg48nbk5+tOD2Mud+palHVBbv
	 XRqevlJ21LrJEsm3xkKgHDe1vcbN1U2e0CaILAcjxcXdbaA7Pla8PdBfURSeEKocxg
	 nAilNdL65AUEx8sqT4yo+Odwi8LbgWVuOgcYRGKNLBpJ6lWMn4r1bS9nExS02UcaoK
	 8yUuuiaPxYlXvtK+aOYYmgzs5qY6XmQ+3cxhZoTEYoUKAA69uHk7nMkrNC8xxo9YoZ
	 ESYtZLrbL7MS0kmnfa1QBRSHRAtw22RzTLmwb1D+9PtFgGfk7m+J6fmMQxuYP5jieY
	 PODUq7ILM9s9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D130CC10F16
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452534281.18810.11187970444610728164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f19fdce6e004c6cf72e89f04842502a1a0dc9a17be429919be672fa441a798
Date: Wed, 01 May 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714525342
