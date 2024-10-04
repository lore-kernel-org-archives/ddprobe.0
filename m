Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBD754767
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728064554; cv=none; b=uZu9SFGJzOSooCy9sM/1Hhi0mNzQPVnQivTyDZ6ipG5ct4t7jOWRR0CLCdIbU/l03RjM2VzY7P2GSNbcFqmNZLgRvv+9pFw7hOukiK5/LuOafRjFARinIA+Cj7EoJWl1M1Cnuxc83jRft0drikLPKCfp7+PH4S/pxDbPEVRes14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728064554; c=relaxed/simple;
	bh=L9tfW1mDAPzCiGWN4fsNwl+d3hPPjZn2kULVPvBM91I=;
	h=To:Subject:From:Message-Id:Date; b=IOrASFtsXzVHGtFCWyqmusGw+5sMHL7rNzCX1qFh3kzQcu3/T3TBwZpAU0eOJ1TUi2pEvoOv5lqz1mUdwcNdZorqy4mp0qx+d7X+qHZtCgLuADD7ULjbvsM/RFf/FqLZQNPbU4ZuxyiDViTZkZpoxiYWwhHsauhQuN2zkGaeQT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvwsvVEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvwsvVEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD14C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728064553;
	bh=L9tfW1mDAPzCiGWN4fsNwl+d3hPPjZn2kULVPvBM91I=;
	h=To:Subject:From:Date:From;
	b=ZvwsvVEnPOFZvheUvnHNpocyTxxcI+0lHiEKBoFqPyOsQBO/IgghODMq6ugRxN+KR
	 0hkzbm1TRITFdX5eaZZba5S3OS4Oz0IXo/CZ4DoH3ELHPORR0J8zKfR/zF0qm1O1Xh
	 QWTJwOmRNhHGesC/9cQ3I3SVO8Mmz+bTDwgO2rooRl3UtJjXVbMCmwWKwUBxXeVHn1
	 wHt/JU3KGBS9B1B3fmqA3LQ1mu5K+cdtWtwRzIGL9FWPrjTUKwPS6BClxdNxbpPOBu
	 3tZ2YqT18r/NzN2u4bD0HFGsdupDLdIRaeQ35gXk3HWdA2cFLkmoTjFMKwFkBKnoi+
	 Brm4+IUOEnhTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA692CF8856
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806455368.17595.8941971867503033026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52551f716dac9aa2b8fc86f0aeea6f16586d95e2bde27736eb5f8e82aa81a76
Date: Fri, 04 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728064553
