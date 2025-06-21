Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313A8539A
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750466994; cv=none; b=rWlqwVpcKf0KGp/XjluJ6qdsJwhAPcPRcZJ3RzHXYIMZmGU7wExWF4f7uCXISq86jNimH69QtMbNiVCpwQLfU+5V/1ZFdp7AmTZ6Pr3ClnvEYXk9rjAGO0QZtAhpHtUFMSa+R11ec7uzsx3AT5fPQEvHmnv2YC/WDPxvZD8UeGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750466994; c=relaxed/simple;
	bh=oEO1q76gZetLXMv6NMGnwjFOHr2B9tknmLEwCQr915c=;
	h=To:Subject:From:Message-Id:Date; b=Bjg/ZdBNiAOsqxHVQn5SnGtj2QhiFmMKfD/qh5LIyWLEUB8BrBEW2SUWGvGGHk6lZXerUrQpLgN21LMZAK4UASvUtZnJiT1fH+UPym7wna2KUBk/VjBoqcHVQPJ5peY3OfY28L9w4ybwPmTXhd+L3vjnOFtwJGzmN1xoiwOWyPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcqNoyaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcqNoyaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D64C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750466993;
	bh=oEO1q76gZetLXMv6NMGnwjFOHr2B9tknmLEwCQr915c=;
	h=To:Subject:From:Date:From;
	b=HcqNoyaR1oSmuiIrQSKMMtEzDzy/CtXFZFsAtuJS4RczhRwZb1JdDoyFBo4FgLX3y
	 Dgn5ggow5xhdh/FOJzduJoN5cxxra9vX+Lx7W1TJGdEAFoIat9Ea0l1P9Zjc5gI6vX
	 xl3R+TBNOUdF6heYBdP3NXBXzWfIrWcJUQWe3+WA2s5EpDw7WSgsdAG4bhgzjKdgU8
	 YNuuphUMFz9k5/tpje5pTAGMvIg03edU1UESOopo0aeH/Nk6U7EwraFY/67q1rux28
	 R/RfitmSHJ/pUKXEDt1OgZROdRaLzn6gXWNF+6dza3VuHPwzNryMYMjXwAb7Ki56KI
	 PYHotzNbPWNjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E454C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046699357.27718.13025111693365958516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea350a50799b5df0b2f19621a6182bc98ecf0a849f589745cf84fa5a354f2cec
Date: Sat, 21 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750466993
