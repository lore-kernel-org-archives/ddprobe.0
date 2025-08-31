Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237974C6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756640394; cv=none; b=Ors0sHmBWaBk5Xh6zpg6eT/yjVplJaybNvbaYOjG9ZquZuu+haze0o+t+vRn978tM2+P0LAE1yPFgdIc2oFZynkEgDHsqWGMNYSZv0lAuqTR8nx6vjvAgt6pK5TsF2mjp/pvyP26woaLkKtXgixz6QlzQofnX6lwj61FREgk4qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756640394; c=relaxed/simple;
	bh=TeFosKot7Abt7UfOQ0uQVUW6c7V0NNF/kxq8ErOJwvQ=;
	h=To:Subject:From:Message-Id:Date; b=YCVNIW/cCuaWemERsJs3Cxr6ZQ/Xkzp6zytMcnFpTg0zyOXLs9VCbRa4Ox9RguDhbAugUizIrnn3oAxbrX1aehcaBCYZxouGpjk2rzg47oVYkIkVkn/nK68MBvJF+imfL3rdLQlvbb81fpLzk7Qf4NEBJ2ldpi6r1ae8C34rufU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CINyCRUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CINyCRUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB90C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756640393;
	bh=TeFosKot7Abt7UfOQ0uQVUW6c7V0NNF/kxq8ErOJwvQ=;
	h=To:Subject:From:Date:From;
	b=CINyCRUxGHMJjjCkcKEs08cYi6shcaXPladKv0lFD2qamMQsyHYV3zFHBxXhXSE7b
	 q3c9A72PlNIVH2seFvWMOk5zbw7mFWSXX2kFAtVq2KdtNzUr5y1CblGSiYe1xG8l1L
	 LdSpYl7xUpih4w3ZT7FQDjPTTe05gI8yXtZjqnqKEBfCmt20yFaOGg1/vaxigCW/KF
	 41wuhAouoww9UzDE68EuTX1DCLektX8aPeEH3BFLw2xSzla5Xl7KqkMfHof2m36mR4
	 2qMbir0iuCCV056Yg/Wr1E2CrK9Pz6vaR53NYa+lVd28TA1gsudoTRnuPh3Y95ZTWT
	 IXKGlWtOoeW+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEA3CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664039357.8579.3964019921496179236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7960b18b31c30cb2c94e6db7849174b214fac38cf55d3fc2f1e9a230ab8c366d
Date: Sun, 31 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756640393
