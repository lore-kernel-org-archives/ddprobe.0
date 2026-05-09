Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AC9288530
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778302654; cv=none; b=si9R4yIkRcDarvguxYM1WhWe5p7hBQXLVrJj0abRK7VC0ewfTncPwEjZIHsTqmZyzqF8OjTgWXG5CIlcI1fxNGpBp9Eoh4KP7qugvoGl9qmJqoD6pXJkOrJ+kaC1+qSrGsdN76tC4Y3dfv0xtaIeDksGdem5uPUT2CBIzHBzxeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778302654; c=relaxed/simple;
	bh=y7ikd8ouLK5LoyUYSY0ghJ5r1I9KQOa9uTJwgYRiYjk=;
	h=To:Subject:From:Message-Id:Date; b=gqMCt7x2N2Gs7ydJp/mPzLAyzNGEa7eagJk9TyXYRp7uc1Aj5sgpP2cFmVpFxMflHTh5yeiPvAFbmbmV8CnLrmvohOKbhnGQir3Wz61PlBsAHBb1Ek8MEz04xQ8fgl+8p0ceCVs2ethhTU/Kz5yZfFNIiskbg27wkXbgH9aDnzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzg3tdck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzg3tdck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAC9C2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778302653;
	bh=y7ikd8ouLK5LoyUYSY0ghJ5r1I9KQOa9uTJwgYRiYjk=;
	h=To:Subject:From:Date:From;
	b=kzg3tdckiyHQJ8kEeawm7PTk6EDjs7utvJLhnYTkXVHGOkmja19pynH46MbzCWz30
	 psHkr3pvn50fcebbLbYj0FVs/WFhKBafGy1ypRdABM8DO7Z31MySQtn+FYWTdoKtGn
	 g8zCQcELbpGOWPsqwjAlzsW1WC1jzX8+dAe1NeZ95xcrWc5cmoCsGdKY0VqVnuGHjn
	 NfUulmJ/djWacMN6OctbniBYAPVuaPVcX//aHvwmkT4/9+qNSNu6+HrtT1aFDRKOft
	 smWYXYY2kWmMSXijhOKP/aE9APw2hxJbPF4HhmFuUBZ24TCUhNdb43+Bmaf+pgMjfn
	 p6j/MJTKtlsog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6FDCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830265368.26422.5697555223031010782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe8aa51026aa974ce351a05b6b52cfe89085bd10d92a53f33a3e2caedf41b4e
Date: Sat, 09 May 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778302653
