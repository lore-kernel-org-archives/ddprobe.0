Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723F426B08F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778310454; cv=none; b=D74W3gddC6deH61lWgWSQ3Q7PkWdHiASlPoFXizTDpGPcmvfjVhiytIHtCnlJXcVVbuJxDFyRkGr7n2wAncibIA++zyGj9qeCHwAszQS6qA4Js9vrqLlF51hwPzGb+CKF66PSyDZoDQNVCLmqnSB8SPYmC01fc0bSAYS05qVRis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778310454; c=relaxed/simple;
	bh=uqbpa51Wo+lYXmFPuFk+oXbybAaJU6E8hFbXtDv+Mvg=;
	h=To:Subject:From:Message-Id:Date; b=cNa5st/rmSTSAA707C2D0YwA9apZhnU/zWLZsmqpkWeY4QywKNd82p+sxwh2vBAqUhTA37qjDZ7VVJyPnvBzFNkc22F/+cv2YUfB+bn9jjf9homG6ctLeR7xST9EVP7X1BXXCQHtjJap6rehk1bgpwM88I9gh1G6nxraoarZ82k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFiAri54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFiAri54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA322C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778310453;
	bh=uqbpa51Wo+lYXmFPuFk+oXbybAaJU6E8hFbXtDv+Mvg=;
	h=To:Subject:From:Date:From;
	b=MFiAri54ugZotDr5QXegwh5THdtJgSABsVGVlALJ29fcmcV9aqaoS4hFfkkJJ+d69
	 R/t/YmVLVKdYb4fVWA5oMYxsM5EidvU6Ek/jm6aA1y/vWwwFv0JuhfgPgBy17d3o1k
	 9fUHoyh3zzyDITrEXnFpb+m0Ep1UMgiPjy4QccsMDAFHY0OacY1YR3RICbc1zhLP+x
	 jPwuM7thTrXBk3kMPQMyEeWlYyQgixaZ6yK9ssCWv0CDq+xbHRRCow7SwGBEhXMhBX
	 v/Arz7Pe6Kb9DNy5HqobrPBUFguEI2NrLpPHv7YEq9coqan9hY1sZMJOmKwH6cHzIR
	 aBec0yqM5fiVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB678CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831045369.1383.5973330750209427401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f470ea48577cf87e42b6e9dff111871ddf204fb56fc9cb0eea0d5e7302409f3c
Date: Sat, 09 May 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778310453
