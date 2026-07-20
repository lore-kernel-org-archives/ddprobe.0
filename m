Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA9C1548C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784530714; cv=none; b=eV9EghYEJPGK+HXvt6U6cIz8AskFjPAnWCN2ycqnidWfcvHeJPgKkbJSK5Xdql+eMHdqSzC+5dzkhBSfI+TpYTbmaPProJz18MPze+A5hnMrhN53JcyANsHBSvcmnWiNfMTbKnHJ9uj09KZcP3w93cwl/TPtcgsRdVNceWmxx4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784530714; c=relaxed/simple;
	bh=snWQEsn76/yqHSycLmgoGw442qVUgtfJVcyptCZt40I=;
	h=To:Subject:From:Message-Id:Date; b=NUR3x+H5igNcjyeIYt/EcjpbS6N1XIeufZxwc0rOGVQDhjDvrAZmT6DahxhcVACO23YV1lrsHx9iIXC3q/HmhOHIqqEhbwTbVfCavId/dlnWZ7V1esXKR9gOQ6ePlZg68WhW5q2v4bqUYuUC+pI0DGzKqmV8RhZTfEaxdEXDQoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0CcMoL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0CcMoL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D118DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784530713;
	bh=snWQEsn76/yqHSycLmgoGw442qVUgtfJVcyptCZt40I=;
	h=To:Subject:From:Date:From;
	b=e0CcMoL+Q5BoY6CjydN5w4KfwPJXbaT0Ei+Zs8f89cUcdAkEE3AKQYErgoTn1hyGK
	 be5vUADOfrplPTQKavhEscWkxxmCWiV77XoZW9dG6vesPl/GpKTJNYNgNyvOp3qo/c
	 YOyYVdbDykzFAS7iIdsSlaAxDc7E3iyL0UbYwGbrpadXv/IN45OAAZH4LWPOTiWwTh
	 6bov6PSmidrvOrmKybMU35Zf6UkEg5W+e7dG9K+41QCnJOF/4jhKMgNvtmq1wRJAdb
	 jvr7w7bQGPIgzFvhkvX0F87gUC0HTDvQ+bh9qUatjdIb8m9MFpCF9s4S6z9VFTdh0N
	 TxQAB44T1YoRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA992C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453071368.31401.15693246226460438850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e09531b4a1e88dfd1da0b6d812f6afb19afc3e1c41b5d6a3698827013a6e20
Date: Mon, 20 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784530713
