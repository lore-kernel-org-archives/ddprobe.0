Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683D62D838E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791615034; cv=none; b=rNcOxDaw98JxCuoFmQ3gkeYVkt87+5iokqwFEoObI7EdKsJH/rLtPgq8K5fQd/A0mBFQO8w1zKHUlVCn1PgQLcsnfQCbtee+vS2wLxzPf9Zwu5mcF+0LgVvhrW+Anjh0zeUJ6/VhqAgrHu5FB4I7cH3p7HP1W5TA0k1/PEH8R9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791615034; c=relaxed/simple;
	bh=zEzs52IJcztm3B10581cyO8i47nK0As+qIRlv+8J2t8=;
	h=To:Subject:From:Message-Id:Date; b=pVWO5jUwyYOKhk2trfVElV4kLvJ7RrUBcxexorOmsWgucBiFxb1mV+acyMBsp8K2oUVTByZjLvIKU8Wn5+C8LYHkf5ZdDnDJ8Cxs+2WR6S8mBgnZqD9ItNsJ1FC9Szmjy7hzow2/DVFo3R8ehvburka+TKSb1Vm4XnbuMtlZdvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCfML59H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCfML59H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E86C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791615033;
	bh=zEzs52IJcztm3B10581cyO8i47nK0As+qIRlv+8J2t8=;
	h=To:Subject:From:Date:From;
	b=JCfML59HIFOfisauVrwXiPgueK2A9PNWok8wqfrmtyygyPmpZTU6uQ8bu/6H4rqRS
	 gFYrt51Yuf3d3JUX5bSpm6zwwVSF2GqL3ubbFOMA3Xxn5MzDfBrHnPbkMJETrV2t51
	 vmj5InZAC1sQU2DReUTu1BRCBBQ4IZntlt30G4CKHrAEfS9NgEpTspnizmw8MjZw+g
	 ERFoibnN03LlXgSpra8xsYfnw1DePfrVBjrtQLqbmrGNeTPIrXY3Ze+ndrP96J3Faa
	 6Z5LHRMuwWIJcpIL8CLwd5bqoS8tHz4jpAYuAeUlS4AEDFUkt3TjzdOeKgQPDYTU/F
	 hQgFaK6hHyImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2C5CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161503368.27046.17573442648929897264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5907d73fbd4f823943b2afd826b5b40645886fd00cfb5ad3c93c1adb005adb4c
Date: Sat, 10 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791615033
