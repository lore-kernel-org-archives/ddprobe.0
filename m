Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BF634D3B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761958194; cv=none; b=I/E5jRx/3SKnECXVdx4r6ebXO3QhNIx10FHoCG4HVFqyu9eEcMbST12UEp2rE7y9EBqA/TQOAhHTgSM3XXHzdAj8mEH4uOXoWroEaSyYOxREF0O5zlI3l625gzKw5iHhORffto11VhVnTn5P5S2oEheHA7oyZVga5adw+zHVg3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761958194; c=relaxed/simple;
	bh=5axakc4B4uVywi62Euc2od2J/OoTN4PuTlG9rbnDh9Y=;
	h=To:Subject:From:Message-Id:Date; b=QdJ6aom1v2GWrAq54tgxJcOxHtgL45E6qlbd52uVt3ir1MgVmMCE8vXnfGOBoCUOpD+4lgiTgu32kUiGU3Es7dJkAIrNgcOEZxLHMsETV9cPNZvCxzQVfGt3fyibNmCZl1jBpOPdCm0NGdXde07FYTqP0UBl0fBY3jMbaj/mGUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdsqNkcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdsqNkcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFACC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761958193;
	bh=5axakc4B4uVywi62Euc2od2J/OoTN4PuTlG9rbnDh9Y=;
	h=To:Subject:From:Date:From;
	b=kdsqNkcpZIyXYl5MfAiSkfTAkRhDqTapjlkK3ke1g20vde2zrQhA8kw6pvq33MGGy
	 kyocf7cpymVL1c1/VCoCCVFv5j49iEuCPZQY4RIVhxhKNs7p/s2VJo27ff/4KDvTdz
	 pcdz0MGCIXiXRsnDViEaynhsCCWCRaAF0DHrnGNgNQq8+pHAzq2BRVdUr4dwb5A8Az
	 VYpwlt8vMOx7IfsOcRpvDJRi08Qs8N/RY964x/4HcDUpYNR0O/in9XYpx4NS5raEMU
	 NsScx/PFFtWkgHjqaTkKH7fGjZCJohZO1UbibUfVr+WqZ336ibOp+zCDP4DPuVw2NF
	 0dMprEslltDCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBCCCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195819358.11271.3213076003372761028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccc3018b24575301540ce87016569255cf87bea986b90f61fb506fdeb39258d6
Date: Sat, 01 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761958193
