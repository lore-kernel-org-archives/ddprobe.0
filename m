Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA4623F429
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766133834; cv=none; b=MDggOT8O/SdCIVxA3I+1mBPFa2IyrSn8sRk8jDbY5Cs5hoK9syZzNBpjCMt7CP/z1kFTxbibDYXQVmJMrB3wqraZ6qZa9twvWQ8FOu0rEnmieI+mzUSFQGiDk4MkocSbqIGEpFwYLl/M9bpg+iH59iiky7FeX3pkq/gZFA02tUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766133834; c=relaxed/simple;
	bh=1IFt9CUVCcnG2pWMCazc0KKC+NqlRspPtzq8smbBOR0=;
	h=To:Subject:From:Message-Id:Date; b=HE1uoze+FGvZdtmX00he4LoR6PcnlJQgfeD1ldYJcYZ6uhLLWyTYJiGKk10GyZbjMl2ptGD/nuPUwMEGUdl1pxkEmaIe/+w4zck0LPuukBfJdvKZgr3S01mYqmTTvxVTmV3oyrrV93dhd5pUAyPtqsEoStJg1lO1bLSJm6aKl1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhdZGcmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhdZGcmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0BAC116D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766133833;
	bh=1IFt9CUVCcnG2pWMCazc0KKC+NqlRspPtzq8smbBOR0=;
	h=To:Subject:From:Date:From;
	b=KhdZGcmYs63gSNNe6Rj4Fn+PNv+KZE37byOBRhE8uUVdJGqfwywl/oh1rEJq3X6KN
	 kQxX+Q1fbweyRwVfbRDOzso6bwibkufP2/Lz6xB/5hljNKC5GvdURzj5vzkpCzME7V
	 tuw+4QS7E8Ny0Yl9Z2IMPmfF8lnnHscjn5TsOmp1m+OQ8q3X9R2gxz1XQphtNeHUDM
	 cWJkXBUWIVyRTmzYhoSM2RlmTTKcLZkmY9O3amYPKwlMr0Bt8hGhcQfcDEHeOvNpkT
	 uPG/TbT2BIfNKFEUgen9Qlnbz/7VxeSnCfpv8dyiAuRS1fC+HRDFTuj5Nhd2hXn6zc
	 nMeSvlma6C7Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C8D74961
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613383358.18834.5676133818178615381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e5ab01c4c6d260b2e5ab5cc8c9559f1e399666cde4b6fbd0a1a9799589c5ff
Date: Fri, 19 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766133833
