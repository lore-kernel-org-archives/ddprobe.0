Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDAE212FAD
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775884054; cv=none; b=DdZpO4B9QWCMeTee/a0lvL+etxU7O77kedbtSRculS02Z38exUt4wdxOEKJoLrCxWtMOt/6nGSvVPlG3z+7mHmbeHmvPRhVhKAtuSBtk1kP3g+G39A3GEsmGQzZAlzRpnrJiH6+fibIO0ahiJMOlKeCU2WY/zvzIipi9zY2wCJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775884054; c=relaxed/simple;
	bh=mlWAoqFh3Klutv0g3cptY7iJEGr630xhIk3Dt409uYU=;
	h=To:Subject:From:Message-Id:Date; b=SQngrjQAeMjKFEcYqrUgOqVAjZzFsUK623JW71UguNfHA0VNEm+IRgxIY2RdE6tI3IAw984z3G6KxB4yjFmLTf9fBvIYO4zmXzGkWKjBhiv5NofjH2pk1b1EcrhIm9Flk6E4t7lwPq+/r41T/ZcJs2jRRDxWuCgIZFzBiG9G/qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIRXxxXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIRXxxXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB28C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775884053;
	bh=mlWAoqFh3Klutv0g3cptY7iJEGr630xhIk3Dt409uYU=;
	h=To:Subject:From:Date:From;
	b=nIRXxxXQbWSsYIxNJHAEx0Ooty9NYr6gvwbRV84IO+uFnCQcXmT5T1/U/4VUEJs1R
	 T+bCkjtY1Kn9iEZqDUoNrHlgU+bwqebpnahQAheCukvjvzpaoPxsuOK3LkiycWtpxZ
	 OlM0dci0z/BDrgGFuuQrbG38nHkPqrlyuwhIeF4O8oE5T01NhCwWkG/sxCSt4d3rAN
	 bHIn8R0+mBQP3GGVOvuABUfZOpkgyL8tOjQ7IprSoFHq8oKnMShL55roWGdhRsiT7W
	 uJtQNDBEIuhrm6h5mhueb8crydkxMjmO3CCQhHeDGjEmxoQxeCpgi0lGrr70OPgoHe
	 KhwYpGJ8gVkEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4EBF45A1D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588405368.23407.6779817317131895991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc340558eae1938ef908a6bff3977ab22064827d931960fbff43fbe4ba6383e
Date: Sat, 11 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775884053
