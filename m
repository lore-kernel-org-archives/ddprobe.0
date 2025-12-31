Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11471146D5A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767211434; cv=none; b=bij/R5qhYu7ewHCu0NnSKUsWPTLLk+o+QsMiANl00w2WfGA7OCf3OzutnIV8S9mdgnVe7BT25FDnBPmejRbhFmBthsK8XHWybl+p+1u6GM/LQOdnlP4rPMQUg0tPdaOQW7pa3WAF4d+ItqiiuS0ebK2c2OMT++aeEpI9zzA8j2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767211434; c=relaxed/simple;
	bh=3Wx0WPu0+M2rX65sxdrt+MUvjoLLorFY+RVjAVFwlq8=;
	h=To:Subject:From:Message-Id:Date; b=i+nWSx1gzN8Whlf2oAhE4Sr4cIchg4k8RmdIAt7QKqtddQ6kOrKGSvDRIoBPU2MjCpMMW3+fMO2sFzk68gW/sa1lh+Jk6bzqZg7wvD+KoTM0w9aKvvz4NRIGwJhMm+pboHsVfPcG46nAjR+gUqOiqD0ZrPBaXJgYRwxaxvFyEDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e194bjPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e194bjPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A262EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767211433;
	bh=3Wx0WPu0+M2rX65sxdrt+MUvjoLLorFY+RVjAVFwlq8=;
	h=To:Subject:From:Date:From;
	b=e194bjPE8AsXNcx4WIj0jMMZQjOEppiUzbnwkqd3DcW4pjL2d1KM9uFfcVKl940M3
	 nOBBG/c3iAcofkDXkovE9GH4+io43vh/FDxYmZJUexDrPv9Ohv8yKIbcdBL0MeVceV
	 ZYCh69ZVuc/ynWwvN+2SmDgFNZVkyLRcvXK8jjh5rJ/dlTyAci+bsq62KWH+C/yG3t
	 lMwYemVmFSMTR0VvR5M8I+eG8CbWqCfIgJJDXnNb5nuBPcU9uCEdpimADzovLgslsw
	 BCAd6eELjA1lPDDNHRUL3TjBFQEijtObjXzjAFeKFGpJBMlDjlSL3H1eM7ROOhpwCw
	 jNk4JZV/SVI9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC5CEE57C5
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721143358.27133.17250559770148927037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fc2d3fa59259c156013271b807b3be160192cfaaa04037676eceb686699206
Date: Wed, 31 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767211433
