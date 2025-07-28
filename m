Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FAF277007
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753725594; cv=none; b=b0d3QN8Wc2yopz7svKJ4JvTxQPAsjqwMqWrI3Mj9a4zXNr4NH35XhPZ/lQ1oki/K8PbcDJhC3w+4LZi/PLEI0tjEs7bXhQnVbCQ3DZUYTnKJxOD5M7N3f465w8tEj7OPskxxSWX9TI/02kHYNepZs8xcxJZmLJThIjHME/aZjYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753725594; c=relaxed/simple;
	bh=affHniPgQz0nQH4/r89GO511IPpXEy2/nA4aoQlOxTk=;
	h=To:Subject:From:Message-Id:Date; b=k4oXV3/7yzxBjam0mWSX7pXkWssVX9hqdm+4cQFlxM+LdCHQ1UUnpy9yrUwBnOEb2hTAstrAWqqnrcrJA9TYwNu2sif9odGHs82u9DZtzbg71DlYvcVq47KEDxZPBwRLAosMadW+83B2RSR8SRmcJIADo2YIZDJFfXX1Gz3RSIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A57Zjzil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A57Zjzil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74CEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753725593;
	bh=affHniPgQz0nQH4/r89GO511IPpXEy2/nA4aoQlOxTk=;
	h=To:Subject:From:Date:From;
	b=A57ZjzilS1V+Tc38qhF6EMS8d4eyltIGBrfgiWRcZm2cLcU2IMG2cqyK4R7iL917i
	 SxdYR43LIuoaX62khP9W6FATTGC5kF2vr/wCvqddOuiHZ/deBnzvCehgG132zWK5LU
	 OrI9gG5y3iyVfTNZf9Nd2frtU762CMokwuM1vJdvL94jEWM808fpi//RWzg8pUckAa
	 +sJDQzJqtISaaqS1xXjMoMY0vMl9/XE4Lj0caYDJ8gG5ICBMdforYBtXxtD7KOmW7F
	 h3xJHGe1QIYNbEkGC8IlgIoVqOJ1uGvYlGOIp1bMjkqkjFOyRdf/ccJ9xbanImujvj
	 dvKQ54DJ1gWHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B2AC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372559358.3004.5268376947801270842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32a10db632dee568fba2d4a6e14812587ab0361c5c1141d3db0d60ac4948302
Date: Mon, 28 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753725593
