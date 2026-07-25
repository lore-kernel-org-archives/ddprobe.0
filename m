Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5191327703
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785009634; cv=none; b=jApTwokl/fUc64xE7ihtLTjFwHy3BPkd26LVQKhex3P646DSl2autnbwky2xWf2UHnhac+xhckbYdjGAnzJTVX+WOmbVpF/l8P7e3Wc8/ZV0V3CrsAtcJh4lDnYKT4rsOOQR/yYcGavu2ZFO+CbDJ8KeQCwOrQjAnNqWrEmyg/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785009634; c=relaxed/simple;
	bh=aNOC9MclwChBVJnXp2ZTLLef4fg7BxZXZzpQ9mXZ7KE=;
	h=To:Subject:From:Message-Id:Date; b=a38NKXBb4GRAYqpxqIX62kPIo6rqkKs0o2f/WcmhKF/C7+rLSJOFvrVqVBM/gp1l9PS9zksw2Ai3n7IzmN+XbaWDLMEj8EPWLfnA/TmdObQtnUFkeY1VEzdSBrmteMYFHtDQG9J1JmkR0qKlwdzqrgPeKNCex25aDhWgPpHM/0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+3WTcua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+3WTcua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFAAC2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785009633;
	bh=aNOC9MclwChBVJnXp2ZTLLef4fg7BxZXZzpQ9mXZ7KE=;
	h=To:Subject:From:Date:From;
	b=U+3WTcuaN9SVGlguMWXWplnpKeavKRU0wIRb+A9RoQ8a2O3+sYNZfIfLw4oQuC1Jn
	 wknCvXHX+u0KlH//H22WhE4hOv92jw903g6mW1ExyjOHU9UOTjj+YROP70GXLztm1y
	 /8G+VEeEcP+G+1H7RRQIzZeQZQNvLQCtHygfrC+zh/vhw6QTY7JWcS3xw4DWO+NmAT
	 aJiV5Ki2qca1eyFkqoQBq3MGUWFBkzghcc147f06lnQlIiT+1SEXOzK/fZjzwiJ+N3
	 sjz3gxdreNuKva/4sBjf0VvDHdu8bEM4BPmPdvwT03nOqvCcQYQ161wdawtcr85H2b
	 E8Rlx/DL5sRXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4B7C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500963368.15442.10813735266698657940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51201dce32a88557950ee1752b17715fd9b7305cb5c5c61aa1fdf9500ba8f1e5
Date: Sat, 25 Jul 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785009633
