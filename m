Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095411DF74F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773026094; cv=none; b=VkVhyc4mDAIgzSq4uR26vb5fRHDuRxIbpLAuVZWBgPA5R8Ohc0uhhC9uKOuVenQBS5quB8sTZ0g4yh6Y2Lx3Y3wjH2S9i11UFdz5RxfLZ/VLgRgh3Kr2vxmgqbMgGESXRd8Fet83jS4v5WLkCaNMlLpu9+4uDuSr+gkWKPFgzk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773026094; c=relaxed/simple;
	bh=LX07K8ojovWnoyjfAgE+wyE5sQ1xHmVjRA4jgzI/Eio=;
	h=To:Subject:From:Message-Id:Date; b=USpWzDOWWcCbCVmSb/fC+L0hu9utyZw6O256xpnhy82wqx8IkJN1shsC6w8QKEn5AUWWSpVxwTLdsajgzDdP/E8oy2LLxu1AfEq1XElizEvwmFy3VxTv5Idmd8WN0a9vFwkhg7Lu+kiIcNXyb7CgAP6BEJ5ALizmIEZ4o+s2TD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsCZEiU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsCZEiU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A083AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773026093;
	bh=LX07K8ojovWnoyjfAgE+wyE5sQ1xHmVjRA4jgzI/Eio=;
	h=To:Subject:From:Date:From;
	b=bsCZEiU0EcRh2t5hWNd67Lm00nlL4R7KS8qhrigs3coQUiX1876VaanGhhINbTDI1
	 Gi1TonqifMoBZmUXvRK97mtKU9rdixkI0jVqMekpHcRA4QW2hqslCtqv1kXdCzbSie
	 FxyHYSRvOGZWO7F6Rl/zQ7tDT3p4Yf4oZ6wP4//vW3qy6WeZreUdOdmYYE45nXaP19
	 TVH5pbRQL6Q/bdAsOqLc1Dt8Y97aRHxOPTH1ZPHv2XKWtEiCID3WTATvUyJ7LUYH9S
	 P024SNs84S0syGaMJwFBbFbZZPbHcnzenH3dd/NdrJ0xEuQj08jSPWqeRqkJkgOajn
	 6A/Ld+s6/HEEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC00EA854A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302609358.830.10327768670822244291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139c0cfc29b9cc8d9435c30010f5cdc1c4bc3810ffee9fe026479956878d2733
Date: Mon, 09 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773026093
