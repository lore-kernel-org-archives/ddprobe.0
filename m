Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7277133F8A5
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786290034; cv=none; b=fC834Igc24I5uAUeF0aE2bzcKi/QUlhcbOxu6RMTxz5BSy21uxtSqZzrq/SnW4GyLThv6HVkbmSw10e76ILH32MdHNQbpMlGx15jmOo4U+ZJ5eY3K/KVJWFZW+8P1jZK8mq0EH5WlUer3ESUbbLGJk2zV3gpQek9dnIRyI+3bY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786290034; c=relaxed/simple;
	bh=odOTS92VFBxZw9s91F7WwBdI/kEMirmJOX524a+g4Iw=;
	h=To:Subject:From:Message-Id:Date; b=dNbkGvtL0SDGWMHaIp/sN4+1zepcB0E171EhpjsfLC2YsqK22ioua4s4XHn4HeIT9Uq9waOxsNJeVf3mzzZNUUVKhsaVtsv9KY7sGcKvd1ki9C/inLA4RCAyGemxnXOP/Pcm4fQ/Lg3XUVxaTJdYjFfDVvlR63b8LS7vN8dTTOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMG9opJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMG9opJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD82EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786290033;
	bh=odOTS92VFBxZw9s91F7WwBdI/kEMirmJOX524a+g4Iw=;
	h=To:Subject:From:Date:From;
	b=NMG9opJ1jY5JZdQbjkx0w+m/U7h18YBc/wJ2ikc98DGVNB8MXKGZOFtlL4Hav1cmP
	 pkP0IZqca2EF9+fS9jd9/aGGepZu2dWsSHO7ydo0g/ott0BvNJaD37TlDutipNBEHx
	 KZ2l56ESkCYjHdA3HIvJh4XL+JS+WIAhtnD8q814Rx/e2HOI9nTQx62NWsitmS+nmc
	 GjiByQQoSucLJDC8enyB22JHOiXIFPWiGzhYotiKZbB9D6Cpoj0kv7vX5wfsrsrtRQ
	 NOJ75QLqjmcpabPp9pEyCuqAFP1a7UoVsu5QTuAJm98bR7NBlkdj8EdxgJ2mNeB751
	 GNWhEjbnCNxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B8CC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629003371.25938.1940115289955348306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e36c9795379577dad864668f191f559998b50209a6e4cd26cd3da830430a14
Date: Sun, 09 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786290033
