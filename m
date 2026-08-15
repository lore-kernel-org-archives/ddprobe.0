Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9BA2C11D9
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786810834; cv=none; b=Kn8jWkMy6uVHSGxMx296vA2D/GGi9w7sjvZWlX/iuxitZUJuDAigt1wKDgOtsFoQaMS7EbxmR2VGHjXBocSSCj4UXJ7AAjaEsmMd1d04Htr775T3Av+KyLJ+hLtH4RNigf8GgRL3tqXT+WaAtI5vGNaAoAF7HIqy6mgbONSCSrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786810834; c=relaxed/simple;
	bh=MMXquygCsnIMApVtK/Y2dD/sl6yXckp1vuW053ifP2E=;
	h=To:Subject:From:Message-Id:Date; b=ImFaXeiHUyCSjvr9mRYxwyRDe18H7J7mtR4IHWoM4v0qR1nFN8pjbfCXllRwHPVbCxJKEzF9CF4tL8fn2RIzbSFc7ETnGtOPLKNqSIWV75o8VP3YduB0TFP7RF93M/6TAd/TeApDEeYUe84SrTiMe6anrNcHCZi/zz7V6zswf6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzZ7XDya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzZ7XDya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1749C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786810833;
	bh=MMXquygCsnIMApVtK/Y2dD/sl6yXckp1vuW053ifP2E=;
	h=To:Subject:From:Date:From;
	b=dzZ7XDyazMe+/rs7d9PAnjsPSiUE4OuQ6Qw8RoNaEZ16FPEchQVl8mZZplmILBvCu
	 qyU1k3tFxJwgwjhk9M85U309qro8J0yCWw59+P+G0g+VtCPEcL6uQgTeye11l+C/v0
	 SWxL3dLxBZYTOrUDwRzgn1wGKT1YS2k6jR4f7wnWba9fkuJbSpI/UTaPc8ZI0WGZsM
	 dd+h95c06ZGn4Lzr2iNssokm4KjSHB7Q6N/+ojPylMfv9Rx28AS5QVwYeu7Hu3CUaY
	 SYVAOHcF5mQYPxL+6wG599nTHvguRhtgVl88eqFrQ3ykHqAejx6WYHttcBQ04JN50/
	 XYGaxLw8ldBmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC82DC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681083369.4765.2045706572147344821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5dc943eb94edfda15409dfc064ad66b3facab52b9aadffad2b02716e58197e
Date: Sat, 15 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786810833
