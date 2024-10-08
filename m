Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F78C2AE77
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728363354; cv=none; b=pu7UTbm1RC67z1QlACQUBjC/JhZ2II+PVCAQq14N96mkesUjUIJrdp0XsP7MDSQpZJgXENyaPX83bxakMw8TPgi92SRiwyYDv7GQcWhu5ijPlHcPqM/LGFRioqk57VDke339djKo7wuIXW6t6zqu0ct6RTYTYTtLlb67NJs3k64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728363354; c=relaxed/simple;
	bh=CqtbjzBcZYYEq6VZ3O6C1LmQRS2bWaBtLb6ivNLA8EI=;
	h=To:Subject:From:Message-Id:Date; b=Wr4lAms8S7T1kJ5n4NI3vhc27+IfKQs2OGGlyFpKd2YvZZmT7dYkWlQQO6Je1psgaIkEAV74U2HPUYC9Ut1juvKxx0vLLdh7hqYr8EuX18XYt4lQAZSK4UImY8Hgx+TE2Cyo4jU2ZsX/u70jac4ROfu6HeCYh1ogVLzCJ18yA9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unzgx/xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unzgx/xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAD7C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728363353;
	bh=CqtbjzBcZYYEq6VZ3O6C1LmQRS2bWaBtLb6ivNLA8EI=;
	h=To:Subject:From:Date:From;
	b=unzgx/xpYZcBA7fs+IpEMvNje3FSpZT4HvJFLNLN6EPrCgo7v8/Aluw13gcMtL6nE
	 gWe2V7e1ZT6OcaRMKQyw/7e9Z8iIbRHnDPiSYRyFisFknohhM1rBOnYlSP07s0Khk/
	 pQfRp+Kkw+PmyqwIad+snymZaAdvdOOV+ubdpjySgVcqbDl5v49BKWEQEKJqRrdHv6
	 tsdha/cV+rRbrnTHk1ViEDAYnL+KLbIgHgoIMqHTlmhHhke9geutEvTNLfeXRR/v9X
	 rWwRmf3dlwxlVQGVEp6/3OlfIwllxKMpRt25dOQXN0sqiQdUgCrHAEjhheVwCdUCcd
	 oh0b1u8y+bchA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD880CED267
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836335367.30908.15300593745873405429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e23ccc0c3c08abc13876efbaf79962d0726735262fe5be3f908f48fdc31f66
Date: Tue, 08 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728363353
