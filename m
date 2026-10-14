Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C89437882B
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791969034; cv=none; b=MtHyif+HaYOiql7/6PYgQqa7mBmij2kT9FUk28FUqQtRto8CeHX04jzUilOFf24QjmSVB+UzPNObm1FG3HzAdbMeCBGw7gDiOr2RCBhwaz4e6d2VvJSKHe/0T/+JY5W2dIdVI4rXKdNcVB7y6cdvDGnfTApREKJOlafAKPDfvCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791969034; c=relaxed/simple;
	bh=DqYsTfMEzK/wX3281m65eNJMEuTIAnZs4LZqKpchYPE=;
	h=To:Subject:From:Message-Id:Date; b=idRnMgLN1CBcZyXKjG6VsNIFDnsh1rC5zz8fQDaI8+IhC131PMsWOsBvWmG8xV1w344+gTAQ5eeIKNKn2lsNAp1+mzFDHhBixfFNg5nOfY7Myf0FdcsMC31gVpUZVIZBcUlu9VzdVgmlskY+CAM/VWyZeTtUpsmjtwykLkCtplI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioEGybqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioEGybqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40C0C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791969033;
	bh=DqYsTfMEzK/wX3281m65eNJMEuTIAnZs4LZqKpchYPE=;
	h=To:Subject:From:Date:From;
	b=ioEGybqF6rZU78eS2BwSnlN9IN2dCaqL1Mabdskeda5S7qgiPerk0UJuK1T22F9NI
	 psDAb0omcLaEQPTQc4sQkf5In/VPfycuTHHjpnZZF1OIypT8NIyNDVHdzdTTwRMLLe
	 JCUVYpbejA+zhyda77kEvBDs/ATgzyS4CYE3BJ9nZ9FbMRPmaf2YVp/R5uCad6Mc08
	 NLB+IONTdOtTaSUfXfEOzD7isN7bKJWb15pU0nRalAcLHK5TNoNSfdeRM3Estnb8Ty
	 iBpB9SgTAKzq1h8IXJlwNCucMnOUrdEpcFKO1aF2SleQY0nm5A6jV9QUXFc1buEclv
	 J2peAJKd2OCvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B988FCC6B27
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196903374.26340.12370631900463425614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4980f4c1af96fa902c3d65b53086a89797aae67445c6ca2c499a6bf65b00e7da
Date: Wed, 14 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791969033
