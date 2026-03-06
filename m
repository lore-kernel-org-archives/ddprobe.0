Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051B2219FC
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786094; cv=none; b=MLwYGnqf2xYUZow9T9wCMDI/pJTEVa7jLgzkfe/zy9cxHQXv6wZonrcKJsq56B/efR/F73o9hVposZkV1RlEfXv5Y46jDNpxOSicyk6bknAsonXrd18/PD1Iro7kWOB3CyirvGSPyl0yXTQf4+VsimUALYlYqFEpIoGDN2Nm7Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786094; c=relaxed/simple;
	bh=R2TWzeedgczIt+gtV4Tw4ijIg4YH8KeJUIySi+3mJNM=;
	h=To:Subject:From:Message-Id:Date; b=Sal50Q1beDq6jDp+hh8si1IDXaynYK3Mb5uE5jjEUXZp8yUrnUNSGBi7aiG5U1MO4tyKAy6Wps0X7zQepPf1LtXfCS20eWDDIm32GSGfLHRFEr1lJ6dTlO4xMFp1JIDc+FoxXe2J//bxCTKWWbtfpfAGsrpWJ6KNQ23RkvPmuFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch9Oj02R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch9Oj02R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADA6C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772786093;
	bh=R2TWzeedgczIt+gtV4Tw4ijIg4YH8KeJUIySi+3mJNM=;
	h=To:Subject:From:Date:From;
	b=ch9Oj02RaKvWYtFLY3BSE95DcXUatskV1vE/IsGZakUra8yKwR6uB9pHvNQ2TLvn0
	 R4NURa+yBDw7aTLimCvSIywNBbnuqgVMA5bteEzfp/5D8WG1mCilwF+7D9GEziOgVZ
	 ATrgPWGYVwMgVtNh11sSIOG0Ck8+0BuTEC9Wzarn/wN2AwWJFI3PqoiViSbi6si3k3
	 FtCNEPrZwIsalzTybiYRIf8qsG+sLIoVQQUtGeH61btGlCBnkLYJ5gppRz+ifaA0BQ
	 ghzTXcXsQxCcpEL5/SMvXUPP8W71xez1dms8tqegG2zfZbYyKgnMwxMvnUNs+ooDYs
	 PpQEmBkKF3bxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C3F0180A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278609359.9465.14198552174586538601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891f5622585e5ef60e699854c65e8b4bb6765c907681cff8f1c0b02b25e5f414
Date: Fri, 06 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772786093
