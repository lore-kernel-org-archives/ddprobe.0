Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255952EAD05
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754993394; cv=none; b=evh7qu6BShJ4mx7yBVh8Bx/N5ek8r9aWcHtOOftqkmv724bZcz8Ltg9PJzeAT2WRZB7Jw3vbTmLmi/vlNPr2a5TCmpG12urUFVyESwfdNajLhCJroporSwMAwrGKAGwy18WSqeTIoC2vfbp08VUOOeCE+3xLVzRt1rDUAwmno/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754993394; c=relaxed/simple;
	bh=e2tVAQgsg7kFSQnhIuRRK4KrxdKPvEwPijMPTlBGBFM=;
	h=To:Subject:From:Message-Id:Date; b=pRFJIMkZCorn6Acy/gQDujd1faxU/m5+paPQiQ7PSlEYlEjlqsRRNdwx3ydLS7jgPl16WQ6gkkpkeKZE+7q2yHVax+G5mgQW4vE19NEa42eCDyCVB5/QR/ZBi6H5vU/WN4rThXWttd8GcSji/WAKidmCfXtS/dAFwX6P/VIm/XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2W9hauQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2W9hauQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFCDC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754993393;
	bh=e2tVAQgsg7kFSQnhIuRRK4KrxdKPvEwPijMPTlBGBFM=;
	h=To:Subject:From:Date:From;
	b=V2W9hauQJanC/O7eJZNK7q0OokM1PYkYPAZKb6ZFs0EDj45R+fSFE7YpH3ZD2ccw7
	 a0XtKjUTMc62Nz4PqKCdpPn8u1aaKqxDClxk/9vCX8c84mfZ8wigMRbvNHPmSlkhSa
	 7C2XS2u0ze45OTakcsEFj8mafMTpSAp/u8OChsepUYptPD28nIkZnuR4tsZSRCc/Wc
	 mcmnYBwAuDgC9FsxiUkSYrWub2Ix23LgxreCWMdF4yd3oku8gj5+1fRBLl1cdcXDQQ
	 WUOLxYGTttn4g1lgwKKBDECCoWOhvqfMAPtjA3ryYsL1d2eIT8vsdpDs2tr8U5jU+A
	 MFRtY6oCDyn5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE4C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499339357.21395.5199473671380859624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83554a6a31ddb1622d8e3202403b603f65b7e3cc6b40d4330841f25afeae834e
Date: Tue, 12 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754993393
