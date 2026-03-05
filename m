Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277E61F936
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772685894; cv=none; b=nXSGDCZh8jo7Akc8+yC/FqCznYia5TadXVCONCVoG1I65x+QiUhuXtfjcChedpxVqE1t4KEOduN8eV+lDvESoVxZ18OGh+/rGM081oGQ6Sqn2fReaOratIhS+r1uljRsW34Nrt1mmtpDNhGb0khxEozKQki0WpAZAq9KIz2tobs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772685894; c=relaxed/simple;
	bh=ucdzV3050opNrJPHuLoypJYSK1cUffxbAA0pOs69ga4=;
	h=To:Subject:From:Message-Id:Date; b=TtPMOb9uK5HDcke4IsNmw5UO4mJAP9qmfwPS8X5h6csK3F9lnfRNQBDIBeIA1VlvoR4/LPq7igugi0M9YmOY53eSp34v2WnYV8OCFNkI/TATr1Rzy8UkxnunfEIyh2ry6D4S61938LCDD9aj6y9dN4NP7RlG/DwwBhM8VqVBcqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTslizGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTslizGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73C9C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772685893;
	bh=ucdzV3050opNrJPHuLoypJYSK1cUffxbAA0pOs69ga4=;
	h=To:Subject:From:Date:From;
	b=DTslizGt4+gAN+69VSB1XJiCZ0FKqjpbViu3Bleu+pPaL+8jfaUQYpUhWbdEc4eKq
	 d9ubiRz1xj973QpxIm4veSgewAgwm7M9RVDpA13xEqQF4/+HpaZc54fpWEoFMpZyhJ
	 QxZGGaci3NRKHEFFX7jDF6R7iRKG46PGQCHF3vnE4AbJJqtk3/Ici7l7DMIpAMkZ+W
	 GrEPhoPqJrztbiuuhE+2iA8Ku1sqc5ZLu5pjiYPFIInz7jg+i6a7KVEjyFqb+5YwR3
	 Qh1Sg3mWmj5RcFHC4JkQWgbZmMRZi/k9ZcOUqxb68Be6l0tYt8vvc0Oztnei66Itle
	 +1CNEqubQn4xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33EBEDA69A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268589358.19382.16352398458507668057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15362c6d563e147f3486a19a4c5513c4fc081543a36988ce6769055ede658e74
Date: Thu, 05 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772685893
