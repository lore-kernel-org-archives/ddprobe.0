Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4747D412
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720611383; cv=none; b=mke/4yE5VU8L4ju3dFhdRcy/laOpp/lWhIzCDy3PiJRcTaJnXnevjZp2EJmYDA7DPbQmDbC8jRl3T1rL5dDIUBjFvgX5JVRiNbzwxHnAc8otDkw46eQFbzyvKIFnTagD0HYBJekl2wHlPFm+78qkXGXWaSQkfjZiJtyCJB64n4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720611383; c=relaxed/simple;
	bh=1DI5cYE0Kx7ED0oAVQd2tpYS6oqjbnfMwWg8GSgPPuU=;
	h=To:Subject:From:Message-Id:Date; b=ni+MkCkugS3jebXPF4krW6dctCh9LvXAQTeq/r+ZCcJInJZWOWF1td+M8ZljiX/SYe6mgyT9Xt6aavkSzqumZTNZz5/XLMVAePS3IIAr4LGBIQsS3rA5ujSEatT0220PsUYdexLjAYEp51jxEhg7vCTKOUwqKIcd2rpTaI7v0Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPMQwHAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPMQwHAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50E9C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720611382;
	bh=1DI5cYE0Kx7ED0oAVQd2tpYS6oqjbnfMwWg8GSgPPuU=;
	h=To:Subject:From:Date:From;
	b=oPMQwHAYsghiiPZezJAFVpZOBr57j5LUbE0VVVJxAdQrw33YjU8UKLfZnXFn3n97i
	 6jwxZJWIz1FPSIX9PAA/CoKzRMdVer7r8Rka4z3MrPur1UXkDqbXMhwSNvZGXC8sRI
	 08wU+qcNNzjBOLJlow7jzlPQE2ZDxWWeIIiDGrkoumK7Jd4Q8KqaQ4LoWuE76F+bTJ
	 KBzecvo+KukPjVzsgrlgzFV74ybzEtiONrESqi8eZPcfmxUQd8XOL0rR2htMZmow3Y
	 /L7oPkHqq3nIPyjDXsYZke62jGWAvNaaO+3SCKF66gJOLD0mtaXBy1+QOvGEJU/WGo
	 MnnzFNyM6ZDdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1356C3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061138278.23587.693785081930138547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b09fbf442c3963c06216f51b9dd23e7064529fff28696214283620d08149215
Date: Wed, 10 Jul 2024 11:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720611382
