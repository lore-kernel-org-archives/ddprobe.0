Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F141DEFF5
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756656595; cv=none; b=bERp+eAZM9OgDHHfzPHxPIkW9iXmg6usU7DUD2VkZb/h5DZ9SuxNiZOVjM8nAEU0wiX6+iYuEDwWnuYtRCblxfgVjFgVIOoxP684yYsiETZ+gvKFo8+Mqc6GkkwY0WeLelsmqbLGfiNxS9TNcNuU7yKZ3FcQv8Z3tGd3uKdeu+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756656595; c=relaxed/simple;
	bh=jIwyTsw2RCP0DouixOUVZF8zWpwMte94QE1RgleofJo=;
	h=To:Subject:From:Message-Id:Date; b=qEYBx6C7HI5YDX1vZzCmZCBbusbLBYZe0e5ESbSuvMaX3XGa1JRo6DEA6UopE4FjV9uwlejnt3ZUQFk5NTOjlUtgCxPSO7KoM1kIvUCvF/Nh6bRbnpAA6OZVvF00g7H8jiFK0JCu1lkqcdZUKV9/e+64aIXDb6zyqHzx3r4lr9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDHqwn9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDHqwn9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B11C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756656593;
	bh=jIwyTsw2RCP0DouixOUVZF8zWpwMte94QE1RgleofJo=;
	h=To:Subject:From:Date:From;
	b=VDHqwn9BmuumoaMqoDqXRqlzk5Zgv728WEnZdb047gtv6ftSYxKCmn4wCF22HioX8
	 pGYBWQVs9x3TbNdbTyq33nPkalNfRbXiPt18eRQ7tZ+Tvuxd/lRSyyMLI+gF8HRZHH
	 YRg7Y3SKpFuYv59vVb10rIgB/5F4/GrS3ack7kcxPrqIFYQzxrallSWxupJ99FsX1V
	 yDGw+7jjndrtcrlfJen9JeNC7j4YRt0LPnoD4RyU4Z59ednlRodfEOH1cXgPBXheNg
	 ZoWyDgxZHqdXo30OGe2ONJTtCkdMiYuH3jBPA3SK0UmYA5qjTvop+8NgBJm7H3Kgl6
	 iECaJh/xV6LEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC8CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665659357.15743.12606416083062878084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f6ae1860d1b3abc622ab13824b3ed9948171b016d959b1e9d8157f81b305ca
Date: Sun, 31 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756656593
