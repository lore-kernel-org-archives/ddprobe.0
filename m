Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E3D366049
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780005154; cv=none; b=RyBr7Vvm5jGeBp33AFEZZo/WryglcGWCi9h0j/4WfJse6MnCmRTvfQBwEtVECjpEicylCSBfGhR0KffAlujR+XU9mNPXJjHi4Fl8Zk0/YwO2n19krfhek9yDufs1dOIlMYm/iEihDMx4bZZCeVgiz6FvBoszmppBk+SUZppoWNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780005154; c=relaxed/simple;
	bh=ZCuc389AoRUIMjLvc+EjT+rxKyAmNm3ZGdgMGM7NoEM=;
	h=To:Subject:From:Message-Id:Date; b=mwFKEU4UnqQenS0g3kEZlX59nBgS/xEWKnJJgY+wj8f6hn6CTx+3udnPYg1K3V5SzZiFOMkUwIA6plGQvOElJZjNQkDFB1hByTcoqc1o1w3Z2EYXh1s0UNENVybbsNGSPftly8s2GUS1R6O2JT2O2QKpDhD/PTElkRpLMtU3EdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBir3csh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBir3csh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0168C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780005153;
	bh=ZCuc389AoRUIMjLvc+EjT+rxKyAmNm3ZGdgMGM7NoEM=;
	h=To:Subject:From:Date:From;
	b=LBir3cshGzbnMSPaYwaGjE2UfxlVfYsAnbdlT6JtHsL+EwxKsrWoBaCbzNUzALRp+
	 TjgJ7q4qUVj6EmrLNcWYtXRMDhMthZRYyNXHrwVWR7R5NqRtkaQeBNgrWy2nSRDvoF
	 9XlP2NeYe6GDo3VDOMAH4U9I8iD0P/WXzGoFkwUD3uzsxCeupk7FFThX8QPJDfuuLy
	 8Ek+hEDKEHAtw+kW9tG45oLMbaZtVxzQndoSWP7vQJ0LnG3HJIFnDAxw041L+Rvqs1
	 wH6O6zpHlUj5SQcKHoN4Rb9WCYz5v7KRPeZ+JpJqa0OsFr3ykTCnYuyHKSicAxbN2O
	 ftBI9iCMWWpcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8950CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000515368.15447.721215031321523993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef9e30baf2959026dea9b56a6ce649f0f7061347687797192a11df96f4343fe
Date: Thu, 28 May 2026 21:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780005153
