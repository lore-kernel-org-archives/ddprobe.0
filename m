Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BA62367D9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760593194; cv=none; b=VBAjj4SThd/7O52sbL7oCmhy3YqaxSqpO60TG0RnA5l9UfWkByF5uZnz5w0lZTQY2K4anSrCs+C3hVNhhC3r9vvDx/mNypld/vwze47FTpKlC9LAQlZzj6tA+pE5l5WMSFtGA3otG3/+wp3/pztBhLAdvsaaICHgtZ5jZqfaWt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760593194; c=relaxed/simple;
	bh=0Ryc651a5SScrHypIz/rNOEQjiEEgzp+v/IJf7xraXE=;
	h=To:Subject:From:Message-Id:Date; b=X97jvbCADADXtl81ek55BGnBTdFSMXVQKaktxdsPV5pFGsK5v23OcmspiBG/ZtnacziG9gbgWRzxlE/o88ZCitce9v3hmX32kHdocrEgxr12Y7vsTqdrQJzHGzbtrnpkEBdl7Ces58RLr6PgZ41gE5FZNObiBuR44IU6CNVqFwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oigdYtRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oigdYtRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760593193;
	bh=0Ryc651a5SScrHypIz/rNOEQjiEEgzp+v/IJf7xraXE=;
	h=To:Subject:From:Date:From;
	b=oigdYtRACbe9ze9EXq+f/n0OFWbX6g5d8iGx8rhp9mFVsnR2Si2+K2kFR6FiVYALx
	 0pc+fl0rfRt9QWBpcT4khoGNE+eKv1PkAM+h2G+qWDn1l91kiU8uyVu/oV2L4VvE8H
	 piYqVcuBVcnV251kG/lZoq8TNIidevMOvozbbAOXnc+QGqhbAxk/FXQOVvuUUGrNl0
	 2k2MsiEiAs7bvV1ZbVamZ8w3dUrDwJnGVMVBe99g7m4EG07gOZxKLS7xfGSTOtIF4F
	 sPFAG3lPCxw3bPCYpZIOm4XcEHREXWviAg4PKn1xrtRFGoIE2X56eM3okGVLUH5zRW
	 g3p5Ib011vP5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C81CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059319357.17046.6590455423452689299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05eec53780ac96939132221bfe8f15916937bcd04eed0ab7d766540ad4f24e2
Date: Thu, 16 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760593193
