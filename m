Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A32230BCE
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751066394; cv=none; b=tk/BCxiqE3gpMdCNT1vHfc7CFOVdY6WkQ883udIIYe098Lsao0su4O8xOPDVN9RC7MHfGI2gVvlNX+VnBTra4MiXt0iJBGNHP2cqLVYPpYteFd5oM2NT0rFuYR9QkljXjOKBzSnibKRQWHs2Vg+a0x8hgr3Yc3Y0ryBKr8l0qvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751066394; c=relaxed/simple;
	bh=MTlEwXMGyTMb1dKGcJeulzIL60ZZxESPkpF13dkH2jU=;
	h=To:Subject:From:Message-Id:Date; b=N7oN2gcYQPXiwbItlL+HZAB7She6XjncouOYg7NBSqRRKB0tHrCWQXCNoLIu503pFkHDDfjcz1c8e0biPinjw4LIG59s6l/XDg2dskM0UaNJsWIv2iSyoDAWsAg8gfnsPa7YwhgymbLQNzIU++SaD7uZ7UCKQlZhtaadPvjSWVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucF1La5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucF1La5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0BFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751066393;
	bh=MTlEwXMGyTMb1dKGcJeulzIL60ZZxESPkpF13dkH2jU=;
	h=To:Subject:From:Date:From;
	b=ucF1La5m1jluNIwTC7fBI5K874Db5gz3N/oMz+n1dke8r8+NoBYX7nF1XwnWSWh+Y
	 sjRcmNW5sqwt8T+TzI/mqU8CxSGUZ4A7PDWeiNv1v2400RW+fhX2v4IG67Rbz6TFhd
	 eFMJQTz8LEXbNqTt+H7KfC7K0hpESbdonX7Wh+NwWrjd31wo0qrtWKQUC1z5Qtghy7
	 0NJNlFPPGXudcItfNa0xP4uZqmGPrYSwh+QCL10sKDXyELCepoqmM76dFqAwWw090P
	 RkovJhiqvMsjrCrbOZONANvDRvXzJanq3/u2axV2fD9yqKWpmy/X+tkzVTdfxTRBbx
	 40kw0YZ3k4yvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974FDC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106639359.1227.1531365489212655757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8b2b4905748c91a48a66a7ce71e38755b3b76e36796644dcba9dc653fd7c11
Date: Fri, 27 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751066393
