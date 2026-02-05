Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C533AE6EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770297833; cv=none; b=bVFpu8VrTeyJWPOOG74W4TayMCKUks8LK85aZ388I3pRo8CtxZTeL3gkCuilQQ8k2Q3G9bi5V9xptgemrmp6jqLILj+rt8/9l5TMDeOt1A2Qo2bYHUuibmnAASd6nBdHVnjvU3KDOvbz5+XlIHurcPr5AEzp7+lBJhLsi//dPlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770297833; c=relaxed/simple;
	bh=oaWELSEefUyDM9FXDS0ZfYYwfE6K1N/PSRjfW2ZKdOE=;
	h=To:Subject:From:Message-Id:Date; b=H3qMI84si2bgqkUmIsYPXOf/KwPm3PFuPaq2VgP0mvk51Nv+2CTfP0la1puBCT2blMmx9wqh40Cni2U35y4ZjutTjlp4dE0495lHCzw3tRy9Uhcwk66a0lhQan702IN4Sa03wSwgw9BrhDsh1K5DoHELEKki8lS3AVFCHqFM2JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HG9ndSL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HG9ndSL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B952AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770297833;
	bh=oaWELSEefUyDM9FXDS0ZfYYwfE6K1N/PSRjfW2ZKdOE=;
	h=To:Subject:From:Date:From;
	b=HG9ndSL1Fo1eNnea+KoF2uzd6mllFIrCGpDx6Ie84M4Dy+ElI55iStxpM68B6pobn
	 ZOyxpAr9tyAVkQ1t4Gzc6lJ50lnyzHf4YHyYtvvEsvjw199TQDwx8/2fHjQegHDBMg
	 EbzhAkttr8l3zt0cIcAMM8qdD72AlPUh5aV2FFMYQCC0ao92YDTOIdBRTf9kC6thmL
	 jDAlcbhZ9M8buehBGdEDgDGSNdw3gOfRF3uOJlHSagLlsqePOrpPRIWYQyxVrtwOCd
	 mmrRWmDHBhXsBL1kC5yQxCNzv/nBSaAFFxAh4ipddERwqo+BY+MfHl3kkgmA+gtEna
	 DwsJ2dgyeg/tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A369EEC1EB3
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029783364.23025.10169956315233191153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2793931f2758f472e5188007928171f10132e0c9ca74e126ff877af0744acf6f
Date: Thu, 05 Feb 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770297833
