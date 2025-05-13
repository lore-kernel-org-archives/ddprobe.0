Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DE92556E
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747114794; cv=none; b=RvcD+DKEkwQrbhTjKUyqpc+ixdxqwp2fz3YWiRpiSPRfko39+kEAQgR1LfhYTemwHDoHX2tJocH/zViha+T6fJ9ygGUE7gf69sFiAIRUg3S17sLK+x2062ZKr6PRgxuwT+crtbzPA3Y0CiRGRVOzMyrmkjqfoV0fqnuBVjgDPDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747114794; c=relaxed/simple;
	bh=J3Ppz8axsLVK2cjMub1hsoPZVe0amMUwcQmba7tZ/3Q=;
	h=To:Subject:From:Message-Id:Date; b=JffD+tgDsiewVU10RAjJDaGOXEI+SK33sDEeFCD1t1IeWUWOVY9jQRwF8oIznr+LhfJfqY78rcj0hEXztSp1rh4e+LlAUrWLskmcH2g38488axvNiUbXbH1dIiiUh1imFI0zQII8jVlMQ2jcap+uZT+D082KNUYU7mbJe5Lf2og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFQnjnRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFQnjnRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA877C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747114793;
	bh=J3Ppz8axsLVK2cjMub1hsoPZVe0amMUwcQmba7tZ/3Q=;
	h=To:Subject:From:Date:From;
	b=BFQnjnRIBUT+OR5rqpc5DRs2QnBt82tXTgpeu+fp60w+6ezM0ip5ssAlpdgngBjqJ
	 fYWEO05xDNa2Fkx27Z1RjunxOQ5tF8xmV1qgCBV4wgBI5ergGqJlj1PM/lpyOwSqfp
	 oUCQI9kRdEVwal7Icpmd45DZVCzKA/r689F95EZxhNgK9/ZqLeIoGsnf9kGizg3a4Q
	 lSRrgAftOBriYSnop1pmem+VHmyolqDiPHBBhTpM+SSiv+CuEXWo19/SjnkKEtBJel
	 YeZG/Qk95FbYNWnxDtmtFAPOVtGa2zbvsY6eBHNLXq2gspYLSyxTpkK+IJNuYerlpY
	 kAdgKrIga4vJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A9AC3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711479359.3157.10711362175004963421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8921e85cdf615ee3b52625e8162be0d3fd749cfed12032bf64b3c78261c2ec7
Date: Tue, 13 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747114793
