Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E011C01
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758359394; cv=none; b=jJ7XnZEWNMwpHUStJCa0jSwOuWJt+829lIH6DvGBUlfHON6gC+F+/zmzOQAiiG2XR/N+ZUIcJzj1u5D5/iUTi4dQ6jMitFU5GIRmqaTflTer26+XKJK5Ymwqu8BX6gszSmHAgGxl9hJQjpsrBKl8/m4lqX8IG4jh9SWUgTJIdAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758359394; c=relaxed/simple;
	bh=qI1so5BEk3j9fR4Vp5KGnSq7SLO5zrLVWBBWac5JabQ=;
	h=To:Subject:From:Message-Id:Date; b=tqqnoYsBIofP4SkaN3FKOzbvCwf4R2n2ehQD2/KDPeGMTTOpXCS/jW1bchfYIU/wkKut1IEqQ8vJS38WQZEIbn57rF077d7+usADDm/YR2QrwQDb22v/5n5vDvK3jHcIDTDM0hvMbXw3qSn1jDsbVdd2UPUzpBArFoOz9y+K2Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spbYALua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spbYALua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8184C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758359393;
	bh=qI1so5BEk3j9fR4Vp5KGnSq7SLO5zrLVWBBWac5JabQ=;
	h=To:Subject:From:Date:From;
	b=spbYALuay/GRluKXNPaop327K5loOKEEeepjNtPqniy0IQgjIBpB9m85fJYZihMI5
	 2DS14+KaedBEP342zVWYZ2zme4DArJm8s3YVcNG6OGAFXM7oOBLINTBptocw6+RwAm
	 To7HtaFqZz8e3ThN94Jpyg7akRCw8hjxPAMAuLJD9bdvWwLgQtIm64pKTgqP9JRtDP
	 z65SKf+ryrxgcXn2GPLAdXyKAGnQtwh4VmeQeW94kkWi1URcgxnX2/IcY+mGB9DlAm
	 XnnUNTUQGBDbxuNtnjem8GRI1v90FBvkKJ0NtHgtChJzYcZncFXsu11VnEzGl5rKgS
	 pf6hfoBv3/31Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B80CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835939359.7815.1121619705586778045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d41f033125bdc2368b9a09ceec279a397ce12793502226b99f3569be94c292
Date: Sat, 20 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758359393
