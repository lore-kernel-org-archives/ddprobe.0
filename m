Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C8E2C11F8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768452234; cv=none; b=A8g2jnqDAx9Ynrrv0xn6R+plSWbSXh2cxx1udUtJqQH5H0ot+1GY/tP8td1S4bojhuWfg60FqpLi9xXQnlN734rqlH5eL7aFFHi8qoWWTMxY9QgPK1Y66fMjraZ5sp2MVB5GegPJVIQRQApN3JMAODcJqViwa2eiovZaxx2ZMtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768452234; c=relaxed/simple;
	bh=ySNrb/TX4WFwbXGt7LVUhux+vOPdlARpgGrG5vpTX8M=;
	h=To:Subject:From:Message-Id:Date; b=hKi6vBmGTQsNh3QG+DYdtVbUy+1xrg5YiHrID6w23szJGI6AhVE/fFYeUhLSh1JeY23mVAkqQe4cPnAi9BjA6+JkR/m46X0cCaiI6MI36HOyuF8UMauA9ETQUrp1r1aqF2+8uUMSb9BXEFW+jQ7GRQyW9h3LSotbTP9XcicB/1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INn05JB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INn05JB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3209C2BC87
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768452233;
	bh=ySNrb/TX4WFwbXGt7LVUhux+vOPdlARpgGrG5vpTX8M=;
	h=To:Subject:From:Date:From;
	b=INn05JB6Av97Fj1B4BN7QzJnJ8RP27fzTMT65k96CRvBGjkt08OnGzg9zYSZT36ch
	 LXyi8PtC22F7v8McrvKCcGbsoD/h9s2e2TgfUlfY2CM5/xSxFK2U4NqzX5ifeSqHmG
	 7OoP1ZufG9KKz2tT1arm1qRXwF+L1cCSCRhI4eMEf3vx9chvMlqFmiOIUdxoul42jg
	 Imc5eJMWqM3yckVUAE2/o+etD3EhDHMxcLZUYryq8xWPP7a1b4RuYskf7n+xjOh1eJ
	 cowQaAh80QwqxEjLkAP3YK8IfyxXrbhe33M8tN663/C5KkfXZp8HarjDxOx96aaY4R
	 5QHw4dfwuLKTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C2ED3CCAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845223357.3212.15889418763649168656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ceb0728d25f77ed574f2336daaaeecc8574e479b8c97b9cdea0502325faa9e
Date: Thu, 15 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768452233
