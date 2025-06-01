Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388E42DCC09
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748792394; cv=none; b=IMcxSWlZYWnT0zM6L2ld2+K3iRVsHwFJ9KDAqdrMxsbnDjHwtUHqmUfRIuE8LuoMb69NzPYgL0KE6n0PlNmJSnCqtc58yDQPvX86FY0+keFSh4lYTiKTUAaPlQVyA639+llba1S1EufmpxKkoPv/MOdgB8JM+UeRfbBziUAkU48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748792394; c=relaxed/simple;
	bh=LV6O0UbEiomyx9PmcTLB3T3KOOM5x3U+wygmenB4gbc=;
	h=To:Subject:From:Message-Id:Date; b=p9PDzeLtUCqQBwptvQBQQ4T9t2YU2mbwZiUraXqHdhWfvWKyhqwHwInybq8u1TZT7qVY0UfZ+yqR/x5DHN0Ag3ncfE1QoIrBlfUPXQKN3y786Tat1oAa491t5O2i08daKedPKM1/4qUnMldh4CqnltO2xK4u5QpdYo0H/pY8VzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4Q7VVwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4Q7VVwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA6AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748792393;
	bh=LV6O0UbEiomyx9PmcTLB3T3KOOM5x3U+wygmenB4gbc=;
	h=To:Subject:From:Date:From;
	b=Q4Q7VVwh0cbevXj7txhmn0++8V5hLtoq76bjtDbm5j7X3HKUQ7iZzPWnt5o90CLPL
	 mqNIBR0zI9rSUD7jQZItF20mZgTTY9MmT8L4BOGnS9iVllV46TGFkcNdyNX5wh35B+
	 yCfKodH3mjaTGesFh0nQLegHWgwI7BcgmamsZVGO64LzDLNwIbs6hwsZ/BAwYkXg41
	 8iyUJLnMsg28KL7L7Zre/l9gwwbLP7MQHDlWubVMwiQybvVf30sB027QxpFgpX6tfZ
	 8XysFzkePp255+97Cun5zB8wQspr6L0PxfvuwmoixBl5dvZ9qVN2MpXOD3mDA9gy0q
	 iCCTy91LY5Jjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97103C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879239358.11344.103129100478184460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40818e9e9c79f24a5b4c1664693bd37408da5da59f34a9432baf4fd293b1586b
Date: Sun, 01 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748792393
