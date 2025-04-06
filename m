Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50ACC19EED3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743937194; cv=none; b=Fmh9YseMidbX/aOEfWrw/UuMDlL8bLofViTXvwDdvWjDdP4zTkut8SbYXxDw8EZ3Xg1H4x/S0JCucn7ApJ7bUeIddXjZ+2TaUaVnNC8b+d0fSNcioJX4XvIRWEoQsPJ+0QirZqDlYXzIdaZYVOQ2IDXyiEzFB2+tW/jsiTdweYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743937194; c=relaxed/simple;
	bh=5koerDIyJrOqn14FE682BBhv6G6KjO0uCnEl3j8Fzz8=;
	h=To:Subject:From:Message-Id:Date; b=EJ3tMHmWcvVGWGBRXMCiGl1k8fGpO91cAlITMz1CfQUMcPt99OLQX1x3cKUTPBPZsMY8Pk63t2KKfZ5ncbk1In4gNE4voaPqNr+LO46OZE9mbB7juocFaU8b6ScQrj2K6WkkjwTg+XlfqYtIRqKX+S70fDIMUTJ1T/B5kE9jp+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTCA04gN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTCA04gN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1AEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743937193;
	bh=5koerDIyJrOqn14FE682BBhv6G6KjO0uCnEl3j8Fzz8=;
	h=To:Subject:From:Date:From;
	b=YTCA04gNUYQDcKsfoi8dYmEtakxXm6i0DNN8DjY5zil1hf8OG2pHqo8JEh2nD9MNB
	 0CFDsy9KPZR5deB2mHlZjwGmKxLFkJ9icMaPMp5hke3m72OYas0OIHrlmqaKWT38sR
	 czsDzEmcRkqx1A6StPOYW5HHcf+xEs30LELYWc4o0qm+gFXSd4Uk/ZeGdfX+9ixypE
	 tqbhomHhEQcCL5GOIaW35LtIDMEBTokQ/ZQKQCMM26zpp2kL8Hn9g9Yw9zcs9Y88v5
	 3VlWad0JUOFW+JmJPOzIRe0VWL9CnnYACkaDExchWsuup+Oh6SGizulfg9ca9RyVqZ
	 1JpneOlremSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B5C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393719358.13591.13444536187956743273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8712f3d1e982c100627192a0115616921d0b3c64048533588b45d164106609
Date: Sun, 06 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743937193
