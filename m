Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1955E2D5935
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771604694; cv=none; b=MxEsX/kYF8KS7+ySOJ3xLPkxIHWptKMxMPipBaxuIfCiA/TkWTAx7YkXdwncMkPOnhFyJ6kcZ7gjyy9IFrvJFEaY6E6Ir3VyARP0BeHnzGtPCpCJ1bQdb+imZZPwrCe53Hn//xiDKMOv2ukCyEO/WY+lhfCYACltux0olM+kxCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771604694; c=relaxed/simple;
	bh=hvAoifFEddI75/dFGQfnZKQsqTB1VDzZ1yiG/bx0Mz0=;
	h=To:Subject:From:Message-Id:Date; b=nC3X93JHp7Yr0MztvEjb4H8m0dhroTgGVHVMWhGtq0PyZiuXgxO8WhKkAJImVZ4HYGVAirn308Qm5ZGvcZzQtYqHwIGNLH+83S6tj9oLESeUu4amffhjbHqjrA3tSUuGfedyVaqLNMRWHU3B5dX2FZ8f9sa8lyhT27xjnDWrLSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHBoroIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHBoroIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3747C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771604693;
	bh=hvAoifFEddI75/dFGQfnZKQsqTB1VDzZ1yiG/bx0Mz0=;
	h=To:Subject:From:Date:From;
	b=lHBoroIUaa319B+sBZ8iiQem3Pn0lOWEYGT5Xn5Hu8AMJW1kGMniM54tzjcUQyGNQ
	 P8fL8Z3MA3StGLTh3Afq2LUMSeSEpKYeLxaCvifvKfF/qyr9jbbt58k05wjzuKF7UI
	 KhOxRqG7Uo9ursT4CqMTdZEDyLboUhMzrO7n15/FY6Yfu3PkQ02ENEurXIzilPJL/H
	 gmKqySzVIWhVCCKOjobrUiqSDKkyYdx1mEwU1hL0mP6v/lI8HTBsIcCNB68dBYvDvG
	 kjMnzFJ0pBdbrQtJ06ao0FBWCebJxDmHkF/YlYPlM7df0EPgikPZd+leijNdAaTmqn
	 By3YB+o5OEAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD68C5ACD3
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160469362.26663.8739822343633730931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d221a59ef530ba3e293b53dafe65fc31bf1f67fe0d0dfc1db0da552ff0486b1
Date: Fri, 20 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771604693
