Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDAE10A3F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714448543; cv=none; b=D6bS1Jtc6pK+CUbb2b1rVjEdTx8JvrsBCFev9YiD8RrvDdNVYkioiIyGrqxdM9oGzl7v3WgbzJTHNVbev+E4yOzchO7IziJgdAeVgNcbJ28RQD1LLhNuqgqNZD/5pc2/d0546hy1RXrc7uYfuS6n/xbteI9pFBCBCRo2TOCM1a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714448543; c=relaxed/simple;
	bh=FildttQHDgcZpiIKfIwVr3SpjBG09QvXUr+Ptq2VhFE=;
	h=To:Subject:From:Message-Id:Date; b=Cf/rktqv9z5TOCEdxDQ7FdUoByrXyhS+N0JwuI6QIhoQ8ZM57fqXkamhmH91u76uKJ8v+KLKxPL15Z7tB7g1uBIKuOm5QcoiKfJw+IZm9aidRKTeJtuQoRdLjsaPcm2Fb/B4Q90m55Nj62fg+BUCQH36+hHm0stYgE9V5bwUhS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5Tp6stp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5Tp6stp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D801AC116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714448542;
	bh=FildttQHDgcZpiIKfIwVr3SpjBG09QvXUr+Ptq2VhFE=;
	h=To:Subject:From:Date:From;
	b=t5Tp6stpCBCZUwz9nr2Mt+JMrt8/m5zQyGx1afsnzQzm85r298JsSLlEXtbPjhTiI
	 XxiVKJm96bryUbHlQCga42W3o3aa8e7EqT3GC/GAotmTCyOZiZxtkEm8NpASobJ0Pk
	 Je3v3PAU1VxJtB6bbuniMhh1P7qmHDPWoDz2yzQ7M0lN/mbxfSYBHTfatdqMf+cMsm
	 7oMgN4g5GDIc5WzWC/NcoPWGtlT8y/Bfe/YZ0prRnTxu0KABPQ3Vj0Wgi5N9BZ6Ydu
	 yTGB2dnRKTQ+i1Yd9eh/LwAcnJENbooJtekNx4a8Tiy1H3+u5VDzU8bUvk0NkZtXSN
	 6ac7CtqfhEL7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41FAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171444854277.25484.1999418771743009803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc582460be7aed0f6059585341915afd8bb8d37e9a5c2a65d5c34223bb116cba
Date: Tue, 30 Apr 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714448542
