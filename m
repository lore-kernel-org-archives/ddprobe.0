Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3671DED40
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748243994; cv=none; b=YY1BrX3u2gKAAaIbVPo5hkMYoiS9yO2I+pFY682/oUG0KLqtkOxvRbCEAF41LMMFBdRP62LqRT4yD95ePO6UsKlpFRRVkK3Tfd6cIGHaK/vy1299OAl1IQcKaVe0VD4KNdJoE2QKmNS4BYslFeYyxSkM3zG1datbMVAoZlnirh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748243994; c=relaxed/simple;
	bh=PNZPiQJoGKyx01iW6DcBDm1l70r8lFl2b8WVN8KH+zU=;
	h=To:Subject:From:Message-Id:Date; b=Ha2wHk2IonK1Vc+cGrVPlL2r/K5NcnxMl+O88rRjK1ZNRifMas2kW7btc1BoA1LDJ+pBNeavDbEEMMRKRgB+8D4/kNoA3qeF5LpITtEEsiXeN+eZDP5quhvrFAeyBkyC9NuEjlxJXviBbSdJfjOuQBtaVS2T/BhAo+E/UeY8Aj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uh/qeurN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uh/qeurN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA86C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748243993;
	bh=PNZPiQJoGKyx01iW6DcBDm1l70r8lFl2b8WVN8KH+zU=;
	h=To:Subject:From:Date:From;
	b=Uh/qeurNgO87ttlzU+BpWIDXdTynal9JNQwbY+Ck2uTdLFHooMi2gCjMG0JtqoE9I
	 cHguw7YIZR3CQIhHsH7mfm45f1qcQOLhK4/1bpZc77zQi4uf2B7xzYggW8eyb+cjoL
	 M1mwb55b+hr7DShSVI5PB9lIP/sfJ+RlWqFzj4WVFrpDwjIsUGk7IVBJjBAZXe4szU
	 sZRqJXpU8zLneXtLPHS9rU37Y4qcJcihcpR0M1iaAiufDGobIXFXNlOoiI5XFpNdCJ
	 Oet/vhrKKUOmz4hf1uRaFf0RbE8RLjpQjgbwlMfmK9nOx33JtKLgfEgZG6c2nEGgWY
	 mR5UTAwFzMxiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F138C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824399357.2715.14087990682082508855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7b3bfb8e94a6d15e2828092a8e13b9a19dede4d3cc47a0d0902ebc1e8d1f5d
Date: Mon, 26 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748243993
