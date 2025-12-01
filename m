Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C656BFCE
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764553974; cv=none; b=p57Xp1Nr3DWLMx8rAXKxsyiAgyQVvQriQYeeUne+uCLHBwDUlWpvX+5MugRBu/uJGcZ/iapU1J4vJm/7gO5fucxqvSy7LKfh7E3mb7/Fu9HZ5csmjeRRGur8f2ggJpm5Eo/AspwJdvcyUhmMXjfvuiHkceMrtahqFm4LEsCWRAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764553974; c=relaxed/simple;
	bh=ngLyBivDMyr0zawymDdGQrBLRQVtQ5oQ4U36o78RJIo=;
	h=To:Subject:From:Message-Id:Date; b=r6ehezgoF4rIIv0ayTMCG78QBm66zaxV5APSTH3DEmxd2w6r9562RkivJlwT4EIoqdy1mdjV5W2HcI7gYSYJ1LqzXO8NDXX1DLGAvFm+gR6ZC8y7JOpQYLgQBupQx2AchmpbO8Ue/hySyGjLdLbCPYt5CPFX4WTY41cX9TsJDUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctIMJdOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctIMJdOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CE5C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764553973;
	bh=ngLyBivDMyr0zawymDdGQrBLRQVtQ5oQ4U36o78RJIo=;
	h=To:Subject:From:Date:From;
	b=ctIMJdOwXW77n2jc0zT1Wng7sG0sl7m0uiXmF+Sb59/C1GkDnM79IaT8i+hgl1nju
	 4aQYzSby6DCzjqcMhpGJOfw/99zDiZvkI59B6eWFIXooXjvLHS7QFaenl7iZvaqHh4
	 4YRgQbYnp2/B+1MWVULevnkM7hmX+SCzDwKtjd/1a9wKTkP8RO0e1iF+eLM0u3as6q
	 bAh5khHah1UjYBjVlGz3VeE5CwRWf7unHokY3xra8TG9LFA7BZdkutynI2RJBy68bC
	 GHQtKGOH4u9toKf10Hs3Vr8Z7y6xi/O4XfrnCYqZNMcbuCAUnZOBkxH6xk1p62/phv
	 RPo3bmj2pBIxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9173FD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455397358.4399.13619381951115131048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f84a138e1a25510f6bf989246dc4661916da86a7fbd9fc5b6f832153a09237
Date: Mon, 01 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764553973
