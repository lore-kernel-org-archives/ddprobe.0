Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560EC202651
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729269954; cv=none; b=cqMfKo7Ug6wyxI90FBXUNb9Py4M3C9v0ErlmEM15i7Ck9G17ttpxHDj4viMebS5jnDPe8bKj2nmWZWkwOGZhi9+UUiNn770ZnTYxZTocCl1qqgJkw3b96mzIPepQwJQZOwzs7jbLAsLIxgFXSQ/e8fCjOpwXHmYkeTJDtWgQKx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729269954; c=relaxed/simple;
	bh=EQMakRsyt5UYfdbsZQRtJZHKIkLSFoduPT5TtXuF59Y=;
	h=To:Subject:From:Message-Id:Date; b=oxgETbk94mCWL5T9ilf642T0xr6CXP5paCGjzG9cwd7AGfOKnouZ0CXY1GaBD9zgZZ+xMatSG2eHBVgL+DSaR4JBLrUhhfbFew4uGCI6ypP+IVCtIG+n4Ujl2reS2y7AJbeBVVxo0MfiMJHaM76IuKJrvoCyIVXiTd/7ZSs373g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoN6xVl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoN6xVl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1746C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729269953;
	bh=EQMakRsyt5UYfdbsZQRtJZHKIkLSFoduPT5TtXuF59Y=;
	h=To:Subject:From:Date:From;
	b=JoN6xVl/UkUJID+mWSILiYtgqqWpKgCk/pZ1FLHAHFTh/o53eBLObfwpALI7tySDv
	 Dgm5UcUOXcepSrQhYZ6WSgRBquA9fhT1uJjVSGlyLAbl1Ykq0tImT5odmcSD/B7+rt
	 W6IrKqbhWYGW1mt9oVVgKwQW5FZoYxP4Jajd6US7/vlxLdbtkDqgPgmd2NJzVZP5Iy
	 lc02MMePKCxdeGf8hjOnXrTprCTS6t9xo49Qt9qFEfZCvnGbMAcVOsmChPGO+jJJrT
	 QV9RKgbnygBkKfckMAcAwUXQ+HwTXEUK5XvdBFx6bmur9UGv3KOa5XddNthJTIDl4H
	 16PKlaR9flIeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9060CD3C536
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172926995358.23065.9479691437053417312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2bee7f9acb1b7ce4cf1fb3532465687110c4d4f9c66189884a7b813f70a419
Date: Fri, 18 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729269953
