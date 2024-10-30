Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2A913CF82
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730270754; cv=none; b=iefhwF+EtlExndTu50yHR9N3eZgm7pg4sEq6x7lF6jt1InO24qN37gMvJbE6MlMrxKyevVfvbck+HIuVA79ZnPsGX5+1+utqJo2+qzSJxL8kk6iMXMFpI22+V4LsZmdwX3mU7X6yMdAY+AdwLNz/FJ4AfYd/alzJtnmkm8pWaec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730270754; c=relaxed/simple;
	bh=nz0t7A4SEjEV2leJMctZiaRAZatk4sG+a79Wb1h2bVc=;
	h=To:Subject:From:Message-Id:Date; b=PWdUsu/LlxY+8t+NGIqwofOx3yhb1ahR9Xz9/tjadt6ea6iSUA+Ru6gIoafDw1+wsF1Ezy2eiTvnHeZR/oJAGg154tas0Lsjo0DTuOgyTZu5IT/ZQhqWfi6KvmbEIMNDvxexPVMLo3mW1lZhrtsKvSB3+sUMDEYJf7lCylZWRP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLvlJmaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLvlJmaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BDDC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730270753;
	bh=nz0t7A4SEjEV2leJMctZiaRAZatk4sG+a79Wb1h2bVc=;
	h=To:Subject:From:Date:From;
	b=pLvlJmaTok/wktSOLBhD9kleorbBInl8OBEUkm1PGrSz+8RMjGLDpvaFU9vJIbSFa
	 De2i1hrAFmN+AUSa6txN50s0gs/6eLalPGB/LKP/7fWgxBGtD7OlEXtUy3dODfkpIR
	 6MPcT7zYVV6yh0J22t4uJwZ2AXJ78f+Buv3aQNYQnDYhaEM4zbmGdMdnnHYqf5ilhT
	 nd3H1QZ+qLtDXdUv9RK5bRGGYYjO1B5dfxt8Vf/fsK3JiRqGIPgFsx6I92562AGAV0
	 HiIyvqaevvuXuUjiOF+jMHNztfYnx4RUEYGg/j4fokjJcMYtnRHVQVF4zYTLWjSxQ9
	 9NBnf+e5FTE5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C731D74977
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173027075362.17931.9735934362713689419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1766a744afc20e81b4e0951871ba9693b9b6f5fcc5b99ba3f7b4ebbff2bf98f8
Date: Wed, 30 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730270753
