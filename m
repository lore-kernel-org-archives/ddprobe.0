Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351215680
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726835754; cv=none; b=bPiJE1ZvqbAIo/LBEfvN2H+KgXAo3R5sFgppmdBJnsv0CEQJAxkrq/23/82PhtmqkKLtLWswyQWh5CoBsYdcpYJIvBMDTkECHjcPEG7NgPgtg9GI3Pkk4EAQ3uU4wtWKNbS3XYQWXDwVFCXNuGj7PL8yeZO9/cgtaBs23cqMyd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726835754; c=relaxed/simple;
	bh=h4dKhvr0QObiS0Gq0mqog3pLjDreUiILsLxLYeQ0MQY=;
	h=To:Subject:From:Message-Id:Date; b=U3EJJMNUnKHc/iTLRsv/vyUVHgOv86XzFPsRXYZLAXqoJnPVRRYuEYDKplXmZQAipWkuxCnFRwVg7WTgkfiijDVX98LYvVrTBtKnejQyent3EQKqOYHuQJVnOV3Wg2xmf/UzIEMrFBuj5kXTQILtvdKF1IUORxgluAxb7BqnKP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG4YR8f5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG4YR8f5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2D2C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726835753;
	bh=h4dKhvr0QObiS0Gq0mqog3pLjDreUiILsLxLYeQ0MQY=;
	h=To:Subject:From:Date:From;
	b=uG4YR8f5afV5tUwtq05ocJQGJ1F7T7Cq1KddPEeHNHeklxFLxo4L8Jw2vBQooMPST
	 TIUBXxIGX+fdWQXECK5Aklk3+8RlOmshXPBk2KmsR3F94acPLh4HS+2wc35E/pCzD6
	 dxs90a7N3uKYoMLZ8sPxrv7YstACmhUpA40o+vXYGFHlkAfkxGtJu1u8hp8kCZHE4B
	 hMcxRAEtmG4OWCvcwGURvV0V4nVRSK4gwGcMqbHlRLMn6bevdAui9Pn9SrR7SQEghM
	 m7Hv4Udxmaa7eLm5WU8EyByh1CWA+5Q7zqSeoyjNyCu6lqgbvM13ad6fADx5s53vjN
	 opbKfCHrvzp1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94202C78831
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683575359.9318.11657766163155410003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f56cd69e5d0f677221cf9ab7dc960a7c18d125493b44cfe8b373d986243d963
Date: Fri, 20 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726835753
