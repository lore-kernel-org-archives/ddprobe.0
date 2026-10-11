Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880D823C51D
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791679834; cv=none; b=uNB2I5ty2ALRCEhZ8objYp3n8rzE80ltUbBSqLxCdJn3nzxnlweh7EankYA8S9lFeiPCb0zECbgmJ1Rpw+QNENyS3yzRB9eQu34W62Z7hp/jqGLeDmVctMJweS2Y6XTqn0RXfkUwizoFZWLev4a2CunP4tcMk8A3HwSZJldSoGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791679834; c=relaxed/simple;
	bh=mXKZiLeoKdSnv34z5lvcSTUydwHne8LJMjN4ahC17nA=;
	h=To:Subject:From:Message-Id:Date; b=gsEHC/2CtP34RIGc8CNvREIJi6ExKUFmI1Z6007XGqIjNsuKkUk4D69KncYkPJsUDUqsxePspADslw8ufyXWS8+iLulkrrM3Ki2TqbAmoQGlqxMqNlHuTly5cNOKoxZLnJ1G+OGeWom1nVEiDmLuzNAXy6391CYqzDDS2q5gLVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfVdDek7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfVdDek7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFBFC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791679833;
	bh=mXKZiLeoKdSnv34z5lvcSTUydwHne8LJMjN4ahC17nA=;
	h=To:Subject:From:Date:From;
	b=HfVdDek7vV4jP0YIXr4EibS9JHLda4j/fykalK+xLkhPrhvYcC8/BYsV5TCNGN0G6
	 kZgs4i3Yan3iQUGLOBGAZ6ecX7wwZi3R3RdrDTTf061wOBspnaYfLGSukoEpfuDcn8
	 V2FliCm5zYxPHSm30oLJ7nKUMFbZNP/+9Z7F1rNPWIB040zW3p0Yu7LjkIHrYtTeZv
	 uyp2S+JIg3mPZy7eKFsUVtnOlEa8XFWXJwwYV23CTLsNOj78TgNY+g0hHY5k8yPwsI
	 zYYUbRQNVpXNk2QvkThB5kCmTGu8QkYq+XizC9XS7zHy42x5yiUV4fhr58UKZW9lkX
	 VhdLeytrubvQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD00DCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167983368.21307.8289964323715469693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 008570b543883e9c6f0bed856c7ad960f37d0bf6f6a986b00241155a14d9c7cb
Date: Sun, 11 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791679833
