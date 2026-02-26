Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D284128507B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772084693; cv=none; b=LO61ClrGbQLaNOH6M5o2lqyNWLeOY7USphZ9QGxNRxUqKuh4Th8nOVfo/YijPz2rJTzotHzRcvKGCsTYsHeMQjEtkH4EZk8CHKRm9OYAyEyXOgg7XZtkUQbsxatt/z925yaynBqMrUTxlbWR11G1AS9pVbLuTae98mFi42RgAi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772084693; c=relaxed/simple;
	bh=ukDJ2ibE+m8HcuFPr4P+vGyA4q5cYmANAYETZsYym/U=;
	h=To:Subject:From:Message-Id:Date; b=YJ7hZ2ci0bYsXrV3B2t7oUazlLU+AmfItvfbTX/niMk34ie9DD2q6vHCKDjmu8XsmKtt0DRwJzR7Yt7rQXSwp+uG0NLJ7lNyAzMclJjtsQ86Msvgr2maBKYNex/jzTSw3O5DbgzvFigsPXbQCdM60CoCc4wesTFhLp7NkRsvcNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgqQsY69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgqQsY69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26D3C19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772084693;
	bh=ukDJ2ibE+m8HcuFPr4P+vGyA4q5cYmANAYETZsYym/U=;
	h=To:Subject:From:Date:From;
	b=SgqQsY69nu/KPDASUoH4XdCGCaqCxtRFdMDzEpkVG0+R3TiKu4fFllecU5Pk0rcEI
	 X1IWhLj0ka0RdEwpMg9n3yh3W7rTtJQQ1yB/CWE8+wjoZ/PS1ZlIuYA8YvUsiyWO9n
	 rJGLBKlWYc3kOb0mgYJ2rF0huXmsknUofMYWdErlcFwQB8NDcjx2Mm4sIhJ2jpK4lD
	 TnEvQEz6lcinNfQkK0nQi0ic/JrG45sqfjwrdP4yjEPJ2SDLmwVhnC90smeldouXML
	 zyJMEBj7fwnm2iS+fqI/V0q0Q9ZYC9G5Z2IUz3zdcHTGe7AGOYiVbQ5M30uuKTr2XK
	 dbjLqZzWLIu5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F007FD461F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208469360.7360.11610669689857037941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8ce787c6279f63f59020d83281472868046f372571a8b2c7babc66bf69e9df
Date: Thu, 26 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772084693
