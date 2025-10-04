Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288FE10F1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759553394; cv=none; b=P1Q5Z5Z2q4vMAFYjVK+i21pu5vbAZDvGMouHhoSJdSFGFT04seKsDhB3eK0prNNk2MBlXRa7lACgI+KkpSyARCqPk2nPSBT5SWjcboMFPwd0PPZtk5IM6jXcPg4vOSe1FxtNo0WfnK5zQVD33Zew5V/ThWBE5flgAtrsm99sOmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759553394; c=relaxed/simple;
	bh=Xaxxktl4fYKkXhs9ZqI0OvLQnRoIt6OX5VzD2iSyI6o=;
	h=To:Subject:From:Message-Id:Date; b=ceo60Oso5rJX9KkzriG+HWkPey66NDkhcU4VwGAh2OganHhcyVdnTybX0YTfZI8QiKhqwigai/2oqjW8mhu+PkFvXwGEPvadr9gufNYkHA+n5KwzyHMw23AZv8/5Ms2jcQJmghnDJ2Nmej2GASXxOHkOj9w0uKm1phw5G3Lyrik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlLgO/Jh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlLgO/Jh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1CBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759553393;
	bh=Xaxxktl4fYKkXhs9ZqI0OvLQnRoIt6OX5VzD2iSyI6o=;
	h=To:Subject:From:Date:From;
	b=rlLgO/JhsQZpsKEySJMJgjsEjW5AvHtWLd4XM65x9XaeAOR5BZsTJRDNQBzqZKDtU
	 1Nf4a7crDVXN3lK2eGRR70EsEdfu1hsJ2ZoZ7dAy2fHi3T6YukyxYzNToJBDPCnXMr
	 XkQPTuYbSHibZk7bvrgROKSDWJag6Fm6SDJbXwjXTMjk0EC+uIpXh9OrOtgJE5Hnqe
	 cs48L/EdQeFHkcpkOOuUxtuCIsJCUGTwb+UoIp0onWGMSdzvYuq8WVQiM2E4pY9COS
	 IyT3dbS6YYchrFfvpOA+TloXRWJ6ob7edyqk3fMDioP+drM8D8tokg8bt3pduBDi/K
	 m13Zs85SizjoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFD6CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955339360.27813.9822801408978537206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcac5d70b2c22d04ad87d3423bd15b5de1e6af42afe5a11987429c03f56572bc
Date: Sat, 04 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759553393
