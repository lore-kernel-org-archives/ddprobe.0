Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32846175D59
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 23:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726703755; cv=none; b=ucoaUnm4GNQxs6PqsBlmHsOVSLVq0jCfS5rWgAmXom/bO9teknsy4GJ21ANoF79IT9Wflg+qzo+YgtuXhEhk+UycOdt4XlpUU6JnUGDOb2mGXETAEOug2BqKhCGLXE1mEJLyId33GilY5ad1nKC59Xghg3yoRnD2Sc5EhGEl6tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726703755; c=relaxed/simple;
	bh=rRnWagHUhgyyfTF4GVQ8xyWzaDFzeYGr2w96Dw2lLtM=;
	h=To:Subject:From:Message-Id:Date; b=aV2/3qlJiMAPvYh6pKipZqCio8YO7hy3XI9CBNzEaxyIDyNdwDVN0xQlVD/CHGhDdqZLT22kkszvpDnnFyRJu4VMlqxlR68kheOKVkRSolo942YsVj+onWH9QKl3MYia3JkaaIrUCvtRDxRoaRAFX1nLkvKC5587toC6iBHglRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rm/RD3Jq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rm/RD3Jq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FF4C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726703754;
	bh=rRnWagHUhgyyfTF4GVQ8xyWzaDFzeYGr2w96Dw2lLtM=;
	h=To:Subject:From:Date:From;
	b=Rm/RD3JqLtHtcMzpJy2ni2pVZn75VkPScwzQL+TURx9PL4A8i5sdhBs8/7yMD0gCY
	 0di8MfB8kG331LjKE1vQ8cWg21hsjDIemoiqRE5q5B0pI1eSE4PvEsc/r7yAKuOABs
	 po9F/QLHE6tC1dkhT99jGvw5YtQfsUu8Cw4gnsz5s/UknARQpf/OMLo4lSYnVUcdQD
	 TgeydMOcyoNFCJxJcGqo2k3q3vAGpt/wcG2ugrqcV52rVQLmER1hzctT8GpK5ktjw+
	 qTaFoordPpGgxvqYuW3OMpMpS+dvwXnmZzJijDsMinIaanztoGA+VLwar92SfYtOSE
	 V04Ih+B50h6eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979DFCDD561
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172670375359.9699.1242203482368296536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212e4ddc7dec9d5faa0646d11f751fa207bd555d1765484becb94016373aa8cf
Date: Wed, 18 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726703753
