Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA17623D7DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763135994; cv=none; b=BXdnvProAxNp3/Nzh+3t1cB3/zDZhxOQpqH7IM44cxBZtc4XQCn9oh9tiYbrjNGmI9RiwSZNW7JPcoPem1LUQA4q/Posa5JK6G2DEteBY04g/R3XNVz93DH7VxW1mVV85EnVwq2IeTNfR1Kv/tUQACA8qo7x61nq27xx8Jvbtlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763135994; c=relaxed/simple;
	bh=sSx79B2GtWMQeotNEF+rNiP0iu9V7Vu+ligFYB3ZPC8=;
	h=To:Subject:From:Message-Id:Date; b=ROWLmzflA8801cQ8KLfkAmXxNzLGj17OpO3xXVowofMUo3FKyZGiVie/k+addbYRvrJImhgye+k5cbO4jU1itJobvKSb/PBHvKWNJbBCEkJP231hMEas0NQFmtCFGISxgJ9aUU1k59Mdfz/ohxaHre4jPBP70Nip2zs0/XhQw1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqErDAMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqErDAMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99455C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763135993;
	bh=sSx79B2GtWMQeotNEF+rNiP0iu9V7Vu+ligFYB3ZPC8=;
	h=To:Subject:From:Date:From;
	b=OqErDAMFxV91UVqGLzscMF99RTOFI5nD421x6RTB+0/f09vPa5DbAWns0kNagP/WE
	 s/R58eW988Hb6v3NlHGGNRY093Cbdv56rXU/EcOhVzIYOBMu/i3KvaO3CMhKi1M8DT
	 wTCb1Tat3BqzzRPU/RN6waaTacieXxvPUdOZn3oYin/OZB4VIiOcUcwaER58xSWsWk
	 XnF3S0PKk4LTxerTTreWKIyqTOPOYWvDYUcn5rbhT4au5qQfRT/SMmIeKu2qtwXl0k
	 W9ahySgk1zmlqsoGOWvT78eFNAaihuHwkPR3oAFEDnt/9P8Twq7F/6C3zrAuDNHDIb
	 rLZ7k7lO9GlEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E43FCE8D47
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313599357.16858.12287595506605280849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57aa982c757d97913cfbbdc39bde9ea4bf0da7946ceac6e1417c81135c45cccb
Date: Fri, 14 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763135993
