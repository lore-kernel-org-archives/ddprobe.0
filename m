Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB39204C31
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791611434; cv=none; b=WMBalWXxbpmGCfpDXIsjE8T6kmLtaUj5ojq9VSQFCFATshEEIG5E2ofzWlAKwqMdQOHWjYGCydXgyjrNGD4WcoO9YaTdOTweUq7PrydsiV3855G+n9AOnA4eDt4e8Bu47WjzcEHBuO60s8PvFGctZed855O2lw9ZOpAiJNvG5K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791611434; c=relaxed/simple;
	bh=Jsq6tMRGI2CYjKQNiIIl9iTw3YV4SHhHer5Fc5h6ybo=;
	h=To:Subject:From:Message-Id:Date; b=L7snI0lTy1Aq9I920ezvW7tXk2MdEBXC3XkUV39cQVOZyQVpB9DLhb3q6jq2sbjIVAZMEZea0Njo+oEvsQBrmdUK3nGGfI3gRxmc/b9/1pNwfVm5B0JnKGybaqlTiumo/L1L92+tdUf07mFZNgmjU9Nmp2COYOiE+YMFWmIxWgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOJpL19O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOJpL19O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C86C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791611433;
	bh=Jsq6tMRGI2CYjKQNiIIl9iTw3YV4SHhHer5Fc5h6ybo=;
	h=To:Subject:From:Date:From;
	b=BOJpL19OjFYvHec6sOvd6SfW/zu91wW+EGb9cu3tDcFMZWmdJHf+H5nOvJp79zt51
	 D0mZEydGaRPQlQMVEYu4T7jQpLk0uRL+fI0cWqx0XuU6U1R+62OkPs3elsA6rVYQfd
	 IetNpWBJ2hC/ywrpWPkqyWvAznhcRgxJVEWJYdsc4gikJHOKUDbfg1dn5e9Xki5lWK
	 L0ljuqlUgNIlHTuYZbFEKXtyWPr50TaNXjrEd/fF5PDyxHAdy3tKj2r3kkU0kcFSyT
	 Pkm7PRD+cUVN89uNa+CSB1fa1O1PYmnN97Y3Hhwd1HEr3EzJMQJp4SsWoYJ88Iwo/g
	 X9WmO1DIhGM0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A98CA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161143369.27531.4025019129497411854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafe4820f2ebc8f85b2cf5aede30c20712ec98ea161d089909f095ae70c634a8
Date: Sat, 10 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791611433
