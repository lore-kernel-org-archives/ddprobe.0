Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AB21A3AB0
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785460234; cv=none; b=MPoI/vXLzo7mdHYoPMJ6UEN6rO2RUcnsyyinn9AzWjof16NYYKsVLzXDE8HGxcxJGR9ud5A4jD3R1Pwyn4vLt+9raXR0+OTJa3OKWh+Oj353rZqbZFOJ2tOns4xXCAS92saa+rziK07sHtyRmJUQPAbLFCDx+xwO0TN6x40Q408=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785460234; c=relaxed/simple;
	bh=fI+eQsXbem/X6SjfVRM13VqPVWRZJFSdc0SDY0MHUCc=;
	h=To:Subject:From:Message-Id:Date; b=WU8uKqK5K3JUsK6qI0Yc5nHwKH+/5YGRGUG+q4bbxo0+W7bpVYtgvrPQgVvNGxLL6kq3P4tSR4oI9pBo5LrmSQsz50KDSrTkGI1vkjc3dTFT0kU2tmmdKBClmIEYInjUbaVkpLDfENLe8E3T2K/WVwz2QyGuOS0ejQsVPYj+00Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8sB2bsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8sB2bsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A70C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785460233;
	bh=fI+eQsXbem/X6SjfVRM13VqPVWRZJFSdc0SDY0MHUCc=;
	h=To:Subject:From:Date:From;
	b=m8sB2bsZK4qX+454lpF+UmSbGm9/JUbm7lAsSo8D7ZN2rq5x6CvdD6yoTuzgFWEeh
	 l6fW2to9euV0XvSCljRsISa2oZldQAHAiFrDR9Z1Rh3lBMkcg4Q8r1MZGMuctHGVQ3
	 grnSPMiqjOAUcDlmO3l/PwZcvZw9/Xz4fL8pPeCswxZo02j8OnlXjzd6Mytj8+stIL
	 XVYbjL9nlnuG0CAhig195PF4CYdxqxP7tC8iJ/QQB6JFQQIVW/qLkTHGoa4g7Mh6bU
	 LN+eKsuorB2mRD32VSes+WvVA0DN4B9hnacSnS2SqxCBfs+3CYIjrzgXy49WG/Pk3f
	 m78seyy56qSHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7BDC55165
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546023369.20843.14710911725317209241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8623087ddd892919551db2d2f80b57a6d3d8159a21a5bfcafea47e9539ba0069
Date: Fri, 31 Jul 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785460233
