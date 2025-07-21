Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D881428DEFA
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753093193; cv=none; b=gwCLscDOl9nqio1GMSx4eX5xqjUvsZMfEAUundjNwwN1rFRNTnzreyx+dMytmwBWORcCZ5il7h0eY7J0Wt/r/Xhx4LvAER21EqsRlYWChjh/y0s7v6jQcmnP07PrGDUIMCO672T8P53bryc7yeyYoGTKsNq4hFRhkqF1dh7K5Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753093193; c=relaxed/simple;
	bh=cR2cpM4ArzI2qHSIJClGvC6CDbV8LmzX4K0G82CS6bY=;
	h=To:Subject:From:Message-Id:Date; b=u3t1Ofs4fFBA9o05yOFkn+c5IO+ekh/c2TEVml0iEa7zoGU25Lse79k8ljkZ1SWYn+cBQcQUkPI1trlofUI/GK2zzpge4fO49u5k1NHmVRLpraz3sWbJWJPuiL3+0/1HiYTuVGh4W5xFDAz+9KVHIoIxzGxlCbaG2d8O/HQXHRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mkt/KwDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mkt/KwDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E360C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753093193;
	bh=cR2cpM4ArzI2qHSIJClGvC6CDbV8LmzX4K0G82CS6bY=;
	h=To:Subject:From:Date:From;
	b=Mkt/KwDXu9stoOoq7MBJghyv4r23e93ZCNGLXNxZbB7wA5bvPjHGfCCVN2PCP2Vth
	 GcF8FShUU62N7oBrOLD1KpPqMe9klxPmydj76Yl1INr29u5yVitBIZTvyb/QxyyT2l
	 zgysqlQnC7e5Tr0oba4lV4MTrRldEiZwMOME/hkBfTff2bgUbETm3lcIztLXhELccx
	 1SXsV5gbpZSGgbtStUcOkWBVhzlm3QUdZNy8VD8yKURbjnjwcqp0+3JTm17i7gmR4d
	 uLIe6Og9ki8nxlqHwSpxbHt7yuI4wh890YJCgVMOa0tXxorP5VEqYpAyfGkILSrNzG
	 wDfYLdi+04g6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC9C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309319357.21658.12873959958200478082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be9881d8d4aa3e3d82fd7082f6eee133a7f928903c38dbb0511f95b3d965994
Date: Mon, 21 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753093193
