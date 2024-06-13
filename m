Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F10C137923
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 22:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718319503; cv=none; b=OpmKUbDvHUVyCVT0fcmTf1yjiQByrPJKMo9XBr7BQPKRD5j18sRZBjsT36efByPmq+Y6jYGMgzypj8DIb1110dudwGMhmPzBdJii956EXomZ5cHWgxQr1nHULqZXwrbx1hNTc6OpvZqQT6js/o8m0HTrsfNsojpn/ja4LpEV834=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718319503; c=relaxed/simple;
	bh=lnPPRWQMfVRHfbXmfq6bp5PHck1jjIhifro4vkmoJP8=;
	h=To:Subject:From:Message-Id:Date; b=g613hE7ElLR5PNNsiQPPapmrd3CQn+t1vvJw0XuCgKGbec0BmOV9bfcehkzNg2KpyyNUWiLiJgym6CpKBtJ7Pdv7uaW0nrTO58W2iv3oQ9eoh9f2QH4lCwk4UHuSJlAKoep41VYgqp24l0JazVMk0ooloYFnkDEhEtbtwJ0VnQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=typma5hC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="typma5hC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E53B7C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 22:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718319502;
	bh=lnPPRWQMfVRHfbXmfq6bp5PHck1jjIhifro4vkmoJP8=;
	h=To:Subject:From:Date:From;
	b=typma5hCaQfXyhHCF7Xxp9iPT6O1ifMLvxlbN6Dzw+HBdRdrrhKAAb96Ycrz1yUxp
	 1ChV+pBjcgk9Aci5PEDtsP/WrFfzLtjHGykxb6TZHuRIMdb+aclgAgUz7VGmsDR3E/
	 zbDlvWFgzLGtveXS9v/K7P+3lMXqoh6OKVqGzD79ABcLTMYgwqJ/bE1mW2fSOcIgKI
	 65cdNcBf0S3Gd+qU4l4YyFmDymku59G9FFX8nJV6Vh+UQO1LMNdiii4lO+qOiZ8tik
	 DWIBYAfD909p/fUUg34ddTE2KxTIJkDej9XJkKmiyz5/yPK62sSkQLrgqoc3bUOYGE
	 gSEvHMz+1H4WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7636C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 22:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831950278.17282.7185279407825421550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a87f9c8ab1e09f4244c179286f30fc5376ff117cdb9cb2868c180d72df1f48
Date: Thu, 13 Jun 2024 22:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718319502
