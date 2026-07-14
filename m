Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB2743B493
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784019514; cv=none; b=UEHYoa2T+4Jt5a+VTzBvfAd6Vx3RY9/0YrBrijbYA0FwYJmROcPagPzY4BeQTt0cuOkr1o3AC6iwu6mXR/nEqgyiUDpK70UNj3UVlKComsm/qsOmwaUEwqhVHLdruuemK3XXzKpPQCzrZ/C18y8krFMFEduQjw7x+4+HM3o3dSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784019514; c=relaxed/simple;
	bh=GimpSiABHnuz3DzC8hb48Zvc5iNub1LGTKPusg5HJTU=;
	h=To:Subject:From:Message-Id:Date; b=jGI2nl2lNaklL2HcHj4AoNXhaqmBDPJKbUSwOGSH/LXwRLu+qgt4fcURc6P4IvWstYIDe55klZGmwLlM/q4oD/2o0Lq0X8y1/0Ok1ve/al1JG8PfFUbYpzdJ03UpA6ZkuB3/Woh6/tPb0PS8jIeBI3KMYZTDAKDyS5oYapQfJPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3D0SUtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3D0SUtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EA4C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784019513;
	bh=GimpSiABHnuz3DzC8hb48Zvc5iNub1LGTKPusg5HJTU=;
	h=To:Subject:From:Date:From;
	b=R3D0SUtODY0R22X5hdtSpMEjfAYsB85tFdGEw0gFeucvP6DcqrGL7b2LF6oXIcP01
	 PuOi3T8pWynrRJohbXPC8Tet+oOhYYmSUXzfsvou5SCOuerKpJTeCUqeSjdAKYXrog
	 jMJ+Fi9sC7h4cOCRPiUXsRlPlcp17gHXQ3AWvvHF6g/VhW+Kb5q/QJ5zgeEWcBkMcq
	 mFf322HS3dg0hweqXmvRlf2ysdsh/1T4CFcQbNcJEOWvN/pnUVMB2cJ4bHttqN7i3f
	 F3HSuKOxmwc3fCB4FSbZ+Y4CN0VLv1kFtGD1h1y6AwwmXfLJUGDCp9hUXZyk/KTOAe
	 9tgJxtNEw9WDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB92CC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401951369.31698.15863241591499667647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0175019c7beb23977913c899e8eab0ef2c8e914a642b140d2625d39af3c091
Date: Tue, 14 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784019513
