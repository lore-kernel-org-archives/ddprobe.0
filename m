Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95F11FDA92
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741953533; cv=none; b=eRwyR6aAUlZ17I+zIbgRNE+6ztrCZnfayTEHOrWe90QwOVRTeUcsCYvEwtaptwCI9ainrakRDa9707njPHWQAYb/aGb4wzxbYIBLxiaMbnmWx71vbxdA/AJoodBMW5Yh3fFqVtvSg5SDas6kX0hGma7//p/u+7Xx2sZIwhLD0GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741953533; c=relaxed/simple;
	bh=9O0EkvEy3ZOGx3kbp19zFogmLPe/NnV9PY0NWicO7kY=;
	h=To:Subject:From:Message-Id:Date; b=deIeRugA4Kmvive4lJ0oHzugfgVSWtP5QXlvkG86CTkxqW6SalJN6/1zTA080KIszYVsBI7yKBih8WSA7TkF/6E1W0Li3faKSPDPpp2cLXQvmjYqZdRMoDEZperrwWuPIhsJyPalpDCC1BtbvCxhT4vYIonkR9HIgZgUb1d6y6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJ/oIdZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJ/oIdZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBCDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741953533;
	bh=9O0EkvEy3ZOGx3kbp19zFogmLPe/NnV9PY0NWicO7kY=;
	h=To:Subject:From:Date:From;
	b=iJ/oIdZip0NQX2wsRAgufsPA+a75BwLP748mp47uH7DlFOpXQZmTRq2Nauomw6W+M
	 03PHZ2Nk0+YZjMBPLasnp88eULmBglBETR/Yu3xHRFbNUXruSqDxrjRgDr3TxFTAKC
	 tbm8gJu6SNVxSLHg+63wG5blNOEwlnYNOX+rBWbPj2Yt55WrdSuTND48W9fy/8tlm3
	 FAtvplZcB8uMd9Vwi77+gTH4HBUT51d4DSluTP7XI2JrVFYW45npErGapMqQZaAYBL
	 TB1IrhF/pVY49RgLgxykbM0b1wiWzGHRGZbq3KB8HGD+J4FQBChCIZsxiXAbt1j96A
	 T2915g5oCO5fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BE8C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195353358.30859.13061123077481813822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4405fb1bb62a1c30697554e8931949c758d3a4ebd09fa80b733135a15cf0e5c5
Date: Fri, 14 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741953533
