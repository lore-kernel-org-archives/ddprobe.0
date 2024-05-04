Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DB928EA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714800143; cv=none; b=GMN9kucLulJ+N4VUzA4WJ0JIRk0H42pIwfaqh0Bd70u7wP220No/dhHZP20OAs5PtckPIZZaomgRWaVDs+1DyZer+BfXdF+54eTz2U3/SrkaXNKvFRq1U9+nXL/X0FsGxxzHSXLPweRN6hY4xjzIrnadWVZd6h3JOsUc0Q9ruWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714800143; c=relaxed/simple;
	bh=pUc20wp4UoOjPAPWmCL3P6T/ERZkZSftLbBrtRPvc88=;
	h=To:Subject:From:Message-Id:Date; b=kAs9P8i3RiWyYWNGFV4m/8hZ0KHmiaAKdzdGwki35aylSk701aDh6KjrAdujSBO6A9qyCQ0NuTfpmrRMDXIv99x2N390uCYMDEzrYGA2Nxq1Oyge+6iLKuvcz4Jy/ITl3zSNDiq+oFb/Lz6L7FXTmzksMsBmusDzp5IAigjeFDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaOV0fMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaOV0fMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D72C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714800142;
	bh=pUc20wp4UoOjPAPWmCL3P6T/ERZkZSftLbBrtRPvc88=;
	h=To:Subject:From:Date:From;
	b=HaOV0fMv2HJAePE7MA7KQe1HXciZXnQEAMTlF4dnosyt/tO7UQZRbHsQ1aZ3eALYe
	 HpKwLfOMlYtDjRGyN3ba/WLCdSC9xuyUkJTWk0GWNOux7AaEZbvjkD3SNY/658tPGk
	 oAgT6pX2JQRwSwXiDbeeKLc9SC1mE/3yGEY08Dj6iF6c4ZF9MmFfc0Smd/PJCdYW6W
	 rz9H1aCRqzai6DgjOVQ8/e/bXq8ms0EwVTmu0CQX2MRIp2vp9DskRrpW0DhcLiwhKo
	 ga/7y/YrrUByI63+tDSLX+F3AGNOMWskOV8wvBxlCtZ8rIFPfrdPeodTxLbnm6CGHI
	 9dL2BPejaupXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A33C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480014277.4234.2843171072093868409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be80d856eef13224acd360388a7836b914e404f5136da8c62fdc153d930356b
Date: Sat, 04 May 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714800142
