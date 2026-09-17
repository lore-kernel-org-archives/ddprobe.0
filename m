Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500E24E9C24
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789677634; cv=none; b=SGxtQwU8pfPO0QiuhyRSiFtUCNyvTlpqhdMx1qZLE0tZXIxQx5LWfD1Whz6llsWpx3zFdEgmzlHJJ7e0QUdU9Ix8JVW4K3UOYqYWXxj4qoenZNO6LQSarOemOW1fPpNpBCsi8sQtix+dI87hJU68H5RALA3TrSFEMEyJa9ncwuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789677634; c=relaxed/simple;
	bh=SkTOkpJF7EsQmFUOaOzn/cQWk5R1b5XijBUsmvFITks=;
	h=To:Subject:From:Message-Id:Date; b=hiRHuc+BIfzgIVSF44P/ABu2HP91u9nwPP94hQ1PwBOjObfYV+g8Ywt1yUt+GuvhrG4nRNoAUGKz81GxsdLume5GWmqVKD6yuCkM8tSWeTTQzhtUcKPsPmAUjMv/gBoaa5J3MRglL+Uzi6Kz5C4ck3kWNGex5dWll07P4lMPEog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PL7wtx3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PL7wtx3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80ACC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789677633;
	bh=SkTOkpJF7EsQmFUOaOzn/cQWk5R1b5XijBUsmvFITks=;
	h=To:Subject:From:Date:From;
	b=PL7wtx3l1FOh7nmDc9tN7ROrwjwpHvdHDsfSa09pIOQkLZBohMUo8HPuAoI9RoRPx
	 QKhUHBPLYBU+2lw+OgpN8vBOmuxwsA+CKRAOksRWglphyviDvEmgd3Z3sWzEtqFIE4
	 uky5olwgsFkzbgM82nvlFdifE9bROfIIUzfeNNr+jYCyEoKy4FxqBIqAfg3nvLkull
	 It5HMMeUxBz6yGwWdmt0kWvy9g3+ueT03OdERredcQULFmL5fYSfL1wiQ8CkRjjzeX
	 lepjuvGu8HZCJCfi8ise7VQUM1AXx0ynPNU9sKJTlEmZlsA0Jl2cQrfrZ+kXpIJOkq
	 e3UG+ntcHhbXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F57C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967763371.10289.1279154953057203386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3778b29a5dbab0ede234e547a1fa85168a53846045ffcd8e59fa8c1c1b03b0
Date: Thu, 17 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789677633
