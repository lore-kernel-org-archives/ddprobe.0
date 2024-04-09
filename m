Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133E18F45
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712626097; cv=none; b=OMHGMsc4BoohvxJnXZBMnPwk3pigg3SMVn5C6iPvEUieIvtybA1UlTnKQkFaaVxD5sO/v2GDhUfokzHA1yeZUX2l/7vhxtXK9vjpwgp1H3NR6BEpvuseFsiqpjgWM8PNvBbp4Uz9Z7XKRpB/NRvlNatZvvmCD3+G54TV7nZZZqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712626097; c=relaxed/simple;
	bh=8OH9ESmI4UutnNWtuS/OET2luEHzP856lP7HjrwsM9g=;
	h=To:Subject:From:Message-Id:Date; b=bMnLhzOBLu2KwOnA96oihFuscrRP7S6mjjeBgcPV4P+tk7Kq14BShBmtWbIwKILm2YDbC0F2bufYuK80v2HjLHd50ktdBxhNnZiL/vbo8tc1f6CVV5eqKWfWc3b54R670pwrBgTYXFePgouKWjbwQB2pLTfEBrf2fI7Tuls0cRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anc2lUot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anc2lUot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8646FC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712626096;
	bh=8OH9ESmI4UutnNWtuS/OET2luEHzP856lP7HjrwsM9g=;
	h=To:Subject:From:Date:From;
	b=anc2lUotpCBdC4HWMObbnYJ1oKdoZYjHaRRAhKWgaN+SL6Vvugm1Nu8P+m8/T0ukl
	 vX+FAWDcf0TrK2DiCBHd1pyt5e6rnkfOfdFSpSSrVd0xo0n5vOKDB8apTfA/69+S4P
	 1WIxjxS6Vm41ed7I2u3nln/16jUcpBGWNE2l8/0MdX56PIXz27+B/N/9aLKWOxq1tt
	 W/Jmite3AQUEaNR+bdYMvmtzFhlZJXoGO5gb2sKqflwwVFCI0Vy0vZ/adm8aI0UINw
	 dO5ilDNKdPFaJalV3R8Y2mffsHWhOeTZgx9X1AgJegO8JggxyvtuWVBryx7fWeWZLo
	 mFcXHyU1YiEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FAA1C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171262609642.15122.11662823814602631617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae96e12f3b8200a617fdbf1d5e595b97dbd0b797f798310545146f335bdb6df
Date: Tue, 09 Apr 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712626096
