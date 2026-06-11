Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345E73C198A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781217394; cv=none; b=SOhtLDFFc0yTvGRaGIFsNsnUbAHs64frPZ2m0LCmm3I+FqBeQgl+9B7lr8W5UDATl6RHCfLkDQ2OiI/GF6d+XvYQ6B5JP4bFmoUqJX2EAOzxL5Fjyh96Kjhn5X41QfDEx+h/EiF2UgkRf6SC8kagw6wxkB4IkW87rp3eJl6JJQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781217394; c=relaxed/simple;
	bh=P2j9Bt2j1cDLFlP9trzQqWOh6d/QwaVS2EsRxehUZ1I=;
	h=To:Subject:From:Message-Id:Date; b=rnG7gUG2cJSrWFPOzvakUf17DJFrIHw+67lHaNwXJ2yewZADFea9RRntRisTFFajHZVgwcyCURqj2TrDAsdlWcSUDLA/SR4CsllHZoBxkBd0TT3vhvDtZp3mLVPkSjIniZWXT0lwd8Z2h0NXYvJ1ha/2L2UyaJe/2FgIBGBvn04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an0PJ9lB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an0PJ9lB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56BDC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781217393;
	bh=P2j9Bt2j1cDLFlP9trzQqWOh6d/QwaVS2EsRxehUZ1I=;
	h=To:Subject:From:Date:From;
	b=an0PJ9lB+8W1Atpbt0qV3n6FUON4jithlvGzubF6nRATwaKweRBXA54XfZgYOeCkT
	 oR3tvQQsj1ztGqEJ0G1hQEFhXyg+enVrSEjX9gRYsOYTm8Xxkh5xNs+3WEGeyij70i
	 MGY7FYCjv/J7WzTRSHUpwYvPlt40816DaSgAOEB5rY4ga28jY6wGm5KkeLNFsfGKFn
	 OiwfPv/+vHPOQmUkFk7icpWQuHQGYSQGi3L6Hgqchwj9twanvJBKSKUsg3+R8iASMQ
	 KTTFGrQRDjSRSlx9Bth128fkXmXNYmv/3t6mOi7yctqaPQStrZFQlEt2xiFRkiJy3C
	 UHXz/ig2Dt5hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F44CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121739368.2296.12680110592369337647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8a9fc8145beb3dc5f4abadd041453c14cf5b21e7f605b47fa62c2c55f5a301
Date: Thu, 11 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781217393
