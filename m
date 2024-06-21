Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED8C208C4
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719005543; cv=none; b=VoFKKvwWcKF4l2h2uzFFm4Rsp0zIrwtUsnHVTCyB1JhPd+unnxTy4jwwcPCcSNWWHBjSYKpj9cMPXHxjlhL7du+OZXscNoF15Js9M+LnNcvjGyixoYESgAv0WvXvqcHf1jep9ollhy6lJTi5/Q44gzMh3OiykCjJ5NaQpqjLEJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719005543; c=relaxed/simple;
	bh=rwSyz0i2OzoHgxhmeQ52gX+gq7dcT0yEPq6UZ4OIM00=;
	h=To:Subject:From:Message-Id:Date; b=QT6XAoeQH4ox4p03n4W7exzRrdnVpXD+8mhPtrL16uYAOwrKdDytIib4CgOAOVl8xTH2IxVU5xq6OLKg2DB8uVvwf43ZQpV6UPShOqvBL7t8my/sV6Ly0LeON4Tvzw21u6vf7rwI2vxNDQ2LjCYRtkXvHrkaIFBnVQOOhFEsdlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQBpVjrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQBpVjrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34CAC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719005542;
	bh=rwSyz0i2OzoHgxhmeQ52gX+gq7dcT0yEPq6UZ4OIM00=;
	h=To:Subject:From:Date:From;
	b=QQBpVjrX+8ZSq4xCFpPMr4IG+reYVcj/7TXAMfFjcysNvc8oNEA0uuxVCI/h3R0XM
	 +jjgbqCg58KEol4Wu1BGLoEniJRAiMzYLMGN7DDo135rSq7BHvrHjw40fjB89Jkuct
	 dQvbenvbgM451yZhpGemB4aCA/zwnvCLb0qPrxNFHttGFApPgfEDCrlpZcQybJB4+A
	 nIzZBZ9jjyPZgQdbNwnVUS5lS1zUcbkseFswMBjwEnxUiQ9cxW3jc9x9y/9yHZYp3Y
	 y984LG50eZY2ca3k3qRZ4Q9kY060NZ2WHiRNc9SXtRC2sReJ6rwq1DXzA6O2viafZ8
	 IVNwajpXePKtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF43C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900554282.32104.3476005543331965690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262a9bb0b49b43410226c214275b9c503890855bd558a3bfbc2ee6d400408106
Date: Fri, 21 Jun 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719005542
