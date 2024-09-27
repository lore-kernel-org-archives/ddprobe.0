Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6CB139D1B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727465154; cv=none; b=E/MDLtGfgrU98c5IOzRrYQXeXkhXkMCykKcUw/fCLe2c2tkAhom5FAr2fQ7srCYRd9TC1N4MFtqbAHhkEIgfUfWCq01solEfARzwrZZ1Y8zn+8ZWEbydrEM8fTFhhKiixTFVzAUhhpylF2dh+q0rrWTkr9+6NbDjccReAufW11g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727465154; c=relaxed/simple;
	bh=if6U0bN6zrbFs+6hkbS1gGUUtjKCWa2ojveElJXIvpc=;
	h=To:Subject:From:Message-Id:Date; b=gUW6sMUPIbIFfcWHohbMZgMxBbQMaXAfDdgan/9RP++TjEVekvKjRpWlZCKv9Q8vEyMRGYzsrVdgfvCBEJzJ1P5t8dUNtluvnVJFA77Rs432pg2+WyUVOC1Maz+ypmTAYKcZBT0/mGvpbxgBqCPfJlImA0a/3RmujbPNSFrLNdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRRF1mjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRRF1mjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FC1C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727465153;
	bh=if6U0bN6zrbFs+6hkbS1gGUUtjKCWa2ojveElJXIvpc=;
	h=To:Subject:From:Date:From;
	b=QRRF1mjNv1juaBvoCEJasQVYyf/zGtCEWQzID+IxURlMcuLrM2RWCdj1PEE5Li07q
	 tXZcktVAb/Tq8hcCMTSCROPSxVvauP4/Yo2GEjygUUslK9rcSCjPQsL3XhtEvda/qE
	 1a/LNwNkTiwgxOCXYz4xMRt3hrpMePaqnognCrDcSUPWneABApZbnYFGNsSL9Q9vt7
	 LI7tM2OtC64sTJPAjWX3ihOiyq944nkpy0G62qDA5HrJmfX+5gA3m/Idn8VI6Qm6rA
	 wYxclXzdSGy07RX3f5Nz+MpbD5rWYPqVocttMo5I54VU4TIbpW6YPwn9xb0zIu40k3
	 1mPiOQwgOyD0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92111CDD1D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746515357.28151.6931024911746244112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482f061957ec7c0f11283a3636f107a724a3a9bf4cada78172244c7fb46185f1
Date: Fri, 27 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727465153
