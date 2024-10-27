Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FBF126C03
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730027754; cv=none; b=joyp+55DeMqzG9axFWHwCF6OGGV27+rlxXhqCKqAxbV8OAO7ArOI1bCMabETgQzZqQlHMdjYKbGvz8yr8xhlcC1k4XQNKSMDEpDzZ2/NmwooZ9X7DqarT9B6sSxJFFVSGTkY4rRMKKZT2mq9mE8VAR8JFcJQkn18AsmRB7FaUCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730027754; c=relaxed/simple;
	bh=U5dwAROLbTx6V7pRAyvP+1i4C6yLABh1AyJPqkGHycE=;
	h=To:Subject:From:Message-Id:Date; b=ENbCGVOKnIq7qvj0U+d9Gs331EnZJAAYIit8G+feh37EwWNPihypD+MQqsIFyjo27lwJx7BKybTmZOsd9ZlqMbP/FToa2K2YiKfuDU9syfduBNS6Om2K1R3niAozcUX3AlYPpC04a4qCriesfQj8I2Eef4qGVF2rqcJJjLEq6WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=US8ojeda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="US8ojeda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDE6C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730027753;
	bh=U5dwAROLbTx6V7pRAyvP+1i4C6yLABh1AyJPqkGHycE=;
	h=To:Subject:From:Date:From;
	b=US8ojedaETefG9VxgkL9/TPhXATcHkChSAO8ea+8zMgl6xB0nmAP2De63yCKbjv2P
	 hvlCIDCy7v9s1/uZYgLAea5BchJLB4sEMlxthgHS7plvn6KfAK1lKWqA5yP10bi+1x
	 1NoY3y2qs4BuLViSo53LbTBz/dV3jv154BOXiTO/OpLMRnEArapWsffIB8FevRxvZp
	 G1Jvz5uYDBZwChSpEuLaYi9xj/jdXuUWKSm6/wVund6McsGRROh29WgQByVthuv6Qp
	 h4iMx8FLA/LIDpDeB8bfEmybkIPX3oLA70DhTlaXUKzdJDXRiiAwJ4yl0FCzz/qsIo
	 PjcCMfTkNnEWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960D0D10C1E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173002775359.1866.3856691897275422290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b816e1b274124ec588b08ef8d07853c2513e232a85e55ced9132a4bd6e22c559
Date: Sun, 27 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730027753
