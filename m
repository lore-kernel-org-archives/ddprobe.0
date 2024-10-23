Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D14F19DF4B
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729718755; cv=none; b=tNyEAULINmoo/RtQdd8lm5KS6xv5HF+V/sUffQaY1ZTPWRi8uIBAofeqdAMiR217rgEmZp8P1Z3o8lRu0Sa/VZllWQM5ufMzDK1qZmGR334vpki8nYwGGHCssqDgMFoRgdyhXQaIV+bUy5HRoa/FXoUci30N+CP+gExShJQUeCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729718755; c=relaxed/simple;
	bh=Go82bQGOTf6kwuhuKR6oXl4r8sxkOrTmriDfMYYbE8k=;
	h=To:Subject:From:Message-Id:Date; b=oUjEJQnYNNLU6ZTDpV91TjsUyhxmAomOX+xyle0EcXGQ1Zav7Bn4oUUDgHjqqPAcQHkvYQnFkF7LguaRpMpNfgNiWKWtcc6v8nv96/CWT44wZR2ELsJFPZiH92P8EGPBFb3puaVOtU9Jlq7ItnfSGqr1lIhtKE4iC2+GpNV4OUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSPACUQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSPACUQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC08CC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729718754;
	bh=Go82bQGOTf6kwuhuKR6oXl4r8sxkOrTmriDfMYYbE8k=;
	h=To:Subject:From:Date:From;
	b=tSPACUQXySy504flRhnD2nTMyfZHOPV22vfI6H53o81D4w7TjY0VhDlAat4Lzp/6y
	 9uJoD8rGKkER2jGoxxbElo/vCH0OcjcYdl5HU717U3ac+xiaehv0Xqiy02qn6hljPy
	 QRnPVQGLMEKINstPuDxC+QG3kk63m+WGjLHa/Pe/UG3ez1+slh6gPOeN7q0ooYj/W8
	 ME/eEDQVyeq1tQ6pkm4J/IOt92CP+5mFoGfmLLr1BjWxn9drXlSeQ8MW9vpfJK5G6E
	 ssyJNt9pjbcMqg9yvOyJLZyhbc3+7Nwbj0Y6WISMOPAbLjj81E4p6tW/ttC4H1a6UG
	 Owdd+I7CAmA3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DECFA47E
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172971875360.21775.5457213242530744394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02bf437c17ff2c2b2f6a7395d4b83cc5c101d8885c736acde4627c8fbab5cdeb
Date: Wed, 23 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729718753
