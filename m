Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39144155335
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750912794; cv=none; b=qpMHJCfQ/9n4dlJ3lS57cuGCqgmArrtAjG3Mj8syC6S8MjGVBDrUCpAuVT3clexQnBBp8Xq5dotCC3MoOUkk8JKhNmmdfJbIgOwu7a94caBxrgqa4PyuM43WwjfG50mDXN1D1Sr5TIt/lcJvCyPWfCqLl4z3K/nXrOGQ/llxlH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750912794; c=relaxed/simple;
	bh=AyxjWl+SB3fOW0Rv5XmTmRrgztJ/zpdgpv8cA4GNlxk=;
	h=To:Subject:From:Message-Id:Date; b=dXSfVlSUnHfC7MQalT+vghKpeDjJhzwXzeghUuOYQMYa8gSKJip/tUz7pMvirrBf+lT6cjGJ29WrOJVSXwkq9SEiibmjuA8zr0vFxe4fOGkdhMIeNYYpd5eItxdChDJRvXjPTcSGVhA3Eut0dHE6zC8T8OLsk2lJvJYy8W8VqiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3ahhRnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3ahhRnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA63C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750912793;
	bh=AyxjWl+SB3fOW0Rv5XmTmRrgztJ/zpdgpv8cA4GNlxk=;
	h=To:Subject:From:Date:From;
	b=Y3ahhRnLxD26tzvujH4lbIFEoyW9FYAN/xFHhcwjwjrgX5cXfiidDz4sfpSRzYzjQ
	 lgaZv1lyp8oMNGtkvO2oi79/3T2q/5oMI81C6Hm2iNb7qXygxkXy1ghsLbobVEiks+
	 RMC2ZQlcGYhaKqGOPchPvINDRSWUyDoc0yiSbIXKyRGAA4KhKeAhJnQCOIzhsETzD0
	 H+EFv8pH6hcUo0blOCAoep6gIvH2u+YvmPIOa4jc0AXLDsz8c5gMEHVG881kQsKpje
	 Nk3wSKVlvoIgyjzbHe8hKMMmH6566PV1j140b1A75BcsfzsUgBNfhiaijMx0MvaMZh
	 R+XoK65dzKYMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E4AC7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091279359.23598.2100506651529514532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec7cb053559efa7a260aff41429fd0d60219f0091e8625acdb6a73f494cc85e
Date: Thu, 26 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750912793
