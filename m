Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF8B81AA8
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767937434; cv=none; b=ZPun9AK83TH9kxoFXpBJ8OfdS99nnYSMo822MEIdgYM+q9om8vRpTgro8JUg4eWJ3vUp3csPMkXdB4Df6Q36yq+8CFPO9xS+L8K/RNEQXJ7AU+6XdeXrZ3MzdHfpGeky+fvV6C0f7EM70tZewBHNWV4sNIVcggF/2dDT0zehJus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767937434; c=relaxed/simple;
	bh=R3DBvkdSW0hBP0Vyr0ijd0WUejMXt+aW1bQGrlkzbs8=;
	h=To:Subject:From:Message-Id:Date; b=qv3wIn1l3bjmZXfZdJCIcLl7eoEVugzLh/3adg/QXRCoQ7X4NVBsl68HsXLU7vjLGWt0oFj1Nw8C+PZ8bR5xfcWCrZ8qW7FNDe/jMPWhOVB9tPwSXVbSXCz8Eo4axRZcNz8Uv62jrYyD3AfUijXnlDEpH+ugfXNioD1r+I/xRg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpSzbUqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpSzbUqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D622C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767937433;
	bh=R3DBvkdSW0hBP0Vyr0ijd0WUejMXt+aW1bQGrlkzbs8=;
	h=To:Subject:From:Date:From;
	b=hpSzbUqMjpkXW23TNZBUG8dTGB50ER/2vEueKE8CmJXdE8Ygr98EvUcpjIZ0Kj558
	 eDywIlBsx1L1BR6/OoiXZzFPdBGJ7/RB5HlqcTrOoeupPk14Gxe5Lf0wEf4JV89nJ2
	 wv0yc38JP8yiZHjIKrNvCddickLAT/TvdLxkRlIyUwzKSSaygucyqcASUHRTg+pZb5
	 Xd9VkGkpYKFd6FOT0brm2VjM3C2qZJGCn62B3YgIFmcDTyErYySi/JHG5CvodIes5L
	 tYEaqxAHA0w7kx5bx3+411EQoe8Dtah0CjZ1xPr+5kTZgtGp+5mDMBXNWYCXpkh7PQ
	 FGSLbpAIV87Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB5D232E2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793743357.14336.8553994736458582319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59387fde0b65293588f0e53e8092299c29a2d11917832623e7984ffce495b976
Date: Fri, 09 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767937433
