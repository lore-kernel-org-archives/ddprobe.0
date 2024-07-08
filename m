Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43382AD55
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720458983; cv=none; b=XcHRD8MPXt7URopvgyYB1XJLyAJT96pBU2RW8n/aYS8SY2ViqVO+hTNnMDr2oa/hhJYIqNjvXkMasKsaZ6BzEQZIepGgKYPImWIKoxeZg2+CDjfLaiQjW3A9jyPSDPSPJ3fNOIhlDMf06+S137uudfZpw0ywpbekIjPdQivtDFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720458983; c=relaxed/simple;
	bh=EUyBIaC7ciiZ2Zwk5PNUK4exUZDOcF1BGOn9kbJHXok=;
	h=To:Subject:From:Message-Id:Date; b=isyit/yDQxv1RGqeNavUTH0njPstJD8e6SeoV7UxhxyXzSHps0ATCz3Glcbp4PMExnUMYJ627iuOC3hzHxR25iBPtDrtNiQY7g+DdT30V5zTFREluDKRGkWGSOBckWi8Xrp2qsucK0FRw0wjTjSf7mGLuli7wR7u0j8WZu21D7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0oIvthm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0oIvthm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6FFC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720458982;
	bh=EUyBIaC7ciiZ2Zwk5PNUK4exUZDOcF1BGOn9kbJHXok=;
	h=To:Subject:From:Date:From;
	b=k0oIvthm+VVy1QJA3oE+aYrdrFsj9Y9fwz+E8cVpHgYm+dGfd2265C4KbC+frLYhA
	 5+FIDazVDL9jX30ow/q9WYbY4KE5Bk/C40/xQkaWLAJ70NH4TZCa2oum2LbuyJkSek
	 drU5JM6OTc+Y0sMGZFNBvh8FBeqaVkvYCi36i2LDRV+ONfOrj+x8Wu5tfj6edBhTn4
	 pDHatlH0iI3IrH6pkqELO0BqabBBUAD4yw1Y8km4cIkgcplAYyYbu6gAEyfUpXKjTZ
	 Q3x8GbZBGEF7gAoHCYHA40mpIOt1tyiY4jHjE/VELlVohVwJ5l9bvhw9LmTL+bCiv9
	 Pa9X4EeoGPjUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA58DC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045898275.14552.832412931251322586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab00c577722aa6f2b4f9881c2447b63051ddbd2857d520f0e1c451c05fd75be
Date: Mon, 08 Jul 2024 17:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720458982
