Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5D930CDB1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758205194; cv=none; b=pr+p6wTNq2oE0uYCjSoS/Fp0DIdaZoSd7LKxUXO8+Fk2g2V1yXzaWpjn4ejysZ15XKvsrmMDw3NT2wiY1alJcUUhySt7YpTi9Oz31+HWvJdDDZBhKSm37N61KGCrcjjzRpJ7B339JN5QNe5PHnstja6c3ylI0PIXXAjrVMcrcsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758205194; c=relaxed/simple;
	bh=XbcWtdjCLMw/8gfw/Lo0yhYnrN3No2Z0oaH5Qfmx6RE=;
	h=To:Subject:From:Message-Id:Date; b=id2o8mxctXOg6qM1+TNgZgtYLLyW3liKpsiQb/DQNWOWSVCIjhyCNxWpbe8mUHMge4EgQ77WR18rxh0IPXgroYEatHN6DqRgBFQfEDpqaJSlzrye/ZXgZ2xOicw5Rk/iADsEVapGcM4ebVOYgxCKijOoTD26FKfAn9HyWnuS1CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OipkTvLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OipkTvLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8925C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758205193;
	bh=XbcWtdjCLMw/8gfw/Lo0yhYnrN3No2Z0oaH5Qfmx6RE=;
	h=To:Subject:From:Date:From;
	b=OipkTvLaU8xSGhPea6D48t1kLV8GAfofR31yQ9RP8EDGpY5EtYEhAMvwGk1Yuk1Xx
	 NjMbh5FRvlhUIL3Ofb/gAQA1zK+vXZdV2WKOy98/WiMM5e2mjxOODKFS3BZOUrclIp
	 4Y72xjSoXStXGZZKbdY0EWRXpKA28QdnVeugDSBjERTrtxIIuup975KRfKSsjxcKFh
	 WnOlJeNR3QUOhnieC9SMPPoW+tpjPugkWJnvCkuLfkxFO0eMAzMl58+LUc9sygwbHE
	 YO12pz1o/ImUyoQc4RfalTavtuHwiCmoBrLJOeIlDQ4Ca5gu4CyOO4XcL99Hzi1PBf
	 oABn7YhgNPBIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F54ACAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820519357.11298.6428833304542832389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efdf40a4aeb7782879f708bf52570f73f22cf9ae43a27cf7ca888c36fd6d433c
Date: Thu, 18 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758205193
