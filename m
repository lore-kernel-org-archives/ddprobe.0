Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAC73CDBD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788509434; cv=none; b=Z5cSIBjyZIYSNUjaSQVRDDvIYTZwJNaxuEggneMz5RNoYS5GpP0TrfTwAcs89ulLTn1VDlb5UGVO29/2xGiFifyNmHYvxsCCMR9kOkFg87xRp/S+kjPLmeqja4+YTWcQiX5ilhj/h+N18BR6+dZYNsm+zV8eI/qCDb+PdkS9p20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788509434; c=relaxed/simple;
	bh=4fTOV2lRGI1RgnaTBZn5z+c/mIuiKGUxq8JzgOOUI0c=;
	h=To:Subject:From:Message-Id:Date; b=GSPfnyybaXZCnV0OfrPkV4oe2Gw5+5JXESnOJx+nQJpYxIN08nZieWb4fsYViuOQhxO1moFR5wi+FreuGybNYRzp7g+u/y1gNKTI9WWCFBuQSH+cAiU0T4ta1vIXTZXyZ+GH0drYG51z/Iv6ETHpHYYrAgBSLr33yMHUoAw640E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efEA4nVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efEA4nVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE02BC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788509433;
	bh=4fTOV2lRGI1RgnaTBZn5z+c/mIuiKGUxq8JzgOOUI0c=;
	h=To:Subject:From:Date:From;
	b=efEA4nVAbjuqYr7d+l6jnZ6QTUM4D5f5UCqf2DxSjgk/JyvoP1gCtJvxLp9RXTbRs
	 ZiH1Hq3tHcTGag7h5ZRLT4e5VYnAmzFcO8uPyL//d4QDu6p4NJD+ttBhAfByEe7AEC
	 y/46SnfMS8JLo9hKpKeQDxOIBI1hgEiEQ6mMhskxlFeyQOdqQxkWKmObQNGBzfZuwT
	 DemBxD6sAnTsIab+myCzWgTK46A3bwi+DRFYVjSQnu7YqEzHIu34SK9OjNABXBUXFQ
	 SV2zhePHO5qvKkuJxVz+c+TCnrjgvVWct09NAIUnmAcHweKkdRl0SU2K94lO5BX8jx
	 aW5s/VKsFBHQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA411C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850943368.5120.1272969202036938184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3bc7789571414a2917f58e247ebb22b94a40f3ce49e3efeb202de6198ddb9b
Date: Fri, 04 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788509433
