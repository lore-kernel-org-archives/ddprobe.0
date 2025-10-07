Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3EA2DEA90
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759857594; cv=none; b=J5Bn3K2LQbyPL1c0XrUJFaCFTsJONk6YZtCmxvejfsCaah6i53IFKrwqaGNewLwtu+8bSobq5o2Y/Yc22R/6fC8UqdBUWRPju8o8ph/EyVQgm7uEcOMzSdA6QxZh79mO7WbDGBrDGXxQs0o0tDT/9305iUDMZqIDiffjJHGKo9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759857594; c=relaxed/simple;
	bh=Y2iWPKqKSWLLGTOAhC6HXQA9LMvvZ6iOeRNilIh2El4=;
	h=To:Subject:From:Message-Id:Date; b=HdJUiSkbH99SfsSvF3uheG4vTSUaIMwB0GIXXasV8JmW+OOyd/FyKZmRIszz4AG/hz6q+nhq7CwC7a51LU5XG7tPR/X4JzGyHso4lL0A5hTsoCfj6OOAbBGxepvo0mXwW3FTat1chYt7NSOQxekWe7TYLf23Tacaw1G0gEJNBAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrI7GWIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrI7GWIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5524C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759857593;
	bh=Y2iWPKqKSWLLGTOAhC6HXQA9LMvvZ6iOeRNilIh2El4=;
	h=To:Subject:From:Date:From;
	b=XrI7GWIFXYGD1jH7ikihQdUmS6GOyunX2d3vTsVxJgaC05QjRp1d/xDsyUdPF2lML
	 GjDbc2Jpq4adp9c/j/2R83TFGTJwWiUpOSPzZbQ251MxAp0veWjVF2ylIw6znlYSUB
	 fJH9qCCh+mm9LsN16kt0APWyNq05ulnQfmwEVkrvqroBGWmUXaWrOqYbIoqnzKHa4e
	 of3hjFA4EesduWQ4sEBTW4uY8rNh7lJnXzoQXWKiQbZW4s0DxIlDlLuBSBhpKYe3XZ
	 fVNZ0cHNng+O0jP4p2Hg3ZqjOnuEJJ3MNRDVV2nr6SUqBwaAehUTJSK4M4EH7y9gIp
	 o4icg28sW83IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D4CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985759358.10449.5876442893278750123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4c31fb5c6a878cb871646c3eeb104c7939b18cb79e20b069be79f8971d969c
Date: Tue, 07 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759857593
