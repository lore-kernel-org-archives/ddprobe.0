Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F982405E3
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756346995; cv=none; b=JLEV0eT6VTYTQomkVs4fJ+dk8MOUIXpsXajPCyUs4cuizG06lH0/S3dfYIRw2EHTBl+LHGLwXfyWSmfc5+8oI2EUeo4JepmNTp3pxYTpnaxfDQDNvIA9iAcFDkd3qPYqSeAXBiSRyGr6+z6JLh8iVIfgHaClHJEAxl4pBl5DJKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756346995; c=relaxed/simple;
	bh=GYntux23vPSLsANTagA3nbEgusEd8FwnNxnhCRnbR2A=;
	h=To:Subject:From:Message-Id:Date; b=Vps1U5AM4jtwmZCT/orZ0b0Ii+4qaEQ3mDwAp9FT+YsfArgRo6vrVtuMbgd0nv4IIjYOwC90LitwyscAR2qAd+fmhQXvrtCfg7HT9D26MdzZCTBpkkmbSOyyt8Ge8QQthdinsQ3GgSFVdbFDBmRi7Q7Rcj+Tvn8RvlFK9YJZVtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNCOEivo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNCOEivo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5062C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756346993;
	bh=GYntux23vPSLsANTagA3nbEgusEd8FwnNxnhCRnbR2A=;
	h=To:Subject:From:Date:From;
	b=fNCOEivoUEciX+Xg9lZlS1MxyzV+Aq0ljq7OEDWlzrV/wTuwFf4nl99sESa7Sgthn
	 zl+3MTkM9ZABNfW3A5/OWDcEdozbZRk+E4Sj5GcWopgPIdEQrHodghSm8vRDn51NWy
	 nZUfI5bH8aYT5mSnu0N4ABQrVNnU/lWHDIgnpQAT0kc/d9Fs66G0CItyCLH2gK9AtZ
	 vVB1M/ZCKGWumqL4KsWCc9449ervnPm42H+EDReQE+ofwxavybzgMprq7WZZwqRKlQ
	 bTRdBTTm/2fDsprUaETRIQYWoZmtxQQ2rSYC7A5WH9vWaNzso2FEhG4DmSIXWxBzZT
	 FYHKDBeFDP6GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926BFCA0EFF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634699357.3216.4961767087701427236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6009120e8dc0bdd451057bedbb3a9791aaf67cc1ed6d90f1ffb71f02d35ab8bb
Date: Thu, 28 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756346993
