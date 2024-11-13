Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36367625
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731456354; cv=none; b=FFD3PquvCczE43jlYiD/3KXfRxZIrBDKUb6iKQX6C1oINqRGX99l0QnEvqA5suYHFGmvdf5ha6OUgz/pPuS3ldUmOkIIL6+wKdo0UYmZRg+bOCNn7tpUsOn7ne0EBWcjbn/I14lVYnl0yH5/Lxet6FdseicDTLaW1IqFXp36rCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731456354; c=relaxed/simple;
	bh=PDwKtNsVChIYMw2Qh8wfI812hITvQ1YG1Mi0wu/fIqA=;
	h=To:Subject:From:Message-Id:Date; b=ufM8Uql9S5hxIUW5RKuCv+VZ9ssP1bfhfUXE1NkGULcA5IpREVEqQuYLhqev5t/iCVeC8FtQUzb9wNZlXEC+uxgeZLy54WhIbvGo9F6eE0YN32fyJjDQ6jY2G1prhZL7xPTrMgNoMLnPozJCsm4z3ddzhg6a/gciTwphxYQLLD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKt1A3fw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKt1A3fw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B320FC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731456353;
	bh=PDwKtNsVChIYMw2Qh8wfI812hITvQ1YG1Mi0wu/fIqA=;
	h=To:Subject:From:Date:From;
	b=CKt1A3fwSx7QsOAkMqUZLVPVfiJLCC8TbAv2kE1S8Xa1kUScptREh7gFGa1FG7snj
	 Ws76xx7Q6eduLFkkVUg51E4owCSNxBYWfm/AnmnnO2/+kNp/QmeYD7MEH+ybYD9vMM
	 6bTTPFbq66PGwHJHIQBDSU6aiBZNjMeXf2DGc5dT92Kd16C/pYbzZZvWxscptYyI2K
	 ujAAOACbMO3pLOKeXUYDFtjcEWFdgJMl3o8WzeJW8i6vpzMa7mjthf/a78wIabl7nG
	 ukN4ep8mTW3IOygvmPhMYhdKIvrAWZAqHYc6cKZpuiQPT30r5uAXF6+sq7xF15WUT4
	 EGuyqC6mJGalQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3ABD597BE
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173145635362.6182.17626451152440911140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296421bce2e0d362feb12d063603dae75104f3ea0d9357d202515186b9dd8788
Date: Wed, 13 Nov 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731456353
