Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98903148DA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773367493; cv=none; b=BGCpNu6ZzrL+rMvyaBKwv8wxv+Yl4/IPHBgfIYb6jghMwRIYeESMEXivnGDkLDkU5pRuyqmVkt3d7BqGbGdwz0KhMsAQ3lSOGezwWt9i+hrqQfKijRaD2Xw97KPZHA1WGqn1NQTBzhS0gFTqMWfTuwD/hVWlQzDSibCxNfGCESM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773367493; c=relaxed/simple;
	bh=4kZARZLHPXeKU5es5kzMpKUSBF8PtfyI3mOfbq3CaoM=;
	h=To:Subject:From:Message-Id:Date; b=nQgWR+pBuhlaGATUcpa/gAZTE9+xBj15sTN5AFc+jzE+BmgGeKRSfdCR2CCYaEFou4DlvJrlseGk0Dl6XOD8SpfsOSNxZDb1BOELl8EP4LSHR3RRt3sLQxNPCH2M8yL2oih6hfOTGWzjzJySAPRhQYtTXlaSDyaRR6sNdcxp4kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYVwxz+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYVwxz+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2D7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773367493;
	bh=4kZARZLHPXeKU5es5kzMpKUSBF8PtfyI3mOfbq3CaoM=;
	h=To:Subject:From:Date:From;
	b=oYVwxz+tTGxbhYfnBk8pXXbxjTZe4M/hXoNbCk7ujB39NINMJ953i352DuGwL0I5K
	 IhvRESMpt9AanGLfccKR7X+1n8fYPSlDiFYCU98UHgXngGo96wDXd3xwh3meVGGLdB
	 T8AyUb1/bSRFtNHzqBxPv7Xy49uGwOPKMVQbLtcm2vr4bGew7pbbkbKSrYHJW0Nx2p
	 hk1zh2e+Z9/qw33aWxjd4XOEi2wtjKWtFqZOOlhb4re5h9u500o4lFzOafQzz4Yr/N
	 wWLVH0C2rDSBWamNF+B95B2GjTBRZyCAARhnCG125nWDpp/4ZU8d/OKHoPjca9/F9D
	 DyUayNIqHVA3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F374106FD67
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336749357.19514.16413921324248388244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f007066b94f6a81fad321bb42bdd54edd1e125a9eb6d9f775f042e29c8d380
Date: Fri, 13 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773367493
