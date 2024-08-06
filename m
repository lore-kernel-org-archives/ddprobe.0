Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142EB84E0A
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722975354; cv=none; b=P66wezWBVAEsDYJcRag6SJvUwKl2+JqH5Mx6YAZ++MO5jSjFA+1gxaojyXtQe8PbiHhsx0XOFbo+AdMVsnSla8sHo1ae/Av+vh1XCrJSf8Bu0HjV83jgz6DvzqCD2mG+vndLU2GrG6iLy1zAyxQJprv9a7JpYiddq23ss/A1QSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722975354; c=relaxed/simple;
	bh=0z3mdsN3DcaeyrtMVCo11clap0K8+5IadV2UERRmvbE=;
	h=To:Subject:From:Message-Id:Date; b=N+247b6Y7UEykFPtT9z0b+jHBCqinQPdKSvxBKLzmQ2AvRB5MrOrMm8o9erFbD8wqISj5hRrnYvVgUZdSkQ71JqIqppF2zvDV5o9e/H3p5J8X3rpP7i3a91vn3rH+qyp7bLivfEv9LPev51OgQ4NUE5pAPvhqD/Vskl56jpArJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwGgj1vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwGgj1vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FC6C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722975353;
	bh=0z3mdsN3DcaeyrtMVCo11clap0K8+5IadV2UERRmvbE=;
	h=To:Subject:From:Date:From;
	b=kwGgj1vhCRh2KqKUBc+ltrmSVhd0eWLEWn9IV7jxJ49RMVdP8ztDWMFdCR8nmmZ/O
	 /cMJab1j7RWAZbeOnTcgJnlrYy63fB0ieWhpek4H6lEIUeldLsGYyjAL+GvB+zXpcY
	 MCW8mOXUbS56FIPgRX0dpaYKhlcqIz3Tl4AHL+GnvRfZiBaOgtEEbeVI/WXYhvIEMA
	 Rw55aT8FV6fteWPJlIEDu29lDPYBy54cHd00Jb4ro7UEWBo6RPhzQRSUGhoeapPf/s
	 pcwrLAt1jgkhwmj3WvxDYCDTQsZiMh+iq07rmqFv18ceJo/a8ybKP6lJsUECvwUTK4
	 uBgKQ6PBi66gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9395FC52D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172297535359.8101.18433441387345211578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4da5121d50e2b4562f7fa50bdd321cae42947d593741316c52f42206766b00
Date: Tue, 06 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722975353
