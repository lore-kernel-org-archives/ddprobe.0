Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3914429A1
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724498754; cv=none; b=ZPhZzeGejdublZKAtkq/HJ/8QCJ+dHTCfyrbCoLDsWbtwpD3GA+9+/QlO/QpxPRTq9YSYSMd6/Lh/MJb6FAYnEokKJ1APqkmYzFhrASv0UqKmcrlSygvKfaGI/7NoKgPu8CyYhsh6RQ6qesjj5fvjRCv90pJQ6A26tnmk10vf5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724498754; c=relaxed/simple;
	bh=JbIfcEP76eozxp20s3QhjJzmrtO6jaISCShrPOHtH64=;
	h=To:Subject:From:Message-Id:Date; b=JsqGfst0rTydstaeBKPQhghJMP/7tvYJ3MEPdo5PyCF8D304vzusZDOefFKFDQnez84cplXcEEpU7hmjew69liR4L/vvpkkGimTuNmCrVadsR6iR97UvQiY39GYWFl8HSKOo+qCGbTgky6HNYHrs6WuN7R/PcGr6UdtYnrfowNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tE48ceWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tE48ceWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A97C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724498753;
	bh=JbIfcEP76eozxp20s3QhjJzmrtO6jaISCShrPOHtH64=;
	h=To:Subject:From:Date:From;
	b=tE48ceWkzRTUy//r3Zf6J+F1mxow8UAIhMx/eMYu3yEwlAa5JIAsFIrwD+pET6ryb
	 9Az/xtSDbkT/4eXdJYTnVdUy5jHEgdbITrQSCkTL2SQhsUpgWKmmZMO1W6CrE1TOMN
	 9gykdAkWRxYGWeAOfts9cRhhgLnirvwz9Cp1EYCN27Lk9cNTvEHSG3LI9RX9R5cQTI
	 ENJwakINpB9PwIiuWhtYc6IRGD9NBRdda2Holb9BU2gtzrNbd1F+05kaxdMoPiVy1C
	 iimNWvPjkB5At/fcxXMa1/8i+0LBE5Vi2KRjWCvX/FQ8BcZRi+TVLxqsZHJE5CrdSA
	 lwfUEAqy8dPrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE32C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172449875361.30837.7435370639157325028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3c72c4a99fd0c4c655cc60c75dea10a9d1bd54e45add60bc4ba2597a55dd69
Date: Sat, 24 Aug 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724498753
