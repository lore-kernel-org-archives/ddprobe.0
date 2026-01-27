Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BA6329E5C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769494434; cv=none; b=pJfg9lKw7UGohS8vcaq479h7yGxpJvMxovgX69lNCl7G69AFGkO3dUs795Y/OsAjnmKzDLKaAM5oq9A2/3rgv6cvJIBEn/kkTW312IhW3/rJZUTkeQ6wgMrHP78HK2VLHpdLlEnu+R4M1xkGy6IOwWhwG3Yg6GKTLriwYWin9CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769494434; c=relaxed/simple;
	bh=ALq30ztTRH6OY4lmmtm0DCQEwg84VohTKxJiw+C429Y=;
	h=To:Subject:From:Message-Id:Date; b=eW/ACdnEUWVr+HGlMyZVF9mILFlU8vuLKMUsCUIspk8d4oIyGo2POifKyBw2c5yJHD2uq4+fBLUURQ936zOjTntKhdO81IducOK4Murldk64ilrKxxqU4EnxhcC/bGOoVf7WSHHc4E2FXdY9CE5BGrT50aTmqfGrgFI7rDRFOJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hd24pgEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hd24pgEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F81C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769494433;
	bh=ALq30ztTRH6OY4lmmtm0DCQEwg84VohTKxJiw+C429Y=;
	h=To:Subject:From:Date:From;
	b=Hd24pgEAHpE8vJSZh2LP0D5w6SVWRu+zPenhqF4KpL0NPJdSvZovyN3bVqY447QdU
	 WDGCqK9LlyfOCgVIer+8S3+r5eOTBcfTUTLeX/rgnY2MjZEOr3lT4iKeh5N5i+o0z1
	 sJEz8S4joPonL5lZMG7Mq7fDWr0aYDhdXRBIRCfC3YU3XuTFtrS2/A0+u97UG91Ars
	 lN6ztGmPXMmpJZ3TtQFOoLZk40OxyeXiBXj44cQjsc7qma9ZBnHo+GHo96QDbgaVgz
	 nzXzDH6dIXHgTbf7gAuTPS3lrUEXmHKQy1h1uTjfzbdZFbdXbxWRr+OK1TXe5L3Hyt
	 0uAIqYF+0weng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F102D2594A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949443357.23277.10321392545350402707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd48d5bfac7cac68cbf9f791d2ec929ce583fa85a35a199c189c87f589d7734c
Date: Tue, 27 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769494433
