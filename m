Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52750E555
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782695314; cv=none; b=IZAi1xDPZKHqQAH4sQee9UlJGWAUgnV1macYJI7csoQkrWndLRDJ5j8a+ftugGIjU/407my+VjBXY5BZPI/ugkVIiXGecd6E6f1vObTmy6u3hFL1CWOdbARZkc/unIfazMCeUn4UmxhJ0fUjqTYqT1lFh2Sdm95CBDyy48TeCck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782695314; c=relaxed/simple;
	bh=jiZE91forObFd70ObizRpf1xz9yAQZNxpPmJNvDzS5k=;
	h=To:Subject:From:Message-Id:Date; b=ioiH0cOUj/KW0vAr9rxVEQGasMfOhmNoOV+Bo9GwuOI9s2PcssM5bOQFmzRjfG0mkbnt+Nf/SSHbeEvQocqoAcy2FpLzhf6MXgROPMqnj3fbsdOXyi3j00BmlRleBhyOS+yONeo6srK/9TKOYaEOwKG63c88ucbjTPPWH/DPvsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bs0cSJKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bs0cSJKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B2CC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782695313;
	bh=jiZE91forObFd70ObizRpf1xz9yAQZNxpPmJNvDzS5k=;
	h=To:Subject:From:Date:From;
	b=bs0cSJKZCsf9kAHNvvo0Tb2g3xLYEVWumGRiNw2H7iPDj2VnVs+86TyeysLMCJ70m
	 6IOFUCFLTB7cHPyTKo736+W/ZG+xOcg87JSvgmNLfAt4TRtf0vWbqGcMYHVikEpH7R
	 t4wOLxfT5tzV9grwLtJMHqyHm0Z4pohiBgCPY/AJx9VrG+Jivq6HDa2DOarOUAx2vP
	 cJgsNcfMMRyNRrezxKzE8SveU1MV7cPwyDLd9QtpjpP8ghIcZayywl6uvWxwjkObKY
	 opgxz5rP8tJaWPbwzX0CJ5mPB2U040rptlnSAx1UGD0z27sriFmkruU2A9+3ZDZK0R
	 sBP4Xb/wmb5KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B525FC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269531370.18307.12303949013540624787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc289f5deb2f38ea42d0447b63cf414fe39bc5d23d66e36c5e74cd461b83362
Date: Mon, 29 Jun 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782695313
