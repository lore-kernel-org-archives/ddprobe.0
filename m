Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FEC566A
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726724154; cv=none; b=IV0BbrMpYpHa8NUxW3S3TYAyAKu7gHcsqiv2fVaBTGt1rn4DFORDhHO+/vKKm7dfRF/IJlnEWFJnoW/CcPQiifiM8DTYnFRQbCHhgchFuQzPfDsjsXMkCyJ61eUpMxsw7t5SGoLaGIf90ZoH2EHzk3vasFeOG3PHzY7OsYJ42dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726724154; c=relaxed/simple;
	bh=jsKixgWrGkweDhK519/pAs4epVYZiT4+HQxo9WHr8Fs=;
	h=To:Subject:From:Message-Id:Date; b=UNYEjjqHUwA/kwLtvCaEHpPHycurzVm7As8k0fjNYbu7113oLeH84zdDeZmQCvxLDZddHV3tPOd/WNSDjhOPEOVZ789S3VqMjiBsmfgXUFPK1upzn54Gp4s3M1rdGgmxmnkHGaoFdih5lI7CLR5FDlwnmBOX8ZcsVkxq3y7q6xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPqASs07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPqASs07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99CCC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726724153;
	bh=jsKixgWrGkweDhK519/pAs4epVYZiT4+HQxo9WHr8Fs=;
	h=To:Subject:From:Date:From;
	b=XPqASs07Zj3iWBOn8RG7lDfPrHkM49utp0A+VsfnnxUH/EH4gZnhIw/Hdhl782Q5L
	 8fZbZWwMSiCXItV1dt3C5sBuduL096EdEWPTBJoz0Yq/bhEAy1r5o1rHGPFTmkaasx
	 UFu9d2PBZZyHNtW5zFprHaUo55QMtl5XPHvyiRjBa1LMWY7ZhIsHChBun7tgkcp2ww
	 Y3zn0wIZrLrqpo+p15PDXzdVhPDYPMSY/+C1y+hFWCNsMMFIzZdhEFT3ahBnGEGUZ6
	 JhkqK4+zo5Tb7Khcj8004VUnjivj/h1oRSnt3TvfvacFqGjFXJtP0EIiLVoxZdI8NT
	 8MAxJBT93w0wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93035CE8D49
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172672415358.2589.1895607550962415244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a435900cbb9cdc318c81c019cfe924284c58075bd3909af987981460066a1d9
Date: Thu, 19 Sep 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726724153
