Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C833845B0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780914874; cv=none; b=lPI1j5laQj/5gehhnsTGWskpoRRUCpGcWjPyJ+5WenZ0RqldRsqBCcqfMFPWCpWTqmbwVpyh3FJ2hXvuVuIbSAJJXC6MI/qiGfJ918hfbWWnS/s3JAxsIETjqo9kTI2CvIRTQyEzWKCxioILnAjRn/7lGa/KAKoBo9k4NZ/TlFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780914874; c=relaxed/simple;
	bh=Zv7Y7SUpfb5PPQWiSnDlvn/A2ynPOmfF2pOWn127G54=;
	h=To:Subject:From:Message-Id:Date; b=FwfjUlcG80u+HqOceuJrqE0E9r5sj+D5udEyXDHOlT73PPZ3GvZq7fa4FxIr5co0E0329VR4gE2X+Cn8w/1F6op1L7mdFSnZHgX43VrPoQJttl6cSLq5Yr+f9JQCXDs4XC/b2ZuvvfEtL05zaqsnKst1SoVfYlIusDDio6MKbfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoFAFg98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoFAFg98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14E5C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780914873;
	bh=Zv7Y7SUpfb5PPQWiSnDlvn/A2ynPOmfF2pOWn127G54=;
	h=To:Subject:From:Date:From;
	b=ZoFAFg98QSLnYBdp23vsFdOYgOZNDONY1riAhH3zKJ6Xo+NTan6I+JO+dIP52Oei4
	 yg0G8scd7DYlJdq6POrRGOK6Dd8UBYB/lnLWiKcD9kgDMWGiD2HJTAgvqMFEtkelO/
	 XgVUUBGBlkj9D4f7paCR5uQsBlaAV0U1DIdxFm+hNC/yEQtynVjq22FxkkmKdlYscd
	 kpzKcagps1/TR/KvuKktyySDtKZhfy7rNOI+flW5o8zgfgw+cEGOZzzlJOaYgkESNP
	 SpsJdogm1qaM4cRDnEChFWQOlHl58bUadSVZFgMIKpMUPQLZuZfmwBAzmhESC7MPhr
	 eGLUhYr0h+xEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB86CD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091487368.26980.6741054373503126876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c88f9402b12a83573f1b25e201a22839c80c9813c10856d4da2560c1f669fe
Date: Mon, 08 Jun 2026 10:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780914873
