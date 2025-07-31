Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7D581E
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753920594; cv=none; b=odeE354UQDcYGRQmL8bE8wfajPPTERzZpdWeJnm8pvuiueJxASIyoY122WEfhVUsoilo4k8QLSGRXzbt0ogZhjFB/THfyoAGyyaIM40Z0KMipqF5arvSdQLwq+kffsiuW8KzATwsN44NNTJuIqRo9CT+suMIPbCpBXiMwXapDgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753920594; c=relaxed/simple;
	bh=6YLIwInsGGH1bhQsg/KoBtJ9V+cVoasooe20UwAeGO4=;
	h=To:Subject:From:Message-Id:Date; b=tVa/0VteWEcMFVmwg322qKsj1ChfTBmMWZFECTf+nk7tfD/gPylV57MAOP27UY2y39W3dtUEnRnv8H9TcKIJ35VJ5JHHv90XmfMcWorUo1u/D9vPWkGqQGy9lQp+DbVi4tw+0HHuBTuVulWfI8omnOxtr6kMXaGi6XCWVksjihg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFPbXMNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFPbXMNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D55C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753920593;
	bh=6YLIwInsGGH1bhQsg/KoBtJ9V+cVoasooe20UwAeGO4=;
	h=To:Subject:From:Date:From;
	b=LFPbXMNYwX3i0EdukHkIkb6bif9z+43VlEJCsWXeTTnmXajMORBBgZCCSgt36i57T
	 Eh5Tj9uEJ9RQJXyxZcKm688hFtxLvxT2RjQ8pviLyj49qjKCmpRj0ItmRlMjwOcIUz
	 0DCE3qPfskIzaxhawtPK20H4j5X4K2zrMhRwxp6mtxmVNUfyL8ayQ/Tkb7gbzX5Jcj
	 eIZDdenKB1BzngwKbSxKcJ8fcLmzrTnYbYu0f91JbYzV9SREbfGujWFIkkAJFcKQAw
	 YL3tbOdSEpvwe4FA0QOaf9qBR1VIlOaE844TvPj0jqdmIWMqgJcE4SKkus0zajMGOO
	 nYc0Gz68RU+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98565C87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392059359.24654.4795014165548685697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12a7663ff27323d654cad0e2256797d9ea2757c687d39fd2b7383fdd46571a7
Date: Thu, 31 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753920593
