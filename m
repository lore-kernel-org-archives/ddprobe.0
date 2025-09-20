Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A3D189
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758352794; cv=none; b=M/ALohsrndR3+0fUL0PywOSL5ks7poH+0WSOLuWPyPj8U2kSC4VbvxfoEIlSpw+bHR0ruB4HeFEZAPSa8wSXq59MCC0OPTLLG3IBohF/YQxsQVocmMTxWIZpSgvRc73Aywf0HtNM6vU1XDpLzCflxLgQu8lC6wNM1Uz8q9FLZXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758352794; c=relaxed/simple;
	bh=0t0qfPchj9NVNEr+45hRBxCHNa4aMLxQArsgon7TBkE=;
	h=To:Subject:From:Message-Id:Date; b=s0oWEO1Ne0l/lsJMS7LfOSWaG7l4Qc02/xBu/JVD5hoAivVwJig11CK/4do9UWFfeT33LeVZCQ0aZF/k9sSmpLdqCVP/s6a3Ls3nyMVMOWbUm1LmuAvq0jzgshPNWYhQfa3sLgTerCoguB8WHBDnQ104apBuJNKJD8I+IItzR64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWhl8M4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWhl8M4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9627C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758352793;
	bh=0t0qfPchj9NVNEr+45hRBxCHNa4aMLxQArsgon7TBkE=;
	h=To:Subject:From:Date:From;
	b=CWhl8M4MIcBQVcGSOoSA800d0eAM2FjpDDHbEzThccNR7/N6ZkclSaK7Dcl6hfORf
	 sGh5QrSyFVT9xp/Z+Y6nGHBsCvGyjypigMlts02Mam/iXWABGuTtOyQIUVIoOQz7fi
	 YE0jrWoM6P96IsffZfZqMoRcG9j9hbp8VPOcjIK9H97xzRVf4vYx+FZOecCqxdTrFP
	 FhQld54Z7g63ITYdoB98aM39HsotSjWCOZem6NFy1EJ+VHX3jW6cOby5/UijnR/oTl
	 sm2/7Cg7c60/AYOJPdPLruW+GkO5Js+AWpoPZ62uYykH4DcF09HXhbX+wxhSwcG9gP
	 s5igiQZmxGHeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9827DCAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835279359.21646.599043156172643408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246cd7faee977dacba495423fbf09f0506f275c2a4fc22fc3863dc62475e2630
Date: Sat, 20 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758352793
