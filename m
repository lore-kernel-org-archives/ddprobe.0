Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B8C2367DC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761251394; cv=none; b=ApbmbnECMiKPi+nRjtt181G8/h4Kl6YthDww0+eneNvfpE1exEQhJ1QZLQl9mHptzsyPNlTVGpdpmRz6p2X46katVuJ5sHIh9LaHGt39MPHhTtwnDfdNSfE8PNRTnxV9fsO49cNGUJY7o/wjLwPZAwEOJFA7pHjve2vbB4ycOOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761251394; c=relaxed/simple;
	bh=ilCBx7FPW8M/pRsczD2et4ta7cmC6+bmIQyIMbeOHI4=;
	h=To:Subject:From:Message-Id:Date; b=NEhw+DnMydZ50sFmgD5hsfmM1ON9R2j7ZzBxDnRRhnOWDxm/kaT6BDb5LpyyAY1m8M/aQmVyx6RQEytmHf3NcgmDLhaFsk3MAMnL2gcvyUuOWstP8nDqS6Q/GUUJ9I14Et7LtvgQXUxUhVkwMSntPA7yoLXawL7oIMeAlFTNidM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUrNoznW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUrNoznW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E33C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761251393;
	bh=ilCBx7FPW8M/pRsczD2et4ta7cmC6+bmIQyIMbeOHI4=;
	h=To:Subject:From:Date:From;
	b=YUrNoznW34VM6YFeK26WZfDq3q5o2xqRF6BXodRb6BFtqkXjyDmfnh8ThjzdGZRGE
	 oOs5HXSvbN2VF5HmM5I3vaB/JTNwgzFDM78WtqrLn+xidz09TdkEXsmd5oFsebOI9z
	 GjZiRTiEBSjPdg1sSWt+ahy85F92i00jiY/wxFABYwAQwdrSrG3wWhdhYhoxmP2Edw
	 GV8uo9tu96PckBlekwCpohDAc6EMMZ2NS1wDOPDI1QA3k1y8yNmfBo3RShchC4KSvZ
	 PcYfxY9cGhTs9S+8FoDlJc0U97B0OpL6umTCj+Y3jX+eS4MsxGOLor5RqosURVSF1M
	 qBwVMVDmICEiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D1CCD1BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125139359.23531.1319419234426936786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a862fde01cdf113fd8b6b577ea9e89a47ef648ec6c3449cedc63c3989bd60d
Date: Thu, 23 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761251393
