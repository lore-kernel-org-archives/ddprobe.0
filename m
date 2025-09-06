Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DE314B086
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757138995; cv=none; b=DahyoBMVXzoygBF6dCbs7UQA60eUJ7TKiHNXljOnndvMzZ/hudBDIpAA0dxhukm4X1a3nhwNy31lnL5vs1iQzD19SrJVturZ2vXVhtlQdJ3n0HujVVahyfQlxItZPq9TnWbWkhVE5Fd778r670Vot0OONdRFOnOQRupXpwAST2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757138995; c=relaxed/simple;
	bh=6wqBAeiGOSsRLrp3TVTcGI0AGhIJv6sBLMhsmRfMdcc=;
	h=To:Subject:From:Message-Id:Date; b=et04XPJqOUGnbMe3BNH7566EYME+DK+DZM8RxLm1IEdnbudfl+bsFzipf8sAMXSklTSVcg0QXFzbD8xKelIVsH0FNUhGv5nmR5g+5bOBeEcn9MEXbu1T4UL/DzgXSTpdeUXmuIt4CzWORUWfDKoufO5Rt7QmN6gL4uJVLRy/Fjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRhvPnfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRhvPnfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AFCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757138993;
	bh=6wqBAeiGOSsRLrp3TVTcGI0AGhIJv6sBLMhsmRfMdcc=;
	h=To:Subject:From:Date:From;
	b=XRhvPnfc+x7DMirXA4kbrTI+7DaOdhlQu3kMluun5M/XyjFstGu80lIVAwhNqA+em
	 SRNAZqB6mrOMhJzVve44P5FtByCUU9V2x3a3cqQonkotnwGFuVpqNEytEtUpvyhOXu
	 Mbr64jKoxktmqZ8fMpcGtu/CAXO6Vf8mNaRdhrj49SwUJeyCLigrik1UFoqCgOARh2
	 MmftLuVxysvN2QYZ46l6jbS6Mdv4jBnOHodf0kSqAusuE35jvqNEKYBG9aNtV3UxBZ
	 EwjHJHOqE3AVq2xA+EgdrOig2Bimn9o8sBPwZ6CUtF3yJ59M8jsh30q+Dpr7dXkZhJ
	 AhG0SvMUolb7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64ACA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713899357.8791.8798347125397564380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c67260fce845a48350a0630a10ad0523dbed292f3a4d0efef821ac94a0bee7
Date: Sat, 06 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757138993
