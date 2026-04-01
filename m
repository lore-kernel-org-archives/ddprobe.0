Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2637718B0F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775069134; cv=none; b=OEUULo/GI4ajDlUB7wdyRt6gI1JnMUWMIsbfoEfx2kS5pi2hHiLN1muHZUV8trYvoilgmAqMyJMgJpcKWoCX8uU5oGwMkbTogtwPQbrBm5Z7/0PvLNK82NDzuhMJ4e3mU/bKrYv+07WZNHCJNetTpGrVKRy0bbdOHbsL5KxLv1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775069134; c=relaxed/simple;
	bh=lzQlhEnVXwAXaW6gYS80rkqyFmxdOa5+UDsVrgQ1LG0=;
	h=To:Subject:From:Message-Id:Date; b=CphECj0a57xtSDq8EKExiubb44mN3uLE6o41txbhYMFdj+pU9VX4Lhr6ePUh9m0VoSu/PpwSyY7PfAbRnE+jXGHDRKYmmt92eStw/3+82zIwwCJ6lJ0eaLf4+44gJN/Hefxr1+9MF7VUNpQTMgf0s5lP0i59Vhz4iJqUhkMpvKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlngnfOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlngnfOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4CAC2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775069133;
	bh=lzQlhEnVXwAXaW6gYS80rkqyFmxdOa5+UDsVrgQ1LG0=;
	h=To:Subject:From:Date:From;
	b=WlngnfOm8dytQuj1VouUyBILtLrz9Mx6B29XAnNAOhJpanwg9pYsJYMHNwya2SUsh
	 /uPCvI/7Vkxv2N2zhmxjmGMtlc69GQ5kN0zpZ4pfMy277/ZTQSXmuK/gJ633BsvRT7
	 U+7aDTwrpKaHedfumeJQe3YZ54JSO4aLDBF7qW/K3RXgJQwWuqbLzZJnA53rt/nT+2
	 UMInhJTo/9/kPW8GWosuWMeKJ+SvV02OfWXLOsCYegvtP4tTlZqJuQT4vfwRwpMfJi
	 OCsT7V3KZ+JPx55OmcbmhfFh2z+mMQZ7I879tmaAtajEQv1ZIriTZOXAZyZXFcPObL
	 3Ww1TueNJsHlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD4B10FCAC0
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506913369.2339.11722578419190483660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdde0ad1e9b28646ec945820de2d2a0d48a4ff666d92fd27a0229e2bca0fa7d4
Date: Wed, 01 Apr 2026 18:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775069133
