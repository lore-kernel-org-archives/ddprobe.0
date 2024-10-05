Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A70327452
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728110154; cv=none; b=tJFXOJCYNPzw012dxbqzG8OPMxtYMPDLdZIM+at8F/F0+n7aqiRH39kRM6ed/mqmvUiwrMNCHC8iGlViq/tNub99L902hWWfiaT+LDA/GLgU5yq5oZYRqCex7kDVM5wR8fiRZzGVoromOls9/aqv1KUJ4ohNpBl61sLQz04rLSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728110154; c=relaxed/simple;
	bh=U/8VzJLWUx5Mi7E5G1VWlQzogZE1UgPSse0aWN0oPak=;
	h=To:Subject:From:Message-Id:Date; b=iFiqwotkIdj1iLiLhKpeL33z5CFDAJPSxROLdOxIe8muvKmaeaez3AB+V8ONJiFGckP3EHN5bvrmK5Shbwo7BYAiS7zGuIBplJJwV/ZK8l0jaFSe1J63zgM5yOEHWc+L9oN1vhF5BKfB55FqHYxDjCc6vcmaV0eeolbpHBAjeaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL4sz7Ab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oL4sz7Ab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE561C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728110153;
	bh=U/8VzJLWUx5Mi7E5G1VWlQzogZE1UgPSse0aWN0oPak=;
	h=To:Subject:From:Date:From;
	b=oL4sz7AbRIFS6C59mbZv6mS1+AemocY4U/1+arzQosM7a9RUXvVyfGec7pQRlo0zZ
	 Lv5GAornuXf06zVxUAWFxrkzQNTipyl2WxY/sfe3AWmiQXdU8NEMUYchER6KWiaLeU
	 BrROHAmag7BNVgPmfTAEJFDHkmXUMhcqgh+Z2VOOQA04AiKzXiYkGSN6nYni1OysQW
	 NSoJB61Eb2HEQwc3gCWmaZ6/9s0biyvrlSjgWqqYtByk4nCP/ODTn9dUvYgRlDOr/B
	 t3GngNnmNp9KKnKpfTcRfoYhe0+f9uzTs7rdTL+WtDhVKgCdHd8qn16FVoOTbYjIg0
	 FQW3eSNM7aXCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DFFCF8851
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811015360.16347.10432379627069698933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99a3dd934ded83770600477615429c5f4ec884936434a980962b77839fef721
Date: Sat, 05 Oct 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728110153
