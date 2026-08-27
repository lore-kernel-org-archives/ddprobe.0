Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB7A272E56
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787792434; cv=none; b=C0mduNkw6yrlBES7tneIlY251zckfEaYjOL+GbDduQPy24gzD3jI+FPxw2UkpwPimBe51Cpx4TfrxHsu+vCa3qsM2OAq0ysomqZNnEbvoo97b5ESvX5/vCBHR5tKL82eNqYD7qaHdJ4gbh22FiraNiLnPrDhrrHvda/gbc53tiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787792434; c=relaxed/simple;
	bh=BcrE+YuxuI2BBOUcyQiefhaia4EQCXCklMzewr87W2A=;
	h=To:Subject:From:Message-Id:Date; b=nMBwqn+7lXXu2ONegb31P5cpt8OywtNzPCTKP9AGyjFkcBKEyn8T7ZI+AFLhoom7X3asPt4ZpxKFPOVGwocugVC8SMijvIDS4fvYQbNZv4tj9/1tE9EnS4oRKhJK8mMcMPdpd3XMXptV0k1Djn85XzGbjnkF1QJR0c/E4cI8RLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTN5UPMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTN5UPMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3792C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787792433;
	bh=BcrE+YuxuI2BBOUcyQiefhaia4EQCXCklMzewr87W2A=;
	h=To:Subject:From:Date:From;
	b=JTN5UPMDfNa/Own5xrS947+l1WGYcaendnyg5UePiX0szmHEpcrXVdVC+pSceXymt
	 PMF0uVDHYJWAwIdfIgFnZibkzH89tRETJSJitlwnIl0fewKYdAgtRDgvj9s23hk8x1
	 PXl9nHHt1WSpipG3KQhgU9Sew6633FHPXlX3malMI2IH/FmdkR+9hx3z6X2IUqL17h
	 wwP5DcfejQRCumnqVd8uaRAXLoJoUWP3MFbDhbD2IA3ZoqwU4R0re7jPJiT+xUQWCY
	 80bVcHwY8Vdn88KbtK5Hd85ZS5SZkBHy6gNddKs9QnhO2ioV84FBMs+e+LxMvtMHdz
	 QhlA2ZMu+TX8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B033CC5DF97
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779243369.16107.6074682004893634794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80867fe406c6e519aa40357456b80b3a01af02853ba657b7c3117bf4e8c24df
Date: Thu, 27 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787792433
