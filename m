Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147142980C9
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749563994; cv=none; b=s5zK45MJ4PPn1b0ilh2qY9Llz5gPSEaeMteT1lN78EhPxqMEQzMRLhF4U8pIJMcUA1f4Oot2fJzuSOC4jyaotp88527TNfFhzeMo8vKVouIchbuETFNz3XKFoe6Wo7XZkkVMZL7hkrIPt3l04f7hTDNycgVsFnroERPWNhFVJ5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749563994; c=relaxed/simple;
	bh=X7prqitJuKmkXVVVp8c70Al+/Nz73Zz5Jrr6AzA/EOQ=;
	h=To:Subject:From:Message-Id:Date; b=ilw9SYhdP0ag6VJ4GFQ1e6r8QKniiiJV0Ai+uqxpDS9/Pa0S+XGtpwXYS9LknI/+bAvAZwFsQPQbk2+6BvHWH2tj3WNYx9Pu1h5qaylatUthXYBoO0Y8hGOkRe6xQ9zfqHHjRntBOunlvJiqPwXqwQSeUhme7okcZ+/WZmNYENM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APRFGKQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APRFGKQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34CFC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749563993;
	bh=X7prqitJuKmkXVVVp8c70Al+/Nz73Zz5Jrr6AzA/EOQ=;
	h=To:Subject:From:Date:From;
	b=APRFGKQ1hzilcPqTAWVv6NUOVUu03JIfTB+8qjndCH1g+4KPbtZSWlP13y6c9XOYc
	 YcZJnZ9+zvpakMBo3SBW1Fi9CU2MUsV8RL2Hdyur6t3CSu4KIauozzUkbpeJCtcl+l
	 e+D2v6K308LMzlh7pxt8aYy6E62etsboGCdMRrPjSNkN1sOjmdLiDVk6q/HY+2xYY2
	 fjOaO9IQodyuIFzRhYdK77oERWrqesNK50bp0GKKZMr4EkdSRp/k7V56rN41wgpM+f
	 jK2Bu5O9EoDL7EdA8uQfqs3V3UzghV8v2xHaqxMovnPYLvkRSyR6tIY5Du6e5FbSYH
	 ZTXP1sXgwmTmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FAEC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956399359.14648.11976157545335982667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64e4d26befaaddbda2cd4c083f4501e7e50a332336c6190ab68851a14064bb1
Date: Tue, 10 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749563993
