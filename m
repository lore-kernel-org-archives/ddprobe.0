Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED6A3B4EBD
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789871436; cv=none; b=rl8A2oAd57J0bbU8AXXF755DsiFk6cI+SR/aWY1KLrv8dXcSemx/78lvTVVV3SAnJe2dfBmdCrxK1t8IX/veVpPqmxJaWpC+a0BMjhu63x2Ev8kL5oe4HhDkJtaHfF2vndFAOP+uY+m3E1/hPruTRqr61TsJObjH4pPNErGrQV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789871436; c=relaxed/simple;
	bh=vT57KRDwQJm2UPn+2vP9zRWejt8H/r5moAB/4r8EmEI=;
	h=To:Subject:From:Message-Id:Date; b=qBVSqysljiRmmLKjXY9TThsmiRsW0OvlY8Pc6nmz8qQLZIa0gnXFSezzcx9LfUKyc6lZbV1xNhYaKIQEi0A1zjbGzbYZ4ShYj8qxWSDV8F83W8I717+nQJEjFWn7dATLk7KQfwuMT6T0wVmgw1zX5oBQatzkZrub10WaGtjaJek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SW7cPp4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SW7cPp4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF56DC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789871433;
	bh=vT57KRDwQJm2UPn+2vP9zRWejt8H/r5moAB/4r8EmEI=;
	h=To:Subject:From:Date:From;
	b=SW7cPp4X3V0R47konDEAiHScWWs4l68s4z3Bc2tNXv1Gzde/TkRcjGTZZuGpzITeT
	 IdrpUgiIYVn7+2V5lR31JnjWbJRqLVjTB5IfJTh/8zW39WXW9ZUGenLOkeyK1FJjUT
	 3l637OsfV4zsrtXo7dixoYrpRQ7SQIcWmbbTTMYc5lSwzmwODg0LQFpxt025UavCPf
	 t5e9TE63ZvjJ9JRUVgVz+QhdwkwFeL3oSyAFUabRiJDBCYLB4aax9uAf8gorWm67CA
	 zlgJfIkSfcnjR0VrxfDnZkWwGbFkwXzMMJ1gO+mZuh29WegsgJVEvWOtWzIqanUmXx
	 jQ/DaMWoAebxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7AFC982D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987143369.22852.5327649621352185787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a31b7f67dd88663fc3cd210595783ac9b3d6736098bf132f5a4acdafd71682
Date: Sun, 20 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789871433
