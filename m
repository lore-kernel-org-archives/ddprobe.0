Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2619733CEA8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756735794; cv=none; b=LsVFYppXwnPwvzauuuGcBnbALfw4aL4YG+bUtpKSa3UK47ySehTdEpNkr7mQqAhgHh0xi2WZzUAEQgDROsgPMtqG8YmsjkqPYzib88O+cMHTVnVxBen5jQ7IlQ1CztHPAIwrS2fKPz+s75zCyQOmkeBIYf3J89HDF6/3xXly8Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756735794; c=relaxed/simple;
	bh=9JIKuZPqRslljXRvMYpfFGTcTEO4BJ9Ya46YK3PyIBM=;
	h=To:Subject:From:Message-Id:Date; b=ZjjfH44NWl+TuxuuiGyziV9Rs1TgbB2JeXaaua5AktlHGY379fMC9KEOExAyPaIogTqBOGfCk/Xx8jT9wzWvW+dbzIOKkqoTffRbPi5bgIMXtH/dkvkLiqgsSPMUQ+KKYDAZwKx+ongYWHz5Q3KoQUjwDWVxw4Zp6CDfdSJ8ZtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+lEg+Bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+lEg+Bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E86C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756735793;
	bh=9JIKuZPqRslljXRvMYpfFGTcTEO4BJ9Ya46YK3PyIBM=;
	h=To:Subject:From:Date:From;
	b=l+lEg+BgJ3hIYjU2qcr9wy/omOYumdSGY6+Y3FLntLmQtRl+DcF+DbGJx6hW37nIl
	 Zu13V4rsmyk1nE/P6j4sh5o4MFqb9ZnjB2OGJCPON4OrmLMViJq4BklErwePOTL28N
	 28kkBTy80sPDL4p/oJb+WlaBT+fLCVNQK5hDkHAGGO10eDLF3znCg7LXgIzOS+aHCu
	 KhFPpsfCzrfDvZrmY+S3/ZV/iX8/sGi6xsje+mptcFhLi1qqnx7XQDnbqe63W61sVQ
	 tXlf0GV3jPkswZuZCP/DyowXqW3HFoKaHdoVR/ToGsP4SEXWJjMCh8oSa5j8ccf4I6
	 ihu3Lxc9Jlg2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F0BCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673579358.13721.16848324552865397139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efcb5001351c4c77ba39d552f7e76bae104709a9ca95b3cb42e10898a58bf3b
Date: Mon, 01 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756735793
