Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A83F332917
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770708834; cv=none; b=H1w3enNMRq9uaku9FCWGBmqNH5oRrnv1nbyxgJ5eLVlZbyg8FiOb3ZnIR80aOHFawIHXSusrpSTMwHJlH5omOaFLk44+XED0yECoDrzXi//vlp8hREEl76OSBy2MAFDu4ld/wkpwIhiDsdtcKWpUzKoGBuD+b0aSfw6/CsSH0wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770708834; c=relaxed/simple;
	bh=bFfcxw9v0rkRj5y6m3NXvgk4N9ohi+dFDLCzhry93Jk=;
	h=To:Subject:From:Message-Id:Date; b=caWzdSxna9jjS2jhpuZikMjaWk5XUg8szlIkCaFSgZzw1a4PsomSjcjttW6CU4n+x33aJcRuc3bWML6jniFJVp9aSYp0tZoSC+FO94OnATMB15Gx6IVLcdmDuCg/5OhmHQPlpDq4/6gkOnIYTLxr/TR9gfes/bI5Ahd7di+oj2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZcSihYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZcSihYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A542BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770708833;
	bh=bFfcxw9v0rkRj5y6m3NXvgk4N9ohi+dFDLCzhry93Jk=;
	h=To:Subject:From:Date:From;
	b=rZcSihYqJbgHqEDCs3y+wQ7szNl/1OhIltLeqEOyuztligSFSDCmUmvQqyY1vCXlA
	 uKyXUg5N97/YJtzpvdno9JxEb+P++mxgDdBchfAkjZW7P08FI6QGf2x9lxCpkItaqT
	 da7fJhfzDYzMozlwU0JenxW+AT0emEeQuXDr6x7uTxQDGRXH2eE7vYnc/ygeEuCOCc
	 gbm5l+hTlOa5HT32S5dCX0dTXyYMOpyuxauXVNvdsYLkkXsAkKWLok1d/Cqs3EkSsh
	 JzcCzzSjhOtb9Gup7i6HLF9V61lEJ0wGviKeaDd0a/YIfuxMsvBbQzE0ViLYlUqp0Z
	 53HNSi0b3tVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92603EA3F14
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070883359.1213.2241107400027522958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18ce28bd3765328c3dedd73abb180e60977cd5f9dcc164f603e4be2825e8d02
Date: Tue, 10 Feb 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770708833
