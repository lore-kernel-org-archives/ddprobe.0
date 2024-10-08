Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F1733986
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728429354; cv=none; b=oIRLpThA2A0D3GGi+4hHkeXMKBaRrhEb2v6kJESNwEjC7l7FC+ZEb5hCq4N0uUuB5aMNgsMfwzEWhhbRdC3y7pMdDaUpnW8g3GhX4wTgwDYajnvJxhkMhLSVylayYbV28I8zM0j+Myzzxg9YPGDja4kf38DGD3HUokCvmdH9RHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728429354; c=relaxed/simple;
	bh=dr5DFLXdKwWOznIOxo0sSZs2Ysppc0WJtpvHuo61HwY=;
	h=To:Subject:From:Message-Id:Date; b=DywRLQC1xMrs56N5NkLxlDztRKKWMw1+KtfPDF1EMpN/7Mx13WsHzrN/bAJBY1zyrBlMfX3b7RgLTsBxFA6lku/pljgd7CBfreFnF2ieIuWyuo6U+VTFIIxcKfJmdijjzBnI0hwRChf3Uayw/N/84oI6trL/6bBmk+3FkN2pkRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MD2p9DJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MD2p9DJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C42C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728429353;
	bh=dr5DFLXdKwWOznIOxo0sSZs2Ysppc0WJtpvHuo61HwY=;
	h=To:Subject:From:Date:From;
	b=MD2p9DJueOM4m+s7d6cJX/N+lelWnhQfy/oM1XRc8hO20aAq/awx6nEBJVwzLznLc
	 55z4uu4GiqIW0KKf5BuYIDUombHB2U2L81PSiV4bE4p5Ms6A9romk9Dv+hB5FFAVBM
	 evF1ExVJFLA+5a4yrLMWyiV2EFM/V7qsmyw0hWZGaqL+2PXw6GoqZ7e+6EY6ljbf3b
	 30IpcJz21/IfGTdb5CIZs9lAi6Myqxfbn6jlnKoUK7dNgDY2T47bxvzlYfLkKRntKe
	 7ayYyFTigx6d+M1Dyz29boeSUQybo2R45yKgulLsRYkN7xUIAIDcu7vgUy6F5xN8Tl
	 Hw3l1fTXJPxXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A67CF042B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172842935358.32709.8540135272773103091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6985a0e89aaa8afaa504ed0acb344d2c96ff7b3111f4ec254b46f070cbd188e
Date: Tue, 08 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728429353
