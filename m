Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAD34204E
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732808754; cv=none; b=Gnwxmsyrq5HCXIxt9F1dfjKcVnmWxFcGpxnnlP3w8H7dyuFlK/QSt5CHMf7/Ij7rtnSBJDY/ylnEwNaDhU4S9/IxqmE3IrsVQ04CajNs/nTfnXz45Zv8VmY4qW9KlXkD+PAvuhZswwNubTO+7DNeIb8hKN6KtqlmtNGRe6Fq8wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732808754; c=relaxed/simple;
	bh=dC7WxVL4MWTWuRYfyNSUnEuyLHE9ZLxJSreE4WqYQnQ=;
	h=To:Subject:From:Message-Id:Date; b=KEUHvKOFR8Iau/BU5bLRkgDZDNMODYqN5pOVA/kHTmrgAWzeZTxohSWIth1joYBgQnWEAZqZduTerie0zskx1BQHd1BjraDBHOFQzGuTYje+J27BSGDLhBpzPvWrT2TasTAMqqVdrLfJveEYoOcByZN6yOWA/i06v+8TnKGdZxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soTuIry5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soTuIry5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C2FC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732808753;
	bh=dC7WxVL4MWTWuRYfyNSUnEuyLHE9ZLxJSreE4WqYQnQ=;
	h=To:Subject:From:Date:From;
	b=soTuIry5mZislG9YqSO59GPA1eWacX2G1s5bIzXjf4g7Cx0RNkdk1lvfXQ2/Aoxpp
	 a5yQe7cYKIrOQawwpmua3Cdat3AkP1KQSpuYLD/leXR2DpM0r1DY1BLaFQ02ADDfIN
	 WXHcbk6XUm4XYPBXRv+w7uj3MkMek2HjaCqh+VTFsi+gLWtkBx2Axnrfji/RTwpe/B
	 0gzMFDWd5s01tl1Gkc0Vf+wgHsQ7gYSQAaVtzz00RD2i+iLm1edfLE65V3MZ1NF9Un
	 zTr+d9Zz59uMglrJmo3eQCOr+wwUu5het6UHYvrZFzZ89qhA5YMr96+lHAuQd5MRig
	 G35iSCIzvWTow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F60DD69114
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280875364.4354.6353717727448259106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba35722f87529ffa5b7af2e481a5e838ad8b7af1da69fe00cf93b793b8ddef7
Date: Thu, 28 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732808753
