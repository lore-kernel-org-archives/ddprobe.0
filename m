Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0982F25228C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768360434; cv=none; b=s+a5VLg37gYFRBKS1PWSAtMaigRIi/SgPBuPJyZSWO3UQZNSKK8bS7gcGxTsh1Z1atlRrcN3biJxaq0qLNn+vSiB73Bi1JeisgpntQZx6tv+OgKjjQBUJhCulgZTtEhxaZoqMMJwC0VRlQDwGQeCXasIMZYPyzbbPOP0V6IWszM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768360434; c=relaxed/simple;
	bh=nmHvMQ8bEAdtktorB3AaziWh3hbfqYh8kJK66JG+rr0=;
	h=To:Subject:From:Message-Id:Date; b=eCKuHLFhfnLjt+RENprGrdtQClIx2A7BUKkM6zbU/D45+az7hI1W+t1ShYVJVInVMLBmAzJhNHyRHzS5i9UpEf7m9iRtGCWUwRgnYFf811rSQyV3HBKBwuNqQTp7M70sttaBLVD7idr3a2IRq6NBFam3y2VcEG9YlzfO/aqNweg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGekSAM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGekSAM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22ECC19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768360433;
	bh=nmHvMQ8bEAdtktorB3AaziWh3hbfqYh8kJK66JG+rr0=;
	h=To:Subject:From:Date:From;
	b=FGekSAM90MayJX9izguQYbLrrIR5BzOKdulRcTJtDDvza5yCU+ulYlvAHThu+5otj
	 ydmRS734EFr2z/Gd4OGQ9/z14h0YgtCoOzM6CHE3M1CYtLIU5dD0Xc8yvLROzQQx+y
	 Rioh2LSuwl2CUxq60180q3D33zlAdjPGPdA3+tu267ha2+HqSrabQCHj7sF28bLL+U
	 OISRns59rlCCMBBgdY1SbFNy4+10NsDybR73MXun8ScZOsV5+skVA6YSieUj5CVvzk
	 bh9OI2wFG1h4sAh9kdvaT7v6vGubSyFKADykFnlDAoej1vwR/JeTeokbSVZhsKvJko
	 3TVWa9dQe4TyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92276D31A08
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836043357.26332.5273687386844943984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d18882eb459ee9763eebfa97619b62bee9707c2a430dd03792dda7d02e74e3b
Date: Wed, 14 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768360433
