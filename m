Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B32EBA33
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753979994; cv=none; b=u0cwu3YhH3KQsSK++BlP+U/imX4w7vS4YnJBE3a7+LyHmbFojo8zNRAOGr6CXSa6SrtqJFt8INK/q7bLTdxHAe3pO0Tqaklge4+Oy6EvhU+x5g03H96Q9HGRxZkxhSO0IGkg6guR/Brt4vTNjKaQ8Jgld/oysd1FhxZ1XMcjwRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753979994; c=relaxed/simple;
	bh=2idfQNF6HiwO4B/ZiA+ENxmM3ntSKltXFw339PZ+xgY=;
	h=To:Subject:From:Message-Id:Date; b=Opr26YiZ1HyLNkyFu3Lq56YpNi6HpXeQxTZzTLEjHVLPADFhn3u2vGtkc3FUId145QxfAdZGh2AFByQaqi58cFimsJkZNLQSZh5A+QF3vShueAJ/lpFFRePzlnnOoNDySflTz0IsAR058cO0vHfLcMsFwEKSrvHy51T4kdL0xyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7vvnzY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7vvnzY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D9C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753979993;
	bh=2idfQNF6HiwO4B/ZiA+ENxmM3ntSKltXFw339PZ+xgY=;
	h=To:Subject:From:Date:From;
	b=V7vvnzY87XpeLX9nZ9jeIl6huWq2L8q5Z76hnv8mCZwdx4gcaeJZVQwPrsDEZV3oB
	 yr54HSFYA5urTpUDBPem8bMZfL0yA1PQCIUKi74zJeIJEx0TiLHijog9kvkCOyYWKF
	 36NLEEnKfGjkMKnkm3+DeIqWtkexKRHX2LALB2dsIrd7ODaWK3bApYjmIQrLGpSTBK
	 jbmErfS4lZ/YRzA1UFA6uDoOqM2UrpaSy85obmnsUDGjSsm/yYqaREYh8v6yWNVJbF
	 yhELjdZWQ5Yg+nI7eDX38R+KfJR1AiPtSz82AFi3N7wzthg/C3e4HcA9MT2NJTBxis
	 DhUeh3Q8p85/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9049DC87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397999358.988.10413624794635415392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75130d1e16dc3aa057ca3d5c4ac2438ab30e4fa083cde9b9d5db7085d0936002
Date: Thu, 31 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753979993
