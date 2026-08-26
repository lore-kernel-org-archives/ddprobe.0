Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A75E476CEA
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787772636; cv=none; b=hYAuOs9visHrkk2AmY4v54pOdSLv7qfe4ULlKbEBquG63YjS2BjyrWYu0jdulUNzKBg2IrJTOy0Bmbmp9Jt9NAoMeg6ZFRtqX5p59kG9SGe0fqr+jxxtFT+rEdDuTvasFOpVKsSXS4azKeG8I6wXJ+q60Umvvie0carOUArXNIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787772636; c=relaxed/simple;
	bh=UO5AJCbNpi03C7c/gTWE9/X3mcqRG8NJqm2GHzsKsDo=;
	h=To:Subject:From:Message-Id:Date; b=r/AcuIBMUSqezysV9Up3pZFWk+CFvxyu/ncibcaa6sWQp7dLxRRSy6bygL8Pdi6ghHcAslyApCxJpEskFDmAE1kEGK2vKUCCkeQS0AMbo1v30eqhP7Coa5Mc8T09GhPnpo4Oca3ce8JoqAA/+zLnwdXpJH8uEZg+8ajQcdGxFhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dqlc2Tad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dqlc2Tad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87CDC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787772633;
	bh=UO5AJCbNpi03C7c/gTWE9/X3mcqRG8NJqm2GHzsKsDo=;
	h=To:Subject:From:Date:From;
	b=Dqlc2TadA/0wULlGbPiMR3cesSX8gaPWg1Ww+d/0VhB5+6Q6k+5RY7vYG2Ta/wPjb
	 hdN0Irunf7Oc2fNJ0ndgUvR+RMAZ4AubHjq/JFsXymj+Ynr44ugOe8defxm55NPzPi
	 cUX2EfMh4685T2DM4ESqfFIfJUsATJ6FYEXu2X0KqNjLQvsZJQoTwK426p9TwIhOvL
	 t0D5KkxyPGG63U10Jcgl1lTUkwyhVWlRuWVgVF37oW3X2yqxWiSAsSdA28eMcbfWK0
	 DH1ToyI99+3NzTY6DqZkqh/erplEgDYTPc6MCnJhAaaPvAlm6jfAnYV1hkPoW874Gq
	 NTH7Pqc7LSZQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A26C61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777263371.31960.18395184409157679249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962b7086a0cf4aa594266329b69806e8123b7849ea8b1a7db401622017bef212
Date: Wed, 26 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787772633
