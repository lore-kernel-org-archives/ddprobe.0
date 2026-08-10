Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D530255E43
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786355434; cv=none; b=ACycfuxPYtE2DGEvrix0lI+Yck6oF/ESej/YOXnOMSVxLprBdaQ8cdzFuTGKA/EvkNN7X5e1QfXSbLovi3GRWNrlSSET7LOdJx6676nsf8Z1ft43boELnKEIkW2y42+W2e62SSqqXgEZSaKajsAhGEJrRaADAOH6MR4eQKEyk8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786355434; c=relaxed/simple;
	bh=1V5+KYo/PmJ9s+9CElqAo8LO14Su7ve/6pwQXzJIhGM=;
	h=To:Subject:From:Message-Id:Date; b=iEPEzmAt4wapYdt3kURA/x21MEXw8CKlwPX7ZOGq+ZLEs2B3rPRDq/HtrKOp4XuVt1h34f595q/Xku+uiBzjJdw8uo121ykJFxjjTdeTMkiCR2GaxDC7pcIkmTSH2FE06WzXLy4HA9w9EiVE3ceIlswhlwCFOtueu5uoCu0rs3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J112VSSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J112VSSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC045C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786355433;
	bh=1V5+KYo/PmJ9s+9CElqAo8LO14Su7ve/6pwQXzJIhGM=;
	h=To:Subject:From:Date:From;
	b=J112VSSCeMHYrhpSZFKKGMs0yNE6UTH2MLe6XgfonqfUcxWx23DPRrF5VyZjEJgwK
	 ARsVmKyFt6EsoipFnNrm+yXJ2+FS8IhnzQEtGyLR0CRikbXpsmUz0rq5ZIlE5p2eA4
	 QARYd0jUdsB2V3A31YVvEa604wzJCFeaPA1OtGioA/OfoGqlYoTt5yE9N/gP01d9pL
	 SwUEmY90RpRQ2OGTais+YXwDhTMhP/H0NeCxCgvAxf0kJ0KNEhQWmG1wz68/mp30dd
	 UR7wbmxO/0uuaW1ZkZnoCqlcJUcrTOFPcABkyz1z/DPXSZdZWhkHuHpbXvdpsJyVij
	 jdYhfrVxu4HGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A926EC5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635543368.22800.9161070137819022895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6cce14786283c926baf13b46b1d20ddbfd38cfe60aaff807648754a7e553f23
Date: Mon, 10 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786355433
