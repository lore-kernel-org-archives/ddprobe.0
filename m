Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD6748CDD
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711999097; cv=none; b=RFUvLxAwdR3EQCwHGvQqz2pWUKXmGIWwTa04BOyraJG1OdTGeInTL+dv7K+ac+t9gqO9IE8hel8VosmQfHVXtewNAw5GnxnVjHcGD8DYcx5fl/IwsVPyLvpELjj7bjAWrJjOSciBvF6m9/tYBOCb5/KFarDEjMroW79EpPUcL3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711999097; c=relaxed/simple;
	bh=ZS8RtsseySN9kmtbQndYJoerFnHL79kAr6DDvJQEJPk=;
	h=To:Subject:From:Message-Id:Date; b=GuXyWi2MlJIZRpgZCG1gQ+/4Nzbl2I4mnjttfSSqf9kvpeLiruTZkHuXW3dfsNCp7E1WtWSzsQxPCrqhKW4Fzuw93Ozx65nqZZULgBr4xCcqovc6L4DerDhtwHmOylzqLPs6RgPxJpUIcVZfXLRh5nyuPVjBIUvgsvytuEqTAD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4QAj/xU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4QAj/xU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D3EC433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711999096;
	bh=ZS8RtsseySN9kmtbQndYJoerFnHL79kAr6DDvJQEJPk=;
	h=To:Subject:From:Date:From;
	b=T4QAj/xU/XCgtFkr8bvcN2QXqzpX4fHGF0bE1B7EqvaUH/ylhH1VzlkDHb6LpBnCF
	 U5okC1WSCa34RDZY1J1BO8AzkHQe/0bc/vlwzYbCG/fr7hOenNRnXH0jutFQVg53IN
	 37hE/9LnZpRrXJ2bTylkASJ1kbjyT53t5t6ZlLhKpYQbDTFQiWGk+J97KyUR5dtFYy
	 KEgBLBwlXSNUSads7ZYmcH3/zSWLbZONGknY0YaUg/VdaChKSA24s74safha1a31/d
	 mKXJPwvHrYS6EPvJESLsfkyhOPqNVOVg2NY3OJlkIzy/hZoTLxeoZrt3z5pz1A8ZdJ
	 HPQxZVbK7EeAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F18CD128A
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171199909639.24789.13133604895238526250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb032f52f8238acc5502b53fd93c8a07ae78f1892eb658562b115e13b36d726
Date: Mon, 01 Apr 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711999096
