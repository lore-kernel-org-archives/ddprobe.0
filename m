Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243BC199954
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725017154; cv=none; b=JwbyFEtmEp1eW6dhmoTY0nmDpk+GLs11FRREtaZJ/wHpSUf4mvLg/p82YdpNREqHb9wPasdSJQFlotySBctnvwW0Dmlco5JyU6TlZZ1q9iw7ZtujeKAxwvok/XWmoHAkn3E+hwQK81gYTBrkOq0LSrIiZkF5sREljYfl2wVpq6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725017154; c=relaxed/simple;
	bh=b9cdxzln9nrdEXPSWlRL2scAKE5x9LetTYPamuSTDvw=;
	h=To:Subject:From:Message-Id:Date; b=eOWnt1TvgR/jELyMfSr2kxu8xIddXC8W4QywHEB06/ehqyuft1rsdhXXlYdovs/FV6238dW8y4H1wIt7b5h75KfPHO9DytivKhMcN5NS4p/BKTc9jb0SdOxqYUsbo+/22kGC6oCuiobjgbqbmrGuzgN/sBW3eXHMTaTveS9XCH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp2mWefR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp2mWefR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E60C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725017153;
	bh=b9cdxzln9nrdEXPSWlRL2scAKE5x9LetTYPamuSTDvw=;
	h=To:Subject:From:Date:From;
	b=Kp2mWefRlT03nQJ+T8AfBb7sFp+jvGHdiLbjgqgJ1gJaXdfMK2YR4F3sm1WWnyAX0
	 1S3yuJIpl/ubmgDnQSQRYdn7gdHUVwUZ8/92B30PKlCS+ZhapAKfzmmCyqlp3XWPH+
	 udNOf5RNwfn0OYQ4ZV8CGWy0l5bFX7I6+4qZkYXxyvAzd3U5064UOfb0gFPBxdgYLP
	 Z2+bICek4NbpmsL2F4ahYIlZvxo4EoH8p3+G2zUAkFExl0BxYKwXovKkWKYjDQ1bT7
	 6vqpsVxjT+LFS+Q2Nmt6PEUyCJIav/F4aaGy3x5DqhheAjq8K+1Pa7eznKwlz0JlCx
	 BOCNCzMgwIR0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4E4CA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172501715361.19765.15641561018696652438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf0418a13ead089514653ce0648d887b2f658fb36496601fc473c19e5e2de47
Date: Fri, 30 Aug 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725017153
