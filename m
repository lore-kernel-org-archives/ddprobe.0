Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419AA2F30
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715979743; cv=none; b=fMB30OXT4cLDmbC2eDr+EA0uCVA30Ck/fUajzzP0sD/hh4ygpuu+sA/WeRgkjOeYOlfxH4vAhRmjDgMvad0CTfx2icOGfdxW/PPsHk1GNVQW31zi3RUzP3rw6ljlkxNMUgqHqwDBDTrHbuYQQaXqqzRLufsYqIE6D95GJCzHqxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715979743; c=relaxed/simple;
	bh=OlxgVWned2j8wLmBupbClLlXPIgskSzVHgXYu2DRRqQ=;
	h=To:Subject:From:Message-Id:Date; b=ITzkSkKA0CcIJ7cDFDZp7tdp/wBX8zgo47Z5DsYzBx7K9fNgYoMSqPTxHvrBCblujxDzCZNlXCKl+gYOW1XEPYZ/zIbRhk53HNC2lvpmmZDrlbj0pIeXjPMmC55Vd0JZSljFsyuYYVpK1X9si4woF0u/ehM/k5XsM+Bd9oK21rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/DG2tSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/DG2tSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1F6C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715979742;
	bh=OlxgVWned2j8wLmBupbClLlXPIgskSzVHgXYu2DRRqQ=;
	h=To:Subject:From:Date:From;
	b=Q/DG2tSFkyX+UTJYAgA5cJvK5NOB3aAFRj/izuE5bemYe3Wcfb72B5F7A9XiG8Vmh
	 ge11BvmfZEwwUh424x+OHWGjZvcQrxOw+B1f2zH6DQddsVPyVZ31u38VWqynWTbr0Q
	 4700A61b1bH5XGGNMPYwKaX2qG4gZRxXH/kyTlt/tkD/U9xwaOXTMhZa+tCmvfVg3G
	 //+vx7P5+8A/z0hFOf1UxT5HDVvH/j5DOEh44xkCFc02CoV1BIK0kSf8y4j9AXOMzl
	 OR5SwejUFfY4UXBugn1bFqiYy/T9BxV9ktL5I/RVXxLYHaHkazFjttok4Wmv5JjKc9
	 nIkCWVPjsfzNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91BAC25B77
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171597974281.11282.1868524269468300569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0bc8e516db4f931e3f99d3d89d5007db7ebb564ec22862a809ade06e964655
Date: Fri, 17 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715979742
