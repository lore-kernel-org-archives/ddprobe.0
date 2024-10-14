Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DA115575E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728946554; cv=none; b=jucm11h2HPuubr7mQoDDGo6OFMavvitkIQSV0EUn0wfdSJYtO33Zv8nX7SOJgFHK13dYZf5UeOFODIUVEvv+YASOJoCBBUpcODHzhg6si956ZjrSKcTDBO0x+AILUbIEw5BWnkXI1hdx4PTUh8/d9QVbedlOKPByAaSLO64TLek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728946554; c=relaxed/simple;
	bh=9geL3hcE8l2yKIdYnVf+cnRZTsU/lqevs8NulkOtZnA=;
	h=To:Subject:From:Message-Id:Date; b=SQmUopZ9w8UTDkyzxqDL7tGCiXFy8N22Fbq5x3CrUNYZCtxXufn0Y5Oc5rNOpXXgbfhxkqsVnaNdLp3EiBYdbOEYgglsAnLz33CmiMKdfA70v7ToU9krP/54dbUXTYXwBHYCB7eaL8c6CfZ5BoPUyyduQdz0v3LylzqXNvKnE+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBrMgPpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBrMgPpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0317C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728946553;
	bh=9geL3hcE8l2yKIdYnVf+cnRZTsU/lqevs8NulkOtZnA=;
	h=To:Subject:From:Date:From;
	b=HBrMgPpdV5ZC88x8CZXnN7AK2FyxCzjfnWMcPZJFmPkZGW7CNv4J3mQSug4WTWaBf
	 eLaCHFzbHUYFXDUgvaesMh1Wzog1tYCK0/L7kvkOACvK1PGoQkxhCDxJlv0cAAMqPH
	 TBQxUv+LqMNrWW43VXsoQc3Zmj6aeamceh3gM+EcEBjRMyFUxkw0Iyho2EEBsxMYRo
	 bA2/UR3xzrsKlDcAlVCwStEfBw+B+uW5ewu+jrTLhiCPzU1MakO4Z8gUEOFIXDimGE
	 Y7CLXrxPVOIuP9luJdFJb+Ao7dFlnHSCbnZyWZ2+4T2VG0QVCSi0Y4jQ5YmuijIGzV
	 H35tS8XbVYwMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C55D18158
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894655358.8620.969023615881004739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8985661f13b88094751e556ecffd75c59013c58f4c404b3f51e43a48be241912
Date: Mon, 14 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728946553
