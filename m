Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFC8A93D
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753570194; cv=none; b=Jl/eso7t0EGZ1q3l1wq3lsZHylqD1vMCc3ohzV5kPf2UUJyADfAFhtm58ePBwGQM5sjO8xz8Ok8WnRktzWYy83SkiEWac5XptpCxO0HNoOuTirJud7v00ReVrD1pAEP1OScLs3xLrbgw4WdW0IvSa1wVoNnoPnlUjIk/LcRZfx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753570194; c=relaxed/simple;
	bh=3FEWg9gcmqGt3Zi09wud7PyQdr+o5jHYO89CeAr3YlU=;
	h=To:Subject:From:Message-Id:Date; b=k57ipaDuwolXh0e1At/+JfZ9KG2o/FUf/p7Pab3aUsxRUOjB4MTRftZbiLF4pq40PFcaq8iNZM29R3X7NsDw88EFIzIE5X/lsHMTOyOixL1YUR2+eGfOytsvFcmDDWlqmNovsTLD62YiP5YH4pp4cwy7i3zOtfEsxq2kysJaQTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CloPpFD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CloPpFD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC66DC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753570193;
	bh=3FEWg9gcmqGt3Zi09wud7PyQdr+o5jHYO89CeAr3YlU=;
	h=To:Subject:From:Date:From;
	b=CloPpFD6F/1nZvnuJWV39Co69o6qXFMbhx7/jDPMsONLGWxmGwZofnvFaAeRkWOYW
	 dnp3fegJ/BQKicr5AZdu6cier2IKkKPqt8H68idLkM+BCXNTrb0L8vS1F88haZDG2K
	 TSMbbRiYFeNXbmPT8byOjJcWMc9QsSBl7FzvmSUK3Nz+rFyKHNkL0ZZt0C4Nilp4xv
	 w98l+brwE8zLMsYO78aLr5z5yHpqCXTK23UG7aOr1KI4AnbY/fv66FRRA51Sg+Y6wr
	 dNr+sGMGHlHcWHAdQEM0+2/R2tnXdNyHC4J5wGvR1MlfIrr/xrkJV9lts4NE01jcDS
	 meDOrlhuHrW9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975A3C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357019357.28817.9850435505994891600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81adabe465da9b06e8be439e15f81fc10bbba04a8a814d429065a184b22ec5cc
Date: Sat, 26 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753570193
