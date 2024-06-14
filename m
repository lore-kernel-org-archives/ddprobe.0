Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4CD146A8E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718404103; cv=none; b=SQ8L+oK5g82eifVXFAFc1e/SjNiphRgosynM4vvMf+1kuoYU8Ef4MJN58/BfpVz2xgMhNVMcZtihCYFerH0nGjo//N8f8Ri6fqot3nKNRxVV0AHzcdfL0qkDoq0ecssZeAD9iAZ3QIWuLhagBM1yhXNzaX0TvNeGJChYUw7mC5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718404103; c=relaxed/simple;
	bh=OiaEC4o5b5uXHU/6UMAqisAChWKwOa4cOXJ46E+bTXg=;
	h=To:Subject:From:Message-Id:Date; b=ffZcWG/KkMiG6528VWty37t2X+G+MkrY0X8tferZvmUyhlnc8fs3n4RfEVkwKeIMd+FhCTxQETpF+ACijEUX13O2IVErSkXSBBaKNNKeZfnC4+eBVKr1nuQwFl3D48vfwD/l/hITHOywEHWnACnTZag8RCgEcAZLkYaSgFAr9Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eG9CSLeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eG9CSLeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53EFC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718404102;
	bh=OiaEC4o5b5uXHU/6UMAqisAChWKwOa4cOXJ46E+bTXg=;
	h=To:Subject:From:Date:From;
	b=eG9CSLeA4Xj2OoWIX4s5oV5CHla5o5yEaHlQxfHgHPKd1DAQ2kLsnYod8uh9kH15N
	 B2mJnunWAm9jgL/bTbIej4INoNP3ddpzPU7ZmUFY03HKX475xPr11EfmF7Mxfr8+o1
	 PqLEaIjWwKPN+MOZZfQJchp+mKcmk/nEU1isHxhUpFQjvhZQQXCkxB4seM2cvGE1BV
	 bjVLX8LK7pr4P9sC1viuLMf8bjRRSnuw2QAaG3W5LgJooCJmImDkd2C0QKpKi/B3NA
	 oQ6WRyL4IVCtYrkIgkELNdQUhvc+qHn1vWE7oYJg7pD+AsxwNuf8KTDBU/tIHmENIA
	 +YFGZnYEsaq0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37CCC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840410276.20575.3973322462367580536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce347e8c07a1937eb92adb90e6e3f2f89eacbb5b1c14d73bfa03a1c07595ac2
Date: Fri, 14 Jun 2024 22:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718404102
