Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C29524887F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751449195; cv=none; b=Ol+idACJowtMbPa/q6xTrue6AuYo3a8EXTzvfA/3bpjkCXlTuCOdwXGwWR7GCFLemoHwjCBxfZR8VMl7x/GCjpBPwcEEZBuF3JEThR5bPZqq4d2ui/BIFqnwPBAEU3XmFqVHEQLJWZJvUxS6IKZE0mX2SnF3EAoJySnguCHf3Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751449195; c=relaxed/simple;
	bh=f+R9co4JLMpD30ZsAyM2Ugr7ia7Q0ZmDeE23UmvHxuQ=;
	h=To:Subject:From:Message-Id:Date; b=pxsHlnkCnz2Vj9nW1z4+CP8faUTjlCzqR2ZqbMmtjxxVxhPED2D7VeJxwlW2vTcsCsnp0PAUGzjOnufxLWqb4gNEDPUIoCXDfwnavJg0DUGz2YYSRjxbw7NCe2Ott5o6FuSycMO5ui+CuMTcmZsN8iPWW8Yu+zKt2gqSY3TuvN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQuVu1fi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQuVu1fi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAD3C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751449193;
	bh=f+R9co4JLMpD30ZsAyM2Ugr7ia7Q0ZmDeE23UmvHxuQ=;
	h=To:Subject:From:Date:From;
	b=WQuVu1fi/F/eEep6D0cAUmwCJ8wywkrvuwQGQohXKzyRglWS6sEAS52ekDBQccNCn
	 zLNRo+QzQizKyxjumjZro8AxLOZ2fv6DEa0xwsKLEuMi8b7Q2n71SCuwrWRjCQkWUi
	 z8qpRqR6iCrY0z6h2JTtkv77UltAwjM4TWsWu35J+fu6R57AUJ9GlK2uIFDFnVp1xB
	 gyXgTO4PeAYsw6vzk+2PFYoWX4qcFKF1qTMh57POsFLz/ubUJnLZB2E4SHRSh2ntvF
	 io4eVaSvbjkkgQr4NXyO/aBXI+qtR0qA2r+xxjlyUg98HLu88HLS5ysqqf600AqLQb
	 x9VzUQrK7ZNEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB45C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144919358.17591.14252328233425423343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ee9e216974a229c2c867ed386fd7f2559827469294811201113985d9377844
Date: Wed, 02 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751449193
